.class public final Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;
.super Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/settings/biometrics/fingerprint2/data/model/EnrollStageModel$LeftEdge;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x75ba9c84

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LeftEdge"

    return-object p0
.end method
