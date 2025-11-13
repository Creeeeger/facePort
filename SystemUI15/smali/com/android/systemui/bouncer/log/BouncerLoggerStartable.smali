.class public final Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

.field public final bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

.field public final faceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final fingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/log/BouncerLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;->biometricSettingsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryBiometricSettingsInteractor;

    iput-object p3, p0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;->faceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    iput-object p4, p0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;->fingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    iput-object p5, p0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;->bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$1;-><init>(Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$2;-><init>(Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$3;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$3;-><init>(Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$4;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$4;-><init>(Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$5;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bouncer/log/BouncerLoggerStartable$start$5;-><init>(Lcom/android/systemui/bouncer/log/BouncerLoggerStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
