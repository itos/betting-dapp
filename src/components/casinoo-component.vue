<template>

</template>

<script>
export default {
  name: 'casino',
  mounted () {
    console.log('dispatching getContractInstance')
    this.$store.dispath('getContractInstance')
  }
}

</script>

<style scoped>

</style>
