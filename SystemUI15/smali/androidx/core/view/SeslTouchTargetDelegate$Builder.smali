.class public final Landroidx/core/view/SeslTouchTargetDelegate$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
