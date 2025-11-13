.class final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    check-cast p2, Lcom/android/settingslib/SignalIcon$IconGroup;

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->L$2:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$activityIcon$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    instance-of v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    if-nez v1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_1
    if-eqz v0, :cond_5

    iget-object p0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->activityIcons:[I

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;->hasActivityOut:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;->hasActivityIn:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    aget p0, p0, p1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    aget p0, p0, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x2

    aget p0, p0, p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    aget p0, p0, p1

    :goto_0
    new-instance p1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    return-object p1

    :cond_5
    return-object v2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
