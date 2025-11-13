.class public abstract Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final alignPopupAxis(IIZI)I
    .locals 3

    const/4 v0, 0x0

    if-lt p1, p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_3

    :cond_0
    sub-int v0, p3, p1

    goto :goto_3

    :cond_1
    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    if-gt p1, p0, :cond_4

    goto :goto_0

    :cond_2
    sub-int v2, p3, p1

    if-le v2, p0, :cond_4

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sub-int/2addr p0, p1

    :goto_1
    move v0, p0

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    if-gt p1, p0, :cond_6

    goto :goto_2

    :cond_5
    sub-int p2, p3, p1

    if-le p2, p0, :cond_6

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_0

    :goto_3
    return v0
.end method
