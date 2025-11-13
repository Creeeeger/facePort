.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    sget p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mScaleFactor:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updatePadding()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateColor()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateColor()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateColor()V

    return-void
.end method
