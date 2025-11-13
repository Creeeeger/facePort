.class public final Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/shared/model/PromptKind;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x29551747

    return p0
.end method

.method public final isBiometric()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    return p0
.end method

.method public final isCredential()Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$DefaultImpls;->isCredential(Lcom/android/systemui/biometrics/shared/model/PromptKind;)Z

    move-result p0

    return p0
.end method

.method public final isOnePaneNoSensorLandscapeBiometric()Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$DefaultImpls;->isOnePaneNoSensorLandscapeBiometric(Lcom/android/systemui/biometrics/shared/model/PromptKind;)Z

    move-result p0

    return p0
.end method

.method public final isTwoPaneLandscapeBiometric()Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$DefaultImpls;->isTwoPaneLandscapeBiometric(Lcom/android/systemui/biometrics/shared/model/PromptKind;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Pin"

    return-object p0
.end method
