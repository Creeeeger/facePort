.class final enum Lcom/android/keyguard/KeyguardTextBuilder$Security;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$Security;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Security;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

.field public static final enum Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;


# instance fields
.field private final mSecurity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const/4 v1, 0x0

    const-string v2, "pin"

    const-string v3, "PIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const/4 v2, 0x1

    const-string v3, "pattern"

    const-string v4, "Pattern"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    new-instance v2, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const/4 v3, 0x2

    const-string v4, "password"

    const-string v5, "Password"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/keyguard/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    filled-new-array {v0, v1, v2}, [Lcom/android/keyguard/KeyguardTextBuilder$Security;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Security;

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

    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->mSecurity:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$Security;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$Security;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$Security;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$Security;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->mSecurity:Ljava/lang/String;

    return-object p0
.end method
