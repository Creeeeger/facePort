.class public final synthetic Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget v0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Biometrics Setup Result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuwBiometricsSetupLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetupActivity;->mRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
