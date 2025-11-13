.class Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "flashlight_enabled"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    :cond_0
    const-string p2, "onUserChanged user: "

    const-string v0, ", enabled: "

    const-string v2, "SecFlashlightController"

    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    return-void
.end method
