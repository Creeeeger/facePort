.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    return-void
.end method
