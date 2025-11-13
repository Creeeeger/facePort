.class public final Landroidx/core/view/SeslTouchTargetDelegate$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAnchorView:Landroid/view/View;

.field public final mQueue:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mQueue:Ljava/util/Queue;

    iput-object p1, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mAnchorView:Landroid/view/View;

    return-void
.end method
