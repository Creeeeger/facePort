.class public abstract Landroidx/compose/material/ripple/RippleIndicationInstance;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/IndicationInstance;


# instance fields
.field public final bounded:Z

.field public final stateLayer:Landroidx/compose/material/ripple/StateLayer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->bounded:Z

    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    new-instance v1, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    invoke-direct {v1, p1}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v0, v1, p2}, Landroidx/compose/material/ripple/StateLayer;-><init>(Lkotlin/jvm/functions/Function0;Z)V

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    return-void
.end method
