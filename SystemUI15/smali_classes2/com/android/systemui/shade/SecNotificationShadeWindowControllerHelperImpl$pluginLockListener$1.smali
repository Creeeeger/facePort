.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenOrientationChangeRequired(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->access$setScreenOrientation(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V

    return-void
.end method

.method public final onScreenTimeoutChanged(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScreenTimeoutChanged timeOut : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iput-wide p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockTimeOutValue:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->updateUserActivityTimeout(Z)V

    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onViewModeChanged mode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_BLUR:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    if-eqz v0, :cond_1

    const-string v2, "prepareToApplyBlurDimEffect"

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x3e000000    # 0.125f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_1

    :cond_1
    const-string v2, "prepareToRemoveBlurDimEffect"

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateBiometricRecognition(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateOverlayUserTimeout(Z)V

    return-void
.end method

.method public final onViewModePageChanged(Landroid/app/SemWallpaperColors;)V
    .locals 2

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x100

    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p1

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, -0x11

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public final updateBiometricRecognition(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDlsBiometricMode(Z)V

    return-void
.end method

.method public final updateOverlayUserTimeout(Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->userScreenTimeOut:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final updateWindowSecureState(Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->securedWindow:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method
