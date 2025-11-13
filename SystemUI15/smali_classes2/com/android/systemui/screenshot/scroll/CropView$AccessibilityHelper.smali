.class public final Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/scroll/CropView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/scroll/CropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/scroll/CropView;

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static viewIdToBoundary(I)Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    return-object p0
.end method


# virtual methods
.method public final getBoundaryContentDescription(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const v0, 0x7f13100e

    goto :goto_0

    :cond_1
    const v0, 0x7f13100a

    goto :goto_0

    :cond_2
    const v0, 0x7f130ffc

    goto :goto_0

    :cond_3
    const v0, 0x7f131017

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/scroll/CropView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/screenshot/scroll/CropView;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/scroll/CropView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1000

    if-eq p2, v1, :cond_0

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/scroll/CropView;

    iget v4, v3, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result v4

    if-ne p2, v1, :cond_1

    neg-float v4, v4

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p2

    add-float/2addr p2, v4

    invoke-virtual {v3, p2, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->setBoundaryPosition(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)V

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v1, 0x800

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent$1(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-interface {p2, v0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_2
    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->getBoundaryContentDescription(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    invoke-static {p1}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->getBoundaryContentDescription(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/screenshot/scroll/CropView;->isVertical(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/scroll/CropView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sub-float v2, p1, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-gez p1, :cond_1

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sub-float v2, p1, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float/2addr p1, v4

    float-to-int p1, p1

    iget-object v4, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v3, p1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, p1, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p0, 0x2000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method
