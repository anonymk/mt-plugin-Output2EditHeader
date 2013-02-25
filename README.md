#Output2EditHeader

設定内容をブログ記事/ウェブページ編集画面のヘッダーに出力するMovable Typeプラグインです。

##インストール

ダウンロードした圧縮ファイルを解凍した後、plugins/Output2EditHeaderをMT_DIR/plugins/にアップロードしてください。

##設定

ウェブサイト/ブログのプラグイン設定画面で、ブログ記事/ウェブページ編集画面のヘッダーで出力したい内容を設定してください。

##使用例

###TinyMCEカスタマイズ

Movable Type 5.2でリッチテキストエディタとして採用されているTinyMCEをカスタマイズします。JavaScriptやCSSを記述したり、

    <script>
    jQuery.extend(MT.Editor.TinyMCE.config, {
        :
    });
    </script>
    <style>
    :
    </style>

ファイルを読み込むタグを記述します。

    <script src="/js/tinymce.js"></script>
    <link href="/css/tinymce.css" rel="stylesheet">

####デフォルト

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre'
    });

####テーブル関連ボタン追加

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugins: MT.Editor.TinyMCE.config.plugins + ',table',
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons3: 'tablecontrols',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre'
    });

もしくは

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugins: MT.Editor.TinyMCE.config.plugins + ',table',
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons3: 'table,delete_table,|,row_props,cell_props,|,row_before,row_after,delete_row,|,col_before,col_after,delete_col,|,split_cells,merge_cells',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre'
    });

####スタイル追加

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre',
        style_formats : [
            { title: '強調', inline: 'strong' },
            { title: '赤', inline: 'span', styles: { color: '#f00' } },
            { title: '青', block: 'h1', styles: { color: '#00f', fontWeight: 'bold' } },
            { title: '黄', selector: 'p,ul,ol', classes: 'yellow' }
        ]
    });

####フォーマット変更

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre',
        formats: {
            alignleft: { selector: 'div,p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'left' },
            aligncenter: { selector: 'div,p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'center' },
            alignright: { selector: 'div,p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'right' },
            underline: { inline: 'span', 'classes': 'underline', exact: true }
        }
    });

####ブロックフォーマットタイトル変更

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre',
        init_instance_callback : function(ed) {
            var formatselect = ed.controlManager.get('formatselect');
            var items = formatselect.items;
            for(var i in items) {
                switch(items[i].value) {
                    case 'h1':
                        items[i].title = '大見出し';
                        break;
                    case 'h2':
                        items[i].title = '中見出し';
                        break;
                    case 'h3':
                        items[i].title = '小見出し';
                        break;
                }
            }
        }
    });

####カスタムボタン追加

#####JavaScript

    jQuery.extend(MT.Editor.TinyMCE.config, {
        plugin_mt_source_buttons1: 'mt_source_bold,mt_source_italic,mt_source_unordered_list,mt_source_ordered_list,mt_source_list_item,|,mt_source_link,mt_insert_file,mt_insert_image,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons1: 'bold,italic,underline,strikethrough,|,blockquote,bullist,numlist,hr,|,link,unlink,|,mt_insert_html,mt_insert_file,mt_insert_image',
        plugin_mt_wysiwyg_buttons2: 'undo,redo,|,forecolor,backcolor,removeformat,|,justifyleft,justifycenter,justifyright,indent,outdent,|,formatselect,|,mt_fullscreen',
        plugin_mt_wysiwyg_buttons3: 'custom_table',
        theme_advanced_blockformats: 'h1,h2,h3,h4,h5,h6,p,pre',
            setup: function(ed) {
                ed.addButton('custom_table', {
                    title: 'カスタムテーブル',
                    onclick: function() {
                        ed.selection.setContent('\
                            <table border="1" cellpadding="0" cellspacing="0" class="custom_table">\
                                <tbody>\
                                    <tr>\
                                        <th>ヘッダ</th>\
                                        <td>データ</td>\
                                    </tr>\
                                    <tr>\
                                        <th>ヘッダ</th>\
                                        <td>データ</td>\
                                    </tr>\
                                </tbody>\
                            </table>\
                        ');
                    }
                });
            }
    });

#####CSS

    .mtSkin span.mce_custom_table {
        background: url(custom_table.png);
    }

##検証バージョン

Movable Type 5.2.3

##ライセンス

MITライセンス
