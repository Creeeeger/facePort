.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    :cond_0
    const-string p1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureDefault()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    const-string p1, "com.android.internal.systemui.navbar.gestural"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsReceiver;->mModeController:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    const-string p1, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
