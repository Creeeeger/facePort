.class public final Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDidShowFailureDialog:Z

.field public final synthetic this$0:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

.field public final synthetic val$activityStarter:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->val$activityStarter:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    const-string p1, "BiometricNotificationDialogFactory"

    const-string p2, "Not launching enrollment.Failed to remove existing face(s)."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->mDidShowFailureDialog:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->mDidShowFailureDialog:Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollFailureDialog(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->mDidShowFailureDialog:Z

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.FACE_ENROLL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$2;->val$activityStarter:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
