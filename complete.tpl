{if $ispaid}
<script>
dataLayer.push({
  event: 'purchase',
  ecommerce: {
    transaction_id: '{$orderid}',
    value: parseFloat('{$total}'),
    currency: '{$currency}',
    items: [{
      item_id: '{$pid}',  // product ID
      item_name: '{$product}',
      item_category: '{$groupname}',
      price: parseFloat('{$amount}'),
      quantity: 1
    }]
  }
});
</script>
{/if}
