.class public final Lorg/simpleframework/xml/core/Revision;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public equal:Z


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return p1
.end method
