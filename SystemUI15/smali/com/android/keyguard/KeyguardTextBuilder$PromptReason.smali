.class final enum Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;


# instance fields
.field private final mPromptReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const/4 v1, 0x0

    const-string v2, "restart"

    const-string v3, "Restart"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const/4 v2, 0x1

    const-string/jumbo v3, "timeout"

    const-string v4, "Timeout"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const/4 v3, 0x2

    const-string v4, "nonstrongbiometrictimeout"

    const-string v5, "NonStrongBiometricTimeout"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const/4 v4, 0x3

    const-string v5, "deviceadmin"

    const-string v6, "DeviceAdmin"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    new-instance v4, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const/4 v5, 0x4

    const-string v6, "itpolicy"

    const-string v7, "ItPolicy"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

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

    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    return-object p0
.end method
