.class public final Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

.field public final _newDialogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _setResultFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _triggerRetryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final isSuw:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-boolean p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->isSuw:Z

    new-instance p1, Lkotlinx/atomicfu/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 p1, 0x0

    const/4 v0, 0x7

    invoke-static {p2, p2, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_newDialogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2, p2, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_triggerRetryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2, p2, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_setResultFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public final newDialog(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_newDialogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
