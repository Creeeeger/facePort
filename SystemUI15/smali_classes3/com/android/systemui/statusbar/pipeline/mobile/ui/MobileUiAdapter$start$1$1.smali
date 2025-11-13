.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logUiAdapterSubIdsSentToIconController$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$logUiAdapterSubIdsSentToIconController$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "MobileViewLogger"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->lastValue:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x1040edb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    move-result-object v3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeUnusedIconsInSlot(Ljava/lang/String;Ljava/util/List;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v6, 0x1040edc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    move-result-object v2

    sget-boolean v6, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeUnusedIconsInSlot(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    sget-boolean v8, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    const/4 v9, 0x3

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    invoke-virtual {v10, v8, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrderByIds(ILjava/util/List;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v11, 0x7fffffff

    if-ne v10, v11, :cond_2

    const/4 v8, 0x0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setNewMobileIconSubIds - subId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", mobileslotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "StatusBarIconController"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v10

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "add NewMobileIconSubIds - subId: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v10, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->Companion:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v10, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v9, v10, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->type:I

    iput v7, v10, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    if-nez v8, :cond_4

    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v7, v5

    :goto_2
    invoke-virtual {v0, v7, v10}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->Companion:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v8, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->type:I

    iput v7, v8, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto/16 :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter$start$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
