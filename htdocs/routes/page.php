<?php

$router->get('/api/page/{path}', function ($path) use ($router) {
    $page = app('db')->table('page')->where('name', $path)->first();
    if ($page === null) {
        return response()->json([], 404);
    }
    $contents = app('db')->table('content')
        ->where('content.page_id', $page->id)
        ->leftJoin('page', 'page.id', '=', 'content.content_page_id')
        ->leftJoin('media', 'media.id', '=', 'page.cover_id')
        ->leftJoin('embed', 'embed.id', '=', 'content.content_embed_id')
        ->leftJoin('text', 'text.id', '=', 'content.content_text_id')
        ->select(
            'content.width as content_width',
            'page.name as page_id',
            'page.name as page_name',
            'page.title as page_title',
            'page.description as page_description',
            'page.keywords as page_keywords',
            'page.date as page_date',
            'media.id as media_id',
            'media.hash as media_hash',
            'media.extension as media_extension',
            'embed.id as embed_id',
            'embed.height as embed_height',
            'embed.embed_url as embed_embed_url',
            'text.id as text_id',
            'text.html as text_html',
            'text.width as text_width',
            'text.max_width as text_max_width',
            'text.align as text_align',
            'text.padding_top as text_padding_top',
            'text.padding_bottom as text_padding_bottom',
        )
        ->get();

    return response()->json([
        'name' => $page->name,
        'title' => $page->title,
        'description' => $page->description,
        'keywords' => $page->keywords,
        'contents' => array_map(function ($value) {
            return [
                'width' => $value->content_width,
                'contactForm' => null,
                'media' => null,
                'text' => ($value->text_id != null) ? [
                    'html' => $value->text_html,
                    'width' => $value->text_width,
                    'maxWidth' => $value->text_max_width,
                    'align' => $value->text_align,
                    'paddingTop' => $value->text_padding_top,
                    'paddingBottom' => $value->text_padding_bottom
                ] : null,
                'collection' => null,
                'embed' => ($value->embed_id != null) ? [
                    'embedUrl' => $value->embed_embed_url,
                    'height' => $value->embed_height
                ] : null,
                'page' => ($value->page_id != null) ? [
                    'name' => $value->page_name,
                    'title' => $value->page_title,
                    'description' => $value->page_description,
                    'keywords' => $value->page_keywords,
                    'date' => $value->page_date,
                    'cover' => $value->media_id != null ? ['hash' => $value->media_hash, 'extension' => $value->media_extension] : null
                ] : null,
            ];
        }, $contents->toArray()),
        'date' => $page->date,
        'cover' => $page->cover_id,
    ]);
});
