.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;
.super Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;)V
    .locals 1

    const-string v0, "fingerprintViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteDialog(fingerprintViewModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
