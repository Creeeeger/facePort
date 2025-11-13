.class public final Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final asyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final bouncerShowing:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final deviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final isListening:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final listenForPickupSensor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final listener:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;

.field public final onAwakeKeyguard:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public pickupSensor:Landroid/hardware/Sensor;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final stoppedListening:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/pm/PackageManager;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->asyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p4, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->deviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->isListening:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p2, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$special$$inlined$filterNot$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$special$$inlined$filterNot$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$special$$inlined$map$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p2, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardVisible:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance p3, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$onAwakeKeyguard$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$onAwakeKeyguard$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p8, p9, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isInteractive:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p5, p8, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p2, p6, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$bouncerShowing$1;

    invoke-direct {p3, p4}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$bouncerShowing$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p7, p7, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p6, p2, p7, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listenForPickupSensor$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listenForPickupSensor$1;-><init>(Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p6, p5, p2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->listenForPickupSensor:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance p1, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;-><init>(Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;)V

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->listener:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "LiftToRunFaceAuthBinder:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->pickupSensor:Landroid/hardware/Sensor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  pickupSensor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->isListening:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p2, "  isListening: "

    invoke-static {p2, p0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->packageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->asyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->pickupSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$init$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$init$1;-><init>(Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
