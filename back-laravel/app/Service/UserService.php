<?php

namespace App\Service;

use App\Models\User;

class UserService
{
    public function createUser(array $data)
    {
        return User::create($data);
    }

    public function getUsers()
    {
        return User::all();
    }

    public function getUserById(int $id)
    {
        return User::findOrFail($id);
    }

    public function updateUser(int $id, array $data)
    {
        $user = User::findOrFail($id);
        $user->update($data);
        return $user;
    }

    public function deleteUser(int $id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return $user;
    }
}
