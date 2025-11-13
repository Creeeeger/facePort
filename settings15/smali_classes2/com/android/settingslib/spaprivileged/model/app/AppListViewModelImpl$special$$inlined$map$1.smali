.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;I)V
    .locals 0

    iput p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
