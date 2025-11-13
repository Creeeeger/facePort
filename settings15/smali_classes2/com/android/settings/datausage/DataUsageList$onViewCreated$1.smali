.class final synthetic Lcom/android/settings/datausage/DataUsageList$onViewCreated$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function2;"
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
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/datausage/DataUsageList;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->subId:I

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->dataUsageListHeaderController:Lcom/android/settings/datausage/DataUsageListHeaderController;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/settings/datausage/DataUsageListHeaderController;->isRoaming:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object p2, v0, Lcom/android/settings/datausage/DataUsageListHeaderController;->configureButton:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageListHeaderController;->configureButton:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->chartDataUsagePreferenceController:Lcom/android/settings/datausage/ChartDataUsagePreferenceController;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/ChartDataUsagePreferenceController;->setBillingCycleModifiable(Z)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
