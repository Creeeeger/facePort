.class public final Lcom/android/systemui/biometrics/BiometricNotificationService$3;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$3;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentsChanged(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$3;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x1

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string p3, "BiometricNotificationService"

    invoke-virtual {p0, p3, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method
