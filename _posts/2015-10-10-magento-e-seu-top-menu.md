---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2015-10-10 16:51:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.300655-03:00
layout: post
published: true
tags:
- custom
- e-commerce
- fica-a-dica
- magento
- menu
- personalizado
- php
- programação
- topmenu
title: Magento e seu top menu!
---

Estive trabalhando em um projeto de personalização de menu do Magento e percebi uma questão muito chata dele: A documentação oficial é muito fraca! 🙁

Com isso tive que pesquisar na internet para entender os objetos que o Magento me libera para customizar e foi uma briga feia!! Até que achei uma explicação muito simples no link [*Generate Magento top menu navigation html [$_menu = $this->getHtml('level-top')]*](http://www.w3bdeveloper.com/how-to/generate-magento-top-menu-navigation-html-menu-this-gethtml-level-top/).

Depois de ler e fazer meus testes, resumi o código para remover a linha `<?php $_menu = $this->getHtml('level-top') ?>` e adicionar:

```php
<?php
$obj = new Mage_Catalog_Block_Navigation();
$storeCategories = $obj-&gt;getStoreCategories();
$_menu = '';
foreach ($storeCategories as $_category) {
    $_menu .= '&lt;li&gt;&lt;a href="'. $obj-&gt;getCategoryUrl($_category) .'"&gt;' . $_category-&gt;getName() . '&lt;/a&gt;' . "n";
    $categoryChildren = $_category-&gt;getChildren();
    if($categoryChildren-&gt;count()) {
        $_menu .= '&lt;ul&gt;' . "n";
        foreach($categoryChildren as $_categoryChild) {
            $_categoryChildModel = Mage::getModel('catalog/category')-&gt;load($_categoryChild-&gt;getId());
            $categoryGrandchildren=$_categoryChild-&gt;getChildren();
            $_menu .= '&lt;li&gt;&lt;a href="' . $_categoryChildModel-&gt;getUrl() . '"&gt;' . $_categoryChild-&gt;getName() . '&lt;/a&gt;&lt;/li&gt;' . "n";
            if($categoryGrandchildren-&gt;count()) {
                $_menu .= '&lt;ul&gt;' . "n";
                $_menu .= '&lt;ul&gt;' . "n";
                foreach($categoryGrandchildren as $_categoryGrandchild) {
                    $_categoryGrandchildModel = Mage::getModel('catalog/category')-&gt;load($_categoryGrandchild-&gt;getId());
                    $_menu .= '&lt;li&gt;&lt;a href="' . $_categoryGrandchildModel-&gt;getUrl() . '"&gt;' .  $_categoryGrandchild-&gt;getName() . '&lt;/a&gt;&lt;/li&gt;' . "n";
                }
                $_menu .= '&lt;/ul&gt;' . "n";
            }
        }
        $_menu .= '&lt;/ul&gt;' . "n";
    }
    $_menu .= '&lt;/li&gt;' . "n";
}
?>
```

Depois foi só personalizar a realidade do cliente! 😀
