.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    check-cast p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->Z$1:Z

    iput-object p3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->Z$1:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->simpleLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->connected:Z

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataConnected:Z

    iput-object v1, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iget-object p1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    iput p1, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->networkType:I

    iget-object p1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    iput p1, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->overrideNetworkType:I

    iget-object p1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result p1

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->fivegavailable:Z

    iget-object p1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->simCard:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$anyChanges$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->simpleLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
