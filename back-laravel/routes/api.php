<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BoardController;
use App\Http\Controllers\UserController;

// 게시판 라우터
Route::group(['prefix' => 'boards'], function () {
    Route::post('/', [BoardController::class, 'createBoard']);
    Route::get('/', [BoardController::class, 'getBoards']);
    Route::get('/{id}', [BoardController::class, 'getBoardById']);
    Route::put('/{id}', [BoardController::class, 'updateBoard']);
    Route::delete('/{id}', [BoardController::class, 'deleteBoard']);
});

// 유저 라우터
Route::group(['prefix' => 'users'], function () {
    Route::post('/', [UserController::class, 'createUser']);
    Route::get('/', [UserController::class, 'getUsers']);
    Route::get('/{id}', [UserController::class, 'getUserById']);
    Route::put('/{id}', [UserController::class, 'updateUser']);
    Route::delete('/{id}', [UserController::class, 'deleteUser']);
});