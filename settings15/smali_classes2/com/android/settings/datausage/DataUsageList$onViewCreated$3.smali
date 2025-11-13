.class final synthetic Lcom/android/settings/datausage/DataUsageList$onViewCreated$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList$onViewCreated$3;->invoke(Lcom/android/settings/datausage/lib/NetworkUsageData;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/settings/datausage/lib/NetworkUsageData;)V
    .locals 8

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showing cycle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , start Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , end Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageListViewModel;

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageListViewModel;->selectedCycleFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->dataUsageListAppsController:Lcom/android/settings/datausage/DataUsageListAppsController;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v6, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    iget-wide v4, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/datausage/DataUsageListAppsController;->update(Ljava/lang/Integer;JJ)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/datausage/DataUsageList$updateApps$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/DataUsageList$updateApps$1;-><init>(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settings/datausage/lib/NetworkUsageData;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_0
    return-void
.end method
