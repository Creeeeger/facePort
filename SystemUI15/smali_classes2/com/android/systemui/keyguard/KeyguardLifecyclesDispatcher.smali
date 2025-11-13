.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;-><init>(Landroid/os/Looper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    return-void
.end method


# virtual methods
.method public final dispatch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mHandler:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$KeyguardLifecycleHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->generateWakefulnessOrScreenStateByLastMsg(II)V

    :cond_1
    return-void
.end method

.method public final generateWakefulnessOrScreenStateByLastMsg(II)V
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->setLifecycle(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->setLifecycle(II)V

    :goto_0
    return-void
.end method
