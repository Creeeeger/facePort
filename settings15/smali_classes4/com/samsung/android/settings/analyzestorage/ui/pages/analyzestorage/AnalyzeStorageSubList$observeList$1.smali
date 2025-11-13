.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeList$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iget-object v0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->headerSize:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    invoke-static {v1, p0, p1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->sizeInfo:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$SizeInfo;->supportSize:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_0
    check-cast p1, Landroid/os/Bundle;

    const-string p0, "largeSize"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x19

    cmp-long p0, v3, v5

    const/4 v1, 0x2

    const-string v5, "%d %s"

    if-eqz p0, :cond_4

    const-wide/16 v6, 0x64

    cmp-long p0, v3, v6

    if-eqz p0, :cond_4

    const-wide/16 v6, 0x1f4

    cmp-long p0, v3, v6

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "largeUnit"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    const v4, 0x7f1410b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    const v4, 0x7f141787

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->rootView:Landroid/view/View;

    if-eqz p1, :cond_5

    const v0, 0x7f0a0f30

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    :cond_5
    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->context:Landroid/content/Context;

    const v1, 0x7f14040b

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->headerSize:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-boolean p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->duringLoading:Z

    if-eqz p0, :cond_a

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    instance-of p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz p1, :cond_9

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    goto :goto_6

    :cond_9
    move-object p0, v0

    :goto_6
    if-eqz p0, :cond_e

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mNeedLoading:Z

    if-ne p0, v4, :cond_e

    :cond_a
    iput-boolean v4, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->duringLoading:Z

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->delayJob:Lkotlinx/coroutines/Job;

    if-nez p0, :cond_e

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeLoadingState$1$1;

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList$observeLoadingState$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->delayJob:Lkotlinx/coroutines/Job;

    goto :goto_7

    :cond_b
    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->delayJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_c

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_c
    iput-object v0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->delayJob:Lkotlinx/coroutines/Job;

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->progressBar:Landroid/widget/ProgressBar;

    if-nez p0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_7
    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->logTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getListItemData()] isEmpty : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".isNullOrEmpty(), type : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
