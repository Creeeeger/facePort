.class public final Lcom/android/systemui/power/SecPowerUI$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$2;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI$2;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget v1, v0, Lcom/android/systemui/power/SecPowerUI;->mCallState:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "runOverheatShutdownTask - Delay time = 10000"

    const-string v2, "PowerUI.Notification"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    const/16 v2, 0x2710

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$2;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWillOverheatShutdownWarning()V

    goto :goto_0

    :cond_0
    const-string v0, "PowerUI"

    const-string v1, "Battery overheat but on call, so delayed power off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$2;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsShutdownTaskDelayed:Z

    :goto_0
    return-void
.end method
