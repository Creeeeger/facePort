.class public Lcom/android/settings/biometrics/BiometricHandoffActivity;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x766

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0083

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f14064f

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricHandoffActivity;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    const v0, 0x7f140650

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/BiometricHandoffActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/BiometricHandoffActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricHandoffActivity;)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const v3, 0x7f15045d

    const/4 v4, 0x5

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    iput-object v2, p0, Lcom/android/settings/biometrics/BiometricHandoffActivity;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricHandoffActivity;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
