.class final enum Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;


# instance fields
.field private final mBiometricSecurityLevel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const/4 v1, 0x0

    const-string/jumbo v2, "strong"

    const-string v3, "Strong"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const/4 v2, 0x1

    const-string/jumbo v3, "weak"

    const-string v4, "Weak"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const/4 v3, 0x2

    const-string v4, "idletimeout"

    const-string v5, "IdleTimeout"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    filled-new-array {v0, v1, v2}, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

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

    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->mBiometricSecurityLevel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->mBiometricSecurityLevel:Ljava/lang/String;

    return-object p0
.end method
