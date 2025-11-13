.class final Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;-><init>(Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->Z$1:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->Z$1:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1;->this$0:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/domain/interactor/DeviceBasedSatelliteInteractor$areAllConnectionsOutOfService$1$2;

    const/4 v3, 0x0

    const-string v4, "DeviceBasedSatelliteInteractor"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v0, v2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
