.class public Landroidx/core/view/SeslTouchTargetDelegate$InvalidDelegateViewException;
.super Ljava/lang/RuntimeException;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TouchTargetDelegate\'s delegateView must be child of anchorView"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
