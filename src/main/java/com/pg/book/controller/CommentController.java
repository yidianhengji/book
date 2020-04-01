package com.pg.book.controller;

import com.pg.book.entity.Comment;
import com.pg.book.handler.BusinessStatus;
import com.pg.book.handler.Result;
import com.pg.book.service.CommentService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/comment")
public class CommentController {

    @Resource
    private CommentService commentService;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Result<Comment> insert(@RequestBody Comment comment) {
        commentService.insert(comment);
        return new Result<>(BusinessStatus.SUCCESS);
    }

    @RequestMapping(value = "/query", method = RequestMethod.POST)
    public Result<List<Comment>> queryAll(@RequestBody Comment comment) {
        List<Comment> list = commentService.queryAll(comment);
        return new Result<List<Comment>>(BusinessStatus.SUCCESS, list);
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public Result<Comment> delete(@RequestBody Comment comment) {
        commentService.delete(comment.getUuid());
        return new Result<>(BusinessStatus.SUCCESS);
    }
}
