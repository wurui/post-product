<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.post-product">
        <xsl:param name="dsid">e0ee59439b39fcc3</xsl:param>
        <xsl:param name="forward">e0ee59439b39fcc3</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-post-product" ox-mod="post-product" data-forward="{$forward}" data-dsid="{$dsid}" data-uid="{login/uid}">
            <form class="J_mainform">

            <ul>
                <li>
                    <input type="text" placeholder="商品标题" name="title"/>
                </li>
                <li>
                    <input type="text" placeholder="价格" name="orig_price"/>
                </li>
                <li>
                    <input type="text" placeholder="品牌" name="brand"/>
                </li>
                <li>
                    <input type="text" placeholder="系列" name="series"/>
                </li>
                <li>
                    <input type="text" placeholder="型号" name="model"/>
                </li>
                <li>
                    <input type="number" placeholder="库存" name="inventory"/>
                </li>
                <li class="bottom">
                    <button class="J_submit">提交</button>
                </li>
            </ul>
            </form>

        </div>
    </xsl:template>
</xsl:stylesheet>
