.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

.field public final synthetic f$1:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;Landroid/hardware/SensorPrivacyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->lambda$onCreateView$0$FaceEnrollFragment(Landroid/hardware/SensorPrivacyManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
