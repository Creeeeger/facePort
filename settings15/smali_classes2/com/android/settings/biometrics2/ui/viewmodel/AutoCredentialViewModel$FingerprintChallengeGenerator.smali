.class public final Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public callback:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;

.field public final fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    return-void
.end method
