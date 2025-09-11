{if $ispaid}
<script>
dataLayer.push({
  event: 'purchase',
  ecommerce: {
    transaction_id: '{$orderid}',
    value: parseFloat('{$total|replace:",":""}'),
    currency: '{$currency|default:"USD"}',
    items: [
{foreach from=$products item=prod name=loop}
{
  item_id: '{$prod.id}',
  item_name: '{$prod.name}',
  item_category: '{$prod.groupname}',
  price: parseFloat('{$prod.price|replace:",":""}'),
  quantity: {$prod.quantity|default:1}
}{if !$smarty.foreach.loop.last},{/if}
{/foreach}
    ]
  }
});
</script>
{/if}
