.class public final Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;
.super Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final container:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public dropTargetView:Landroid/view/View;

.field public final exclRectHeight$delegate:Lkotlin/Lazy;

.field public final exclRectWidth$delegate:Lkotlin/Lazy;

.field public final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final tempRect$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$1;

    invoke-direct {v0, p3}, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$1;-><init>(Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->container:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$tempRect$2;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$tempRect$2;

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->tempRect$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectWidth$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectWidth$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->exclRectWidth$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectHeight$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectHeight$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->exclRectHeight$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getDropTargetView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    return-object p0
.end method

.method public final removeDropTargetView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    return-void
.end method

.method public final updateLocation(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->tempRect$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBarExpandedViewBounds(Landroid/graphics/Rect;ZZ)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
