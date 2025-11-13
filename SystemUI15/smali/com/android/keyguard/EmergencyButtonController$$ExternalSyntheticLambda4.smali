.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p1}, Landroid/app/ActivityTaskManager;->stopSystemLockTaskMode()V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/shade/ShadeController;->collapseShade(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "102"

    const-string p1, "LSE1031"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
