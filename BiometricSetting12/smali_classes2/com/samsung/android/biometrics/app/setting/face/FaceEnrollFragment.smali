.class public Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;
.super Landroid/app/Fragment;
.source "FaceEnrollFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_FaceEnrollFragment"


# instance fields
.field private mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

.field private mEnrollView:Landroid/view/View;

.field private mFacePreview:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$FaceEnrollFragment(Landroid/hardware/SensorPrivacyManager;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startEnrollment(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$1$FaceEnrollFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$FaceEnrollFragment()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "sensor_privacy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "BSS_FaceEnrollFragment"

    const-string v4, "Camera access is blocked."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10004d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f10004c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f10004b

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;Landroid/hardware/SensorPrivacyManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startEnrollment(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BSS_FaceEnrollFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string v0, "BSS_FaceEnrollFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x7f0d0026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mFacePreview:Landroid/view/View;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;)V

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x7d0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->initFaceEnroll(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mEnrollView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method
