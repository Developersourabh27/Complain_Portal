module.exports = (srv) =>{
    srv.on( 'CAPMSourabh',(req,res) => {
        return "hello world", req.data.input;
    })
}