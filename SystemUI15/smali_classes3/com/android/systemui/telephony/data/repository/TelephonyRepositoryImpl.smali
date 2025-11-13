.class public final Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/telephony/data/repository/TelephonyRepository;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final callState:Lkotlinx/coroutines/flow/Flow;

.field public final hasTelephonyRadio:Z

.field public final isInCall:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final manager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/telephony/TelephonyListenerManager;Landroid/telecom/TelecomManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->manager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iput-object p5, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->telecomManager:Landroid/telecom/TelecomManager;

    sget-object p3, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p4, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1;-><init>(Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->callState:Lkotlinx/coroutines/flow/Flow;

    if-nez p5, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p4, p3}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p4, p3, p0}, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;)V

    :goto_0
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p4, p1, p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->isInCall:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.telephony"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->hasTelephonyRadio:Z

    return-void
.end method
