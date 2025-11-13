.class public final synthetic Landroidx/compose/material/ripple/RippleHostView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material/ripple/RippleHostView;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material/ripple/RippleHostView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleHostView$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material/ripple/RippleHostView;

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Landroidx/compose/material/ripple/RippleHostView$$ExternalSyntheticLambda0;

    return-void
.end method
