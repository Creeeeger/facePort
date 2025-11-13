.class public final Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;
.super Landroid/hardware/TriggerEventListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;->this$0:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;->this$0:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->deviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {p1}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->onDeviceLifted()V

    iget-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;->this$0:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;

    iget-object p1, p1, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->WAKE:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v1, "KeyguardLiftController"

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder$listener$1;->this$0:Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/binder/LiftToRunFaceAuthBinder;->isListening:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
