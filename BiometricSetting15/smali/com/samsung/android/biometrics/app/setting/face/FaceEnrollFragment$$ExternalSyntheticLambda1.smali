.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

.field public final synthetic f$1:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;Landroid/hardware/SensorPrivacyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorPrivacyManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorPrivacyManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, p2, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startEnrollment()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->play()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
