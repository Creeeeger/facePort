.class public final Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsClickedLearnMore:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.biometrics.BiometricsCommonSecurityNoticeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLeanMoreResult:Landroidx/activity/result/ActivityResultRegistry$2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
