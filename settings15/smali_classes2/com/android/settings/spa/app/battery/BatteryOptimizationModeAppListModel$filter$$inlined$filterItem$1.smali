.class public final Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $option$inlined:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    iput p3, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;->$option$inlined:I

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1$2;

    iget-object v1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    iget v2, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;->$option$inlined:I

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;I)V

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
