.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method
