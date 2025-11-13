.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 13

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "refreshUserList childCount=%d adapterCount=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardUserSwitcherController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->oldAdapterCount:I

    if-eq v2, v4, :cond_0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->oldAdapterCount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    :cond_0
    const/4 v4, 0x0

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_8

    const/4 v8, 0x1

    if-ge v6, v2, :cond_6

    if-ge v6, v0, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v1, v6, v9, v10}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/user/data/source/UserRecord;

    iget-boolean v12, v11, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v12, :cond_3

    if-eqz v6, :cond_2

    const-string v7, "Current user is not the first view in the list"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, v11, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v10, v8, v7, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    move v7, v8

    goto :goto_2

    :cond_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-virtual {v10, v11, v8, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    iget v11, v10, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mDarkAmount:F

    cmpl-float v11, v11, v8

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    iput v8, v10, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mDarkAmount:F

    iget v11, v10, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mTextColor:I

    const/4 v12, -0x1

    invoke-static {v8, v11, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    move-result v8

    iget-object v11, v10, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    if-nez v9, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    if-eq v9, v10, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    invoke-virtual {v8, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    if-nez v7, :cond_9

    const-string p0, "Current user is not listed"

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
