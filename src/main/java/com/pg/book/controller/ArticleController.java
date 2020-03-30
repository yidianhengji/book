package com.pg.book.controller;

import com.github.pagehelper.Page;
import com.pg.book.dto.ArticleDto;
import com.pg.book.entity.Article;
import com.pg.book.handler.BusinessStatus;
import com.pg.book.handler.PageInfo;
import com.pg.book.handler.Result;
import com.pg.book.handler.ResultPage;
import com.pg.book.service.ArticleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;

@RestController
@RequestMapping("/article")
public class ArticleController {

    @Resource
    private ArticleService articleService;

    @RequestMapping(value = "/queryOne", method = RequestMethod.GET)
    public Result<Article> queryOne(@Valid @Param("uuid") String uuid) {
        Article one = articleService.queryOne(uuid);
        return new Result<Article>(BusinessStatus.SUCCESS, one);
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Result<Article> insert(@RequestBody Article article) {
        Article one = articleService.insert(article);
        return new Result<Article>(BusinessStatus.SUCCESS, one);
    }

    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public Result<Article> update(@RequestBody Article article) {
        Article one = articleService.update(article);
        return new Result<Article>(BusinessStatus.SUCCESS, one);
    }

    @RequestMapping(value = "/queryAll", method = RequestMethod.POST)
    public ResultPage<Article> queryAll(@RequestBody ArticleDto articleDto) {
        Page<Article> one = articleService.queryAll(articleDto);
        PageInfo<Article> pageinfo = new PageInfo<>(one);
        return new ResultPage<Article>(BusinessStatus.SUCCESS, pageinfo);
    }
}
