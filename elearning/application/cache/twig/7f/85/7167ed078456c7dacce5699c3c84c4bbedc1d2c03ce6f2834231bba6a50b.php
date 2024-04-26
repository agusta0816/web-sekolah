<?php

/* list-materi.html */
class __TwigTemplate_7f857167ed078456c7dacce5699c3c84c4bbedc1d2c03ce6f2834231bba6a50b extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-private.html");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout-private.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 5
    public function block_title($context, array $blocks = array())
    {
        // line 6
        echo "
Materi - ";
        // line 7
        $this->displayParentBlock("title", $context, $blocks);
        echo "

";
    }

    // line 13
    public function block_content($context, array $blocks = array())
    {
        // line 14
        echo "
<div class=\"module\">

    <div class=\"module-head\">

        <h3>Materi</h3>

    </div>

    <div class=\"module-body\">

        ";
        // line 25
        echo get_flashdata("materi");
        echo "



        <div class=\"bs-callout bs-callout-info\">

            ";
        // line 31
        if ((is_siswa() == false)) {
            // line 32
            echo "
            <div class=\"btn-group pull-right\" style=\"margin-top:-5px;\">

                ";
            // line 35
            echo anchor("materi/add/tertulis", "Tambah Materi Tertulis", array("class" => "btn btn-primary"));
            echo "

                ";
            // line 37
            echo anchor("materi/add/file", "Tambah Materi File", array("class" => "btn btn-primary"));
            echo "

            </div>

            ";
        }
        // line 42
        echo "
            <b><a class=\"as-link\" data-toggle=\"collapse\" data-target=\"#form-filter\"><i class=\"icon-search\" style=\"line-height: 0px;\"></i> PARAMETER PENCARIAN</a></b>



            <div id=\"form-filter\" class=\"collapse\" style=\"margin-top: 5px;\">

                ";
        // line 49
        echo form_open("materi");
        echo "

                    <table class=\"table table-condensed\">

                        <tr>

                            <th  style=\"border-top: none;\">Mapel</th>

                            <td  style=\"border-top: none;\">

                                <ul class=\"unstyled inline\" style=\"margin-left: -5px;\">

                                    ";
        // line 61
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["mapel"]) ? $context["mapel"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["m"]) {
            // line 62
            echo "
                                    <li>

                                        <label class=\"checkbox inline\">

                                            <input type=\"checkbox\" name=\"mapel_id[]\" value=\"";
            // line 67
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id"), "html", null, true);
            echo "\" ";
            echo twig_escape_filter($this->env, set_checkbox("mapel_id[]", $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id"), ((((!twig_test_empty($this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "mapel_id"))) && in_array($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id"), $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "mapel_id")))) ? (true) : (""))), "html", null, true);
            echo "> ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "nama"), "html", null, true);
            echo "

                                        </label>

                                    </li>

                                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['m'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 74
        echo "
                                </ul>

                            </td>

                        </tr>

                        <tr>

                            <th>Kelas</th>

                            <td>

                                <ul class=\"unstyled inline\" style=\"margin-left: -5px;\">

                                    ";
        // line 89
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["kelas"]) ? $context["kelas"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["k"]) {
            // line 90
            echo "
                                    <li>

                                        <label class=\"checkbox inline\">

                                            <input type=\"checkbox\" name=\"kelas_id[]\" value=\"";
            // line 95
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["k"]) ? $context["k"] : null), "id"), "html", null, true);
            echo "\" ";
            echo twig_escape_filter($this->env, set_checkbox("kelas_id[]", $this->getAttribute((isset($context["k"]) ? $context["k"] : null), "id"), ((((!twig_test_empty($this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "kelas_id"))) && in_array($this->getAttribute((isset($context["k"]) ? $context["k"] : null), "id"), $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "kelas_id")))) ? (true) : (""))), "html", null, true);
            echo "> ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["k"]) ? $context["k"] : null), "nama"), "html", null, true);
            echo "

                                        </label>

                                    </li>

                                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['k'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 102
        echo "
                                </ul>

                            </td>

                        </tr>

                        <tr>

                            <th>Tipe</th>

                            <td>

                                <ul class=\"unstyled inline\" style=\"margin-left: -5px;\">

                                    <li>

                                        <label class=\"checkbox inline\">

                                            <input type=\"checkbox\" name=\"type[]\" value=\"tertulis\" ";
        // line 121
        echo twig_escape_filter($this->env, set_checkbox("type[]", "tertulis", ((((!twig_test_empty($this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "type"))) && in_array("tertulis", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "type")))) ? (true) : (""))), "html", null, true);
        echo "> Tertulis

                                        </label>

                                    </li>

                                    <li>

                                        <label class=\"checkbox inline\">

                                            <input type=\"checkbox\" name=\"type[]\" value=\"file\" ";
        // line 131
        echo twig_escape_filter($this->env, set_checkbox("type[]", "file", ((((!twig_test_empty($this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "type"))) && in_array("file", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "type")))) ? (true) : (""))), "html", null, true);
        echo "> File

                                        </label>

                                    </li>

                                </ul>

                            </td>

                        </tr>

                        <tr>

                            <th width=\"15%\">Judul</th>

                            <td>

                                <input type=\"text\" name=\"judul\" class=\"span4\" value=\"";
        // line 149
        echo twig_escape_filter($this->env, set_value("judul", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "judul")), "html", null, true);
        echo "\">

                            </td>

                        </tr>

                        <tr>

                            <th>Konten</th>

                            <td>

                                <input type=\"text\" name=\"konten\" class=\"span5\" value=\"";
        // line 161
        echo twig_escape_filter($this->env, set_value("konten", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "konten")), "html", null, true);
        echo "\">

                            </td>

                        </tr>

                        ";
        // line 167
        if ((is_admin() == true)) {
            // line 168
            echo "
                        <tr>

                            <th>Pembuat</th>

                            <td>

                                <input type=\"text\" name=\"pembuat\" class=\"span4\" value=\"";
            // line 175
            echo twig_escape_filter($this->env, set_value("pembuat", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "pembuat")), "html", null, true);
            echo "\">

                            </td>

                        </tr>

                        ";
        }
        // line 182
        echo "
                        <tr>

                            <th>Status</th>

                            <td>

                                <ul class=\"unstyled inline\" style=\"margin-left: -5px;\">

                                    <li>

                                        <label class=\"checkbox inline\">

                                            <input type=\"checkbox\" name=\"publish[]\" value=\"1\" ";
        // line 195
        echo twig_escape_filter($this->env, set_checkbox("publish[]", "1", ((((!twig_test_empty($this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "publish"))) && in_array("1", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "publish")))) ? (true) : (""))), "html", null, true);
        echo "> Terbit

                                        </label>

                                    </li>

                                    <li>

                                        <label class=\"checkbox inline\">

                                            <input type=\"checkbox\" name=\"publish[]\" value=\"0\" ";
        // line 205
        echo twig_escape_filter($this->env, set_checkbox("publish[]", "0", ((((!twig_test_empty($this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "publish"))) && in_array("0", $this->getAttribute((isset($context["filter"]) ? $context["filter"] : null), "publish")))) ? (true) : (""))), "html", null, true);
        echo "> Konsep

                                        </label>

                                    </li>

                                </ul>

                            </td>

                        </tr>

                        <tr>

                            <td></td>

                            <td>

                                <button type=\"submit\" class=\"btn btn-primary\">Filter</button>

                            </td>

                        </tr>

                    </table>

                </form>

            </div>



        </div>



        <br>



        <table class=\"table table-striped\">

            <thead>

                <tr>

                    <th width=\"7%\">ID</th>

                    <th>Informasi Materi</th>

                    <th width=\"15%\"></th>

                </tr>

            </thead>

            <tbody>

                ";
        // line 263
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["materi"]) ? $context["materi"] : null));
        foreach ($context['_seq'] as $context["no"] => $context["m"]) {
            // line 264
            echo "


                ";
            // line 267
            if ((is_admin() == true)) {
                // line 268
                echo "
                    ";
                // line 269
                $context["action_edit"] = true;
                // line 270
                echo "
                    ";
                // line 271
                $context["action_delete"] = true;
                // line 272
                echo "
                ";
            } elseif ((is_pengajar() == true)) {
                // line 274
                echo "
                    ";
                // line 275
                if (($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "pengajar_id") == get_sess_data("user", "id"))) {
                    // line 276
                    echo "
                        ";
                    // line 277
                    $context["action_edit"] = true;
                    // line 278
                    echo "
                        ";
                    // line 279
                    $context["action_delete"] = true;
                    // line 280
                    echo "
                    ";
                } else {
                    // line 282
                    echo "
                        ";
                    // line 283
                    $context["action_edit"] = false;
                    // line 284
                    echo "
                        ";
                    // line 285
                    $context["action_delete"] = false;
                    // line 286
                    echo "
                    ";
                }
                // line 288
                echo "
                ";
            } elseif ((is_siswa() == true)) {
                // line 290
                echo "
                    ";
                // line 291
                if (($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "siswa_id") == get_sess_data("user", "id"))) {
                    // line 292
                    echo "
                        ";
                    // line 293
                    $context["action_edit"] = true;
                    // line 294
                    echo "
                        ";
                    // line 295
                    $context["action_delete"] = true;
                    // line 296
                    echo "
                    ";
                } else {
                    // line 298
                    echo "
                        ";
                    // line 299
                    $context["action_edit"] = false;
                    // line 300
                    echo "
                        ";
                    // line 301
                    $context["action_delete"] = false;
                    // line 302
                    echo "
                    ";
                }
                // line 304
                echo "
                ";
            }
            // line 306
            echo "


                <tr>

                    <td><b>";
            // line 311
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id"), "html", null, true);
            echo "</b></td>

                    <td>

                        <p><strong class=\"text-warning\">

                            ";
            // line 317
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "judul"), "html", null, true);
            echo "

                        </strong></p>

                        <ul class=\"breadcrumb\" style=\"padding: 0px;background: none;\">

                            <li>

                                ";
            // line 325
            echo ((($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "publish") == 1)) ? ("<span class=\"label label-success\">Terbit</span>") : ("<span class=\"label label-warning\">Konsep</span>"));
            echo "

                                <span class=\"divider\">/</span>

                            </li>

                            <li>

                                ";
            // line 333
            echo (((!twig_test_empty($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "file")))) ? ("<span class=\"label label-success\">File</span>") : ("<span class=\"label label-info\">Tertulis</span>"));
            echo "

                                <span class=\"divider\">/</span>

                            </li>

                            <li>

                                ";
            // line 341
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "mapel"), "nama"), "html", null, true);
            echo "

                                <span class=\"divider\">/</span>

                            </li>

                            <li>

                                ";
            // line 349
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "materi_kelas"));
            foreach ($context['_seq'] as $context["_key"] => $context["mk"]) {
                // line 350
                echo "
                                    ";
                // line 351
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["mk"]) ? $context["mk"] : null), "nama"), "html", null, true);
                echo "&nbsp;

                                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mk'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 354
            echo "
                                <span class=\"divider\">/</span>

                            </li>

                            <li>

                                ";
            // line 361
            if ((is_pengajar() == false)) {
                // line 362
                echo "
                                    Pembuat <a href=\"";
                // line 363
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "pembuat"), "link_profil"), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "pembuat"), "nama"), "html", null, true);
                echo "</a>

                                    , ";
                // line 365
                echo twig_escape_filter($this->env, tgl_jam_indo($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "tgl_posting")), "html", null, true);
                echo "

                                ";
            } else {
                // line 368
                echo "
                                    Dibuat ";
                // line 369
                echo twig_escape_filter($this->env, tgl_jam_indo($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "tgl_posting")), "html", null, true);
                echo "

                                ";
            }
            // line 372
            echo "
                                <span class=\"divider\">/</span>

                            </li>

                            <li>

                                ";
            // line 379
            echo ((twig_test_empty($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "file"))) ? ("Dibaca") : ("Diunduh"));
            echo "

                                ";
            // line 381
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "views"), "html", null, true);
            echo " kali

                                <span class=\"divider\">/</span>

                            </li>

                            <li>

                                ";
            // line 389
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "jml_komentar"), "html", null, true);
            echo " Komentar

                            </li>

                        </ul>

                    </td>

                    <td>

                        <div class=\"btn-group\">

                            ";
            // line 401
            if ((!twig_test_empty($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "file")))) {
                // line 402
                echo "
                                ";
                // line 403
                $context["url_type"] = "file";
                // line 404
                echo "
                            ";
            } else {
                // line 406
                echo "
                                ";
                // line 407
                $context["url_type"] = "tertulis";
                // line 408
                echo "
                            ";
            }
            // line 410
            echo "
                            ";
            // line 411
            echo anchor(("materi/detail/" . $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id")), "<i class=\"icon-zoom-in\"></i> Detail", array("class" => "btn btn-default btn-small", "target" => "_tab"));
            echo "



                            ";
            // line 415
            if (((isset($context["action_edit"]) ? $context["action_edit"] : null) == true)) {
                // line 416
                echo "
                                ";
                // line 417
                echo anchor(((((("materi/edit/" . (isset($context["url_type"]) ? $context["url_type"] : null)) . "/") . $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id")) . "/") . enurl_redirect(current_url())), "<i class=\"icon-edit\"></i> Edit", array("class" => "btn btn-default btn-small"));
                echo "

                            ";
            }
            // line 420
            echo "


                            ";
            // line 423
            if (((isset($context["action_delete"]) ? $context["action_delete"] : null) == true)) {
                // line 424
                echo "
                                ";
                // line 425
                echo anchor(((("materi/delete/" . $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id")) . "/") . enurl_redirect(current_url())), "<i class=\"icon-trash\"></i> Hapus", array("class" => "btn btn-default btn-small", "onclick" => "return confirm('Anda yakin ingin menghapus?')"));
                echo "

                            ";
            }
            // line 428
            echo "
                        </div>

                    </td>

                </tr>

                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['no'], $context['m'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 436
        echo "
            </tbody>

        </table>

        <br>

        ";
        // line 443
        echo (isset($context["pagination"]) ? $context["pagination"] : null);
        echo "



    </div>

</div>

";
    }

    public function getTemplateName()
    {
        return "list-materi.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  703 => 443,  694 => 436,  681 => 428,  675 => 425,  672 => 424,  670 => 423,  665 => 420,  659 => 417,  656 => 416,  654 => 415,  647 => 411,  644 => 410,  640 => 408,  638 => 407,  635 => 406,  631 => 404,  629 => 403,  626 => 402,  624 => 401,  609 => 389,  598 => 381,  593 => 379,  584 => 372,  578 => 369,  575 => 368,  569 => 365,  562 => 363,  559 => 362,  557 => 361,  548 => 354,  539 => 351,  536 => 350,  532 => 349,  521 => 341,  510 => 333,  499 => 325,  488 => 317,  479 => 311,  472 => 306,  468 => 304,  464 => 302,  462 => 301,  459 => 300,  457 => 299,  454 => 298,  450 => 296,  448 => 295,  445 => 294,  443 => 293,  440 => 292,  438 => 291,  435 => 290,  431 => 288,  427 => 286,  425 => 285,  422 => 284,  420 => 283,  417 => 282,  413 => 280,  411 => 279,  408 => 278,  406 => 277,  403 => 276,  401 => 275,  398 => 274,  394 => 272,  392 => 271,  389 => 270,  387 => 269,  384 => 268,  382 => 267,  377 => 264,  373 => 263,  312 => 205,  299 => 195,  284 => 182,  274 => 175,  265 => 168,  263 => 167,  254 => 161,  239 => 149,  218 => 131,  205 => 121,  184 => 102,  167 => 95,  160 => 90,  156 => 89,  139 => 74,  122 => 67,  115 => 62,  111 => 61,  96 => 49,  87 => 42,  79 => 37,  74 => 35,  69 => 32,  67 => 31,  58 => 25,  45 => 14,  42 => 13,  35 => 7,  32 => 6,  29 => 5,);
    }
}
