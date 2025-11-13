.class public final synthetic Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/SeslTouchTargetDelegate$Builder;

.field public final synthetic f$1:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/SeslTouchTargetDelegate$Builder;Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/SeslTouchTargetDelegate$Builder;

    iput-object p2, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/SeslTouchTargetDelegate$Builder;

    iget-object p0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Consumer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object v2, v0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mAnchorView:Landroid/view/View;

    invoke-direct {v1, v2}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    iget-object v0, v0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Consumer;

    invoke-interface {v2, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    sget p0, Landroidx/core/view/SeslTouchTargetDelegate;->$r8$clinit:I

    return-void
.end method
