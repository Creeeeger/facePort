.class public final Lcom/android/settings/biometrics2/data/repository/FingerprintRepository$1;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository$1;->this$0:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository$1;->this$0:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iput-object p1, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mSensorPropertiesCache:Ljava/util/List;

    return-void
.end method
