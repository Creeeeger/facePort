.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda8;->f$1:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz p0, :cond_0

    iget p0, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerX:F

    iget v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mFirstPointerY:F

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    :cond_0
    return-void
.end method
