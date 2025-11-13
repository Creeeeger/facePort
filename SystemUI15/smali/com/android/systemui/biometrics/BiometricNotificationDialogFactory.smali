.class public final Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method


# virtual methods
.method public final createReenrollDialog(ILcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;Landroid/hardware/biometrics/BiometricSourceType;Z)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1306b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1306b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1306cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1306ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1306cd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;ILandroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;)V

    const p0, 0x7f13024e

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    if-nez p4, :cond_3

    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f13024d

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    xor-int/lit8 p0, p4, 0x1

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public final createReenrollFailureDialog(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f1306b7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f1306d2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f130d5f

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method
