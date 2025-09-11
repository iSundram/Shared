{if $products}
{literal}
<script>
dataLayer.push({
  event: 'add_to_cart',
  ecommerce: {
    items: [
{/literal}
{foreach from=$products item=product name=loop}
{
  item_id: "{/literal}{$product.pid}{literal}",
  item_name: "{/literal}{$product.name}{literal}",
  item_category: "{/literal}{$product.groupname}{literal}",
  price: parseFloat("{/literal}{$product.recurringamount|replace:',':''}{literal}"),
  quantity: {/literal}{$product.qty|default:1}{literal}
}{if !$smarty.foreach.loop.last},{/if}
{/foreach}
{literal}
    ]
  }
});
</script>
{/literal}
{/if}
