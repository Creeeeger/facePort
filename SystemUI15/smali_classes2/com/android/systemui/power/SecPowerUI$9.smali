.class public final Lcom/android/systemui/power/SecPowerUI$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$9;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$9;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput-wide v0, p0, Lcom/android/systemui/power/SecPowerUI;->mScreenOffTime:J

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissUnintentionallyLcdOnNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissUnintentionalLcdOnWindow()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$9;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/SecPowerUI;->mScreenOffTime:J

    return-void
.end method
