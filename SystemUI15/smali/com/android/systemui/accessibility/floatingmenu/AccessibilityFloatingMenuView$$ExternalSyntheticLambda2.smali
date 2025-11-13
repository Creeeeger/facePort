.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    iget v7, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v3, v2, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    :cond_3
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    sub-int/2addr v0, p1

    int-to-float v0, v0

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4
.end method
