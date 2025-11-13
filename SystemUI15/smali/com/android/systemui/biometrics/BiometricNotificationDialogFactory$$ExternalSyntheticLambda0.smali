.class public final synthetic Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/biometrics/BiometricSourceType;

.field public final synthetic f$3:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;ILandroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/biometrics/BiometricSourceType;

    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    iget p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const-string v2, "BiometricNotificationDialogFactory"

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-string p0, "Not launching enrollment. Face manager was null!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance v1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;)V

    invoke-virtual {v0, p2, v1}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_3

    const-string p0, "Not launching enrollment. Fingerprint manager was null!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$1;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;)V

    invoke-virtual {v0, p2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    :cond_5
    :goto_0
    return-void
.end method
