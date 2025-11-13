.class public final Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;
.super Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->mKey:I

    invoke-static {p0}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
