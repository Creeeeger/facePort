.class abstract Lorg/simpleframework/xml/stream/EventElement;
.super Ljava/util/ArrayList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/stream/EventAttribute;",
        ">;",
        "Lorg/simpleframework/xml/stream/EventNode;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEnd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isStart()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isText()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
