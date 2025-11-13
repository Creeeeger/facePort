.class final synthetic Lcom/android/settings/spa/network/NetworkCellularGroupProvider$allOfFlows$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function5;"
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
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    check-cast p5, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iput p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultVoiceSubId:I

    iput p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultSmsSubId:I

    iput p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultDataSubId:I

    const/4 p2, -0x1

    if-ne p4, p2, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-virtual {p5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p5

    iget v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultDataSubId:I

    if-eq p5, v0, :cond_1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_4
    :goto_2
    iput p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->nonDds:I

    iget p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultDataSubId:I

    const-string p1, "defaultDataSubId: "

    const-string p3, ", nonDds: "

    const-string p4, "NetworkCellularGroupProvider"

    invoke-static {p1, p3, p0, p2, p4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
