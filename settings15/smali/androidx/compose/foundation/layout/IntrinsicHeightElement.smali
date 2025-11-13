.class final Landroidx/compose/foundation/layout/IntrinsicHeightElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/IntrinsicHeightElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/IntrinsicHeightNode;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final height:Landroidx/compose/foundation/layout/IntrinsicSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicHeightNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    iput-object p0, v0, Landroidx/compose/foundation/layout/IntrinsicHeightNode;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/compose/foundation/layout/IntrinsicHeightNode;->enforceIncoming:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    iget-object p1, p1, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/IntrinsicHeightNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/IntrinsicHeightElement;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    iput-object p0, p1, Landroidx/compose/foundation/layout/IntrinsicHeightNode;->height:Landroidx/compose/foundation/layout/IntrinsicSize;

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/IntrinsicHeightNode;->enforceIncoming:Z

    return-void
.end method
