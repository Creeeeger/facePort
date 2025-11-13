.class public final Lcom/android/wm/shell/common/split/DividerView$12;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f130038

    goto :goto_1

    :cond_1
    const v1, 0x7f13003e

    :goto_1
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v3}, Lcom/android/wm/shell/common/split/DividerView;->access$1000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a008a

    invoke-direct {v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    if-eqz v0, :cond_2

    const v1, 0x7f13003a

    goto :goto_2

    :cond_2
    const v1, 0x7f130034

    :goto_2
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v3}, Lcom/android/wm/shell/common/split/DividerView;->access$1100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0084

    invoke-direct {v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v1, :cond_4

    :goto_3
    return-void

    :cond_4
    if-eqz v0, :cond_5

    const v0, 0x7f130039

    goto :goto_4

    :cond_5
    const v0, 0x7f13003f

    :goto_4
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->getTargetMinimalRatio()I

    move-result v1

    const/16 v2, 0x32

    const v3, 0x7f0a0087

    const/16 v4, 0x1e

    if-ne v1, v4, :cond_6

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/DividerView;->access$1200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0a0089

    invoke-direct {p1, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/DividerView;->access$1300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$1400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0a0085

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->getTargetMinimalRatio()I

    move-result p1

    const/16 v1, 0x28

    if-ne p1, v1, :cond_7

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$1500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0088

    invoke-direct {p1, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerView;->access$1600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$1700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0a0086

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->openDividerPanelIfNeeded()V

    goto :goto_1

    :cond_1
    const v1, 0x7f0a008a

    if-ne p2, v1, :cond_2

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_4

    :cond_2
    const v1, 0x7f0a0089

    if-eq p2, v1, :cond_8

    const v1, 0x7f0a0088

    if-ne p2, v1, :cond_3

    goto :goto_3

    :cond_3
    const v1, 0x7f0a0087

    if-ne p2, v1, :cond_4

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_4

    :cond_4
    const v1, 0x7f0a0085

    if-eq p2, v1, :cond_7

    const v1, 0x7f0a0086

    if-ne p2, v1, :cond_5

    goto :goto_2

    :cond_5
    const v1, 0x7f0a0084

    if-ne p2, v1, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_4

    :cond_6
    :goto_1
    move-object v0, v2

    goto :goto_4

    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    :goto_4
    if-eqz v0, :cond_b

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ACCESSIBILITY:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean p3, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p3, :cond_9

    iget-object p3, p1, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-boolean v1, p3, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    if-eqz v1, :cond_a

    iput-object p1, p3, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iput-boolean p2, p3, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    iput-boolean p2, p3, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    iget-boolean p3, p3, Lcom/android/wm/shell/common/split/DividerResizeController;->mUseGuideViewByMultiStar:Z

    sput-boolean p3, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    invoke-virtual {p1, p3, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    if-eqz p1, :cond_a

    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p3, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p1, p3, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerBounds(IZ)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$12;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    :cond_a
    :goto_5
    return p2

    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
