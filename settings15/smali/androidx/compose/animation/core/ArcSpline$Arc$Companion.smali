.class public final Landroidx/compose/animation/core/ArcSpline$Arc$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final access$getOurPercent()[F
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/ArcSpline$Arc;->_ourPercent:[F

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5b

    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/animation/core/ArcSpline$Arc;->_ourPercent:[F

    :goto_0
    return-object v0
.end method
