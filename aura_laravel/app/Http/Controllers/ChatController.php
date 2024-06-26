<?php

namespace App\Http\Controllers;
use App\Models\ChatMessages;
use App\Models\StartedChats;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use PHPUnit\Event\TestSuite\Started;

class ChatController extends Controller
{
    public function message(Request $request){
        $allMessages = ChatMessages::all();
        $messages = new Collection();
        foreach ($allMessages as $message) {
            if($message->dest_user == $request->user_dest && $message->sender_user == $request->user_logged){
                $messages->push(new ChatMessages(['dest_user' => $request->user_dest, 'sender_user' => $request->user_logged, 'message' => $message->message]));
            }
            if($message->dest_user == $request->user_logged && $message->sender_user == $request->user_dest){
                $messages->push(new ChatMessages(['dest_user' => $request->user_logged, 'sender_user' => $request->user_dest, 'message' => $message->message ]));
            }
        }

        return $messages;
        
    }

    public function createChat(Request $request){
        $newChat = new StartedChats();
        $newChat->user1 = $request->user1;
        $newChat->user2 = $request->user2;
        $allChats = StartedChats::all();

        foreach ($allChats as $chat) {
            if($chat->user1 == $newChat->user1 || $chat->user1 == $newChat->user2){
                if($chat->user2 == $newChat->user2 || $chat->user2 == $newChat->user1){
                    return false;
                }
            } else if($chat->user2 == $newChat->user1 || $chat->user2 == $newChat->user2) {
                if($chat->user1 == $newChat->user1){
                    return false;
                }
            }
        }
        $newChat->save();
        return $newChat;

    }

    public function getChat(){
       return StartedChats::all();
    }

}
