.class public final Lcom/android/wm/shell/common/split/DividerView$5;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/4 v1, 0x1

    const v2, 0x7f0a0084

    const v3, 0x7f0a0085

    const v4, 0x7f0a0087

    const v5, 0x7f0a0089

    const v6, 0x7f0a008a

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v7}, Lcom/android/wm/shell/common/split/DividerView;->access$000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f130038

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v6, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v6, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v7}, Lcom/android/wm/shell/common/split/DividerView;->access$100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f130037

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le v0, v1, :cond_2

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/DividerView;->access$200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f130036

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-eq p1, v6, :cond_3

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerView;->access$300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_3
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13003a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v7}, Lcom/android/wm/shell/common/split/DividerView;->access$500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f13003e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v6, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v6, :cond_5

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v7}, Lcom/android/wm/shell/common/split/DividerView;->access$600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f13003d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_5
    iget-object v0, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le v0, v1, :cond_6

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v1}, Lcom/android/wm/shell/common/split/DividerView;->access$700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f13003c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_6
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-eq p1, v6, :cond_7

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerView;->access$800(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_7
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/DividerView;->access$900(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130034

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_1
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_0
    const/16 v1, 0x10

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerView;->openDividerPanelIfNeeded()V

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f0a008a

    if-ne p2, v1, :cond_3

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v2, :cond_2

    const v2, 0x7f130038

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto/16 :goto_2

    :cond_2
    const v2, 0x7f13003e

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto/16 :goto_2

    :cond_3
    const v1, 0x7f0a0089

    if-ne p2, v1, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v2, :cond_4

    const v2, 0x7f130037

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_4
    const v2, 0x7f13003d

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_5
    const v1, 0x7f0a0087

    if-ne p2, v1, :cond_7

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v2, :cond_6

    const v2, 0x7f130036

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_6
    const v2, 0x7f13003c

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_7
    const v1, 0x7f0a0085

    if-ne p2, v1, :cond_9

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v2, :cond_8

    const v2, 0x7f130035

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_8
    const v2, 0x7f13003b

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_9
    const v1, 0x7f0a0084

    if-ne p2, v1, :cond_b

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v2, :cond_a

    const v2, 0x7f13003a

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_a
    const v2, 0x7f130034

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/split/DividerView;->-$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$5;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerBounds(IZ)V

    return p2

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
