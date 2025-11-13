.class final enum Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$Biometric;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;


# instance fields
.field private final mBiometric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const/4 v1, 0x0

    const-string v2, "fingerprint"

    const-string v3, "Fingerprint"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const/4 v2, 0x1

    const-string v3, "face"

    const-string v4, "Face"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const/4 v3, 0x2

    const-string v4, "multi"

    const-string v5, "MultiBiometrics"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const/4 v4, 0x3

    const-string v5, "facefingerprint"

    const-string v6, "FaceFingerprint"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-object p0
.end method
