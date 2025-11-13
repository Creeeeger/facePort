.class public final Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "fingerprint_action_show_reenroll_dialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "face_action_show_reenroll_dialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p2, v1, p0, v0}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollDialog(ILcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;Landroid/hardware/biometrics/BiometricSourceType;Z)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mNotificationDialogFactory:Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/BiometricNotificationBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    const-string v3, "is_reenroll_forced"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, v1, v2, p0, p2}, Lcom/android/systemui/biometrics/BiometricNotificationDialogFactory;->createReenrollDialog(ILcom/android/systemui/biometrics/BiometricNotificationDialogFactory$ActivityStarter;Landroid/hardware/biometrics/BiometricSourceType;Z)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
