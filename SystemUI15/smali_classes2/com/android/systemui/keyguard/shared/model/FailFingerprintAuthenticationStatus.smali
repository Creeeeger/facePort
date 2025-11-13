.class public final Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;
.super Lcom/android/systemui/keyguard/shared/model/FingerprintAuthenticationStatus;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;->INSTANCE:Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/shared/model/FingerprintAuthenticationStatus;-><init>(Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/keyguard/shared/model/FailFingerprintAuthenticationStatus;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x5a63ef95

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FailFingerprintAuthenticationStatus"

    return-object p0
.end method
