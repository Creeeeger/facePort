.class public final Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final enrollableStatus:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

.field public final mHasScrollToBottom:Z


# direct methods
.method public constructor <init>(ZLcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;)V
    .locals 1

    const-string v0, "enrollableStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->mHasScrollToBottom:Z

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->enrollableStatus:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FingerprintEnrollIntroStatus@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{scrollToBottom:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->mHasScrollToBottom:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enrollableStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->enrollableStatus:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
