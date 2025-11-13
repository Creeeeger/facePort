.class public Landroidx/core/view/SeslTouchTargetDelegate$InvalidDelegateViewException;
.super Ljava/lang/RuntimeException;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TouchTargetDelegate\'s delegateView must be child of anchorView"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
