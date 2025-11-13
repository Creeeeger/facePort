.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarSettingsReceiver.java"


# instance fields
.field private mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    :cond_0
    const-string p1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    const-string p1, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
