{if $products}
{foreach from=$products item=product}
{literal}
<script>
dataLayer.push({
  event: 'add_to_cart',
  ecommerce: {
    items: [{
      item_id: "{/literal}{$product.pid}{literal}",
      item_name: "{/literal}{$product.name}{literal}",
      item_category: "{/literal}{$product.groupname}{literal}",
      price: parseFloat("{/literal}{$product.recurringamount}{literal}"),
      quantity: {/literal}{$product.qty}{literal}
    }]
  }
});
</script>
{/literal}
{/foreach}
{/if}
