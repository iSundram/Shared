{literal}
<script>
dataLayer.push({
  event: 'view_item',
  ecommerce: {
    items: [{
      item_id: "{/literal}{$pid}{literal}",
      item_name: "{/literal}{$product}{literal}",
      item_category: "{/literal}{$groupname}{literal}",
      price: parseFloat("{/literal}{$amount}{literal}")
    }]
  }
});
</script>
{/literal}
