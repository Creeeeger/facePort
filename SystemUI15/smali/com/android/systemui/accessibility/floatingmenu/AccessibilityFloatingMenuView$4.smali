.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f1300a7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f1300a9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a008d

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f13009e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f1300a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0082

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v0, 0x7f1300a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a008b

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    iget v4, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget v0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    const v0, 0x7f0a008c

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget p3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1300a8

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v3

    :cond_1
    const v0, 0x7f0a008d

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget p2, v1, Landroid/graphics/Rect;->right:I

    iget p3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1300aa

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v3

    :cond_2
    const v0, 0x7f0a0081

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f13009f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v3

    :cond_3
    const v0, 0x7f0a0082

    if-ne p2, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget p2, v1, Landroid/graphics/Rect;->right:I

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1300a1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v3

    :cond_4
    const v0, 0x7f0a008b

    if-ne p2, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p3, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1300a6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1300a5

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_1
    return v3

    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
