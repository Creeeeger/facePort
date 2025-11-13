.class public final Lcom/android/settings/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFromSecNonBiometrics:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mShowCredentialTypeOnly:Z

.field public final mTargetUserId:I

.field public final mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;


# direct methods
.method public constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mShowCredentialTypeOnly:Z

    iput-boolean v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFromSecNonBiometrics:Z

    iput p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p4, p0, Lcom/android/settings/password/SetNewPasswordController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/SetNewPasswordController$Ui;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    return-void
.end method
