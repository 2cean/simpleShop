<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service\UserService;

class UserController extends Controller
{
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function createUser(Request $request)
    {
        $data = $request->all();
        $user = $this->userService->createUser($data);
        return response()->json($user);
    }

    public function getUsers()
    {
        $users = $this->userService->getUsers();
        return response()->json($users);
    }

    public function getUserById(int $id)
    {
        $user = $this->userService->getUserById($id);
        return response()->json($user);
    }

    public function updateUser(Request $request, int $id)
    {
        $data = $request->all();
        $user = $this->userService->updateUser($id, $data);
        return response()->json($user);
    }

    public function deleteUser(int $id)
    {
        $user = $this->userService->deleteUser($id);
        return response()->json($user);
    }
}
