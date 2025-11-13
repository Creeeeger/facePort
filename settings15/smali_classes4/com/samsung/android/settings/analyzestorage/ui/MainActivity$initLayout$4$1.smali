.class public final Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $list:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;->$list:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;->$list:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;

    const v1, 0x7f0a0425

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo v1, "requireViewById(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->logTag:Ljava/lang/String;

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->getItemViewResId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->visibleSubList(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0e63

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->headerSize:Landroid/widget/TextView;

    const v2, 0x7f0a0bd1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->headerSize:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_2

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->sizeInfo:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;

    iget-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;->supportSize:Landroidx/lifecycle/MutableLiveData;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$onCreate$1$1$1;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$onCreate$1$1$1;-><init>(ILandroid/widget/TextView;)V

    invoke-virtual {v7, v5, v8}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v6, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;->totalSize:Landroidx/lifecycle/MutableLiveData;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$onCreate$1$1$1;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$onCreate$1$1$1;-><init>(ILandroid/widget/TextView;)V

    invoke-virtual {v6, v5, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    const v2, 0x7f0a0545

    invoke-virtual {p0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->needDivider(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->initLayout()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->observeTotalSize()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getListLoading()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;I)V

    invoke-virtual {p0, v5, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_4
    iget p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_5

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;I)V

    invoke-virtual {p0, v5, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_5
    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->mainText:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->headerSize:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->subText:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    :goto_1
    return-void
.end method
