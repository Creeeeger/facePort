.class public final Lcom/google/protobuf/ManifestSchemaFactory$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/protobuf/MessageInfoFactory;


# virtual methods
.method public final isSupported(Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/RawMessageInfo;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This should never be called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
