<?php

namespace App\Service;

use App\Models\Board;

class BoardService
{
    public function createBoard(array $data)
    {
        return Board::create($data);
    }

    public function getBoards()
    {
        return Board::all();
    }

    public function getBoardById(int $id)
    {
        return Board::findOrFail($id);
    }

    public function updateBoard(int $id, array $data)
    {
        $board = Board::findOrFail($id);
        $board->update($data);
        return $board;
    }

    public function deleteBoard(int $id)
    {
        $board = Board::findOrFail($id);
        $board->delete();
        return $board;
    }
}
