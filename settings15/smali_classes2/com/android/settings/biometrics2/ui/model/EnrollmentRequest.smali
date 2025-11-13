.class public final Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _suwExtras:Landroid/os/Bundle;

.field public final isAfterSuwOrSuwSuggestedAction:Z

.field public final isSkipFindSensor:Z

.field public final isSkipIntro:Z

.field public final isSuw:Z

.field public final theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-string v2, "isSetupFlow"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    if-eqz p3, :cond_3

    const-string p3, "deferredSetup"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, "portalSetup"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "isSuwSuggestedActionFlow"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isAfterSuwOrSuwSuggestedAction:Z

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_4

    invoke-static {p2, p3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_5

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_5
    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->_suwExtras:Landroid/os/Bundle;

    const-string p3, "skip_intro"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipIntro:Z

    const-string p3, "skip_find_sensor"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipFindSensor:Z

    invoke-static {p1, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->theme:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnrollmentRequest:{isSuw:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAfterSuwOrSuwSuggestedAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isAfterSuwOrSuwSuggestedAction:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
