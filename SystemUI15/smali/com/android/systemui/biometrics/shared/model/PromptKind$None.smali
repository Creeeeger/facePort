.class public final Lcom/android/systemui/biometrics/shared/model/PromptKind$None;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/shared/model/PromptKind;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$None;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$None;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$None;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
