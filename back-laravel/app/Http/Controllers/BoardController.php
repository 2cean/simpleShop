<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service\BoardService;

class BoardController extends Controller
{
    protected $boardService;

    public function __construct(BoardService $boardService)
    {
        $this->boardService = $boardService;
    }

    public function createBoard(Request $request)
    {
        $data = $request->all();
        $board = $this->boardService->createBoard($data);
        return response()->json($board);
    }

    public function getBoards()
    {
        $boards = $this->boardService->getBoards();
        return response()->json($boards);
    }

    public function getBoardById(int $id)
    {
        $board = $this->boardService->getBoardById($id);
        return response()->json($board);
    }

    public function updateBoard(Request $request, int $id)
    {
        $data = $request->all();
        $board = $this->boardService->updateBoard($id, $data);
        return response()->json($board);
    }

    public function deleteBoard(int $id)
    {
        $board = $this->boardService->deleteBoard($id);
        return response()->json($board);
    }
}