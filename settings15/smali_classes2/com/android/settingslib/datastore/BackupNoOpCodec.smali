.class public final Lcom/android/settingslib/datastore/BackupNoOpCodec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/BackupCodec;


# virtual methods
.method public final decode(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p1
.end method

.method public final encode(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    const-string p0, "outputStream"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getId()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "N/A"

    return-object p0
.end method
