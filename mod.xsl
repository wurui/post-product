<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.post-product">
        <xsl:param name="dsid">e0ee59439b39fcc3</xsl:param>
        <xsl:param name="forward"></xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-post-product" ox-mod="post-product" data-forward="{$forward}" data-dsid="{$dsid}"
             data-uid="{login/uid}">
            <xsl:variable name="product" select="data/product"/>
            <form class="J_mainform">
                <xsl:if test="$product/_id !=''">
                    <input type="hidden" name="_id" value="{$product/_id}"/>
                </xsl:if>
                <ul>
                    <li>
                        <input type="text" placeholder="商品标题" name="title" value="{$product/title}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="价格" name="orig_price" value="{$product/orig_price}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="品牌" name="brand" value="{$product/brand}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="系列" name="series" value="{$product/series}"/>
                    </li>
                    <li>
                        <input type="text" placeholder="型号" name="model" value="{$product/model}"/>
                    </li>
                    <li>
                        <input type="number" placeholder="库存" name="inventory" value="{$product/inventory}"/>
                    </li>
                    <li class="bottom">
                        <button class="J_submit">提交</button>
                    </li>
                </ul>
            </form>

        </div>
    </xsl:template>
</xsl:stylesheet>
