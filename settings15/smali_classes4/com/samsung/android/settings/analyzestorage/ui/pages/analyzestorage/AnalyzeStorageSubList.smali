.class public abstract Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final asSubList$delegate:Lkotlin/Lazy;

.field public final context:Landroid/content/Context;

.field public controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

.field public delayJob:Lkotlinx/coroutines/Job;

.field public duringLoading:Z

.field public headerSize:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public logTag:Ljava/lang/String;

.field public mainText:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public rootView:Landroid/view/View;

.field public final sizeInfo:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;

.field public subText:Landroid/widget/TextView;

.field public final type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->sizeInfo:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$asSubList$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$asSubList$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->asSubList$delegate:Lkotlin/Lazy;

    const-string p1, "AnalyzeStorageSubList"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->asSubList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    return-object p0
.end method

.method public abstract getListItemData()Landroidx/lifecycle/MutableLiveData;
.end method

.method public abstract getListItemTotalSizeData()Landroidx/lifecycle/MutableLiveData;
.end method

.method public abstract getListLoading()Landroidx/lifecycle/MutableLiveData;
.end method

.method public initLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->rootView:Landroid/view/View;

    if-eqz v0, :cond_7

    const v1, 0x7f0a0922

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->mainText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->getListTitleResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v1, 0x7f0a0f30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->subText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->getListSubTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0a0797

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getListItemData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->refresh()V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->rootView:Landroid/view/View;

    if-eqz p0, :cond_5

    const v0, 0x7f0a05da

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public observeTotalSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getListItemTotalSizeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public abstract refresh()V
.end method
