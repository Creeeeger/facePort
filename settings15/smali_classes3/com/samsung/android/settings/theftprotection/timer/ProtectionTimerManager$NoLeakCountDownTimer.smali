.class public final Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mManager:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;JJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "ProtectionTimerManager"

    const-string v1, "CountDownTimer onFinish()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->-$$Nest$mupdateTime(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->mTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    if-eqz p0, :cond_0

    sput-wide p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerData;->sRemainMillis:J

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->-$$Nest$mupdateTime(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;)V

    :cond_0
    return-void
.end method
