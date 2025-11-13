.class public abstract Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/util/FingerprintOptionUtilKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final toFingerprintEnrollOptions(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "enroll_reason"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    if-eq p0, v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->setEnrollReason(I)Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
