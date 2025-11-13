.class public final Lcom/android/systemui/theme/ThemeOverlayController$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-wide v0, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mContrast:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/systemui/theme/ThemeOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wallpapertheme_state"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.PROFILE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "ThemeOverlayController"

    if-eqz p1, :cond_3

    const-string p1, "android.intent.extra.USER"

    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v2, v2, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v3, v3, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "User setup not finished when "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was received. Deferring... Managed profile? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->isPrivateProfile(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeferredThemeEvaluation:Z

    const-string p0, "Deferring theme for private profile till user setup is complete"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "Updating overlays for user switch / profile added."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    const-string p0, "Wallpaper changed, allowing color events again"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Wallpaper changed from background app, keep deferring color events. Accepting: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$4;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-boolean p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mAcceptColorEvents:Z

    invoke-static {p1, p0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
