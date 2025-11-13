.class Lcom/android/systemui/theme/ThemeOverlayController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result p2

    const-string v0, "ThemeOverlayController"

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "User setup not finished when new user event was received. Deferring... Managed profile? "

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "Updating overlays for user switch / profile added."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme(Z)V

    return-void
.end method
