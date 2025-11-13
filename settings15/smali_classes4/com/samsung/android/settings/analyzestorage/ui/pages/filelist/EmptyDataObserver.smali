.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final animationFinishedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;

.field public final emptyViewInterface:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

.field public final handler:Landroid/os/Handler;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->emptyViewInterface:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->animationFinishedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;

    return-void
.end method

.method public static final access$waitRecyclerViewAnimationToFinish(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->animationFinishedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    xor-int/lit8 v4, v1, 0x1

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->emptyViewInterface:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->bottomButton:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateAppBarTitle emptyVisible "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "AppListBehavior"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-nez v8, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v9, v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v9, v10, :cond_7

    const v9, 0x7f1403e1

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    const v9, 0x7f140444

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v7}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCustomActionBar()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCustomActionBar()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a1041

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    const-string/jumbo v9, "requireViewById(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCustomActionBar()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a0f31

    invoke-virtual {v10, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCustomActionBar()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a030e

    invoke-virtual {v11, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/widget/CheckBox;

    iget-object v9, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v9, v9, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckItemSize:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;

    invoke-direct {v12, v8, p0, v10}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$1;-><init>(Landroid/widget/TextView;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;Landroid/widget/TextView;)V

    invoke-virtual {v9, v7, v12}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v8, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v8, v8, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsAllChecked:Landroidx/lifecycle/MutableLiveData;

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$2;

    invoke-direct {v9, v11}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initObserve$2;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v7, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCustomActionBar()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a0304

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initCheckBox$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initCheckBox$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0a106c

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    iget-object v7, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v7, v2, v2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    :cond_9
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateView emptyVisible "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->emptyView:Lcom/samsung/android/settings/analyzestorage/ui/widget/EmptyView;

    if-eqz v6, :cond_11

    if-eqz v1, :cond_a

    move v5, v2

    :cond_a
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_11

    iget-object v1, v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v4, "getPageType(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCapacityOfPercent()Ljava/lang/String;

    move-result-object p0

    const-string v4, "controller"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v1, v4, :cond_c

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v1, v4, :cond_b

    goto :goto_6

    :cond_b
    move v3, v2

    :cond_c
    :goto_6
    const-string v4, "EmptyView"

    if-eqz v3, :cond_10

    iget-wide v7, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateView() ] pageType : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , freedUpSize : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v0, v7, v3

    if-lez v0, :cond_f

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v2, v7, v8, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_e

    const/16 v1, 0x18

    if-eq v0, v1, :cond_d

    const-string p0, ""

    goto :goto_7

    :cond_d
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14041b

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14041e

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_7
    const v0, 0x7f0a0a87

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v6, v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/EmptyView;->setSubText(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateView() ] Unsupported PageType : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_8
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$onChanged$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$onChanged$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
