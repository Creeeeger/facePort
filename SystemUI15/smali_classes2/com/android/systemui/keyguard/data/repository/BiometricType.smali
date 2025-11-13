.class public final enum Lcom/android/systemui/keyguard/data/repository/BiometricType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/data/repository/BiometricType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/data/repository/BiometricType;

.field public static final enum FACE:Lcom/android/systemui/keyguard/data/repository/BiometricType;

.field public static final enum REAR_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

.field public static final enum SIDE_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

.field public static final enum UNDER_DISPLAY_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

.field public static final enum UNKNOWN:Lcom/android/systemui/keyguard/data/repository/BiometricType;


# instance fields
.field private final isFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/keyguard/data/repository/BiometricType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->UNKNOWN:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    const-string v3, "REAR_FINGERPRINT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/systemui/keyguard/data/repository/BiometricType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/systemui/keyguard/data/repository/BiometricType;->REAR_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    new-instance v3, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    const-string v5, "UNDER_DISPLAY_FINGERPRINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/keyguard/data/repository/BiometricType;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/android/systemui/keyguard/data/repository/BiometricType;->UNDER_DISPLAY_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    new-instance v5, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    const-string v6, "SIDE_FINGERPRINT"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v4}, Lcom/android/systemui/keyguard/data/repository/BiometricType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/android/systemui/keyguard/data/repository/BiometricType;->SIDE_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    new-instance v4, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    const-string v6, "FACE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v2}, Lcom/android/systemui/keyguard/data/repository/BiometricType;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/android/systemui/keyguard/data/repository/BiometricType;->FACE:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    filled-new-array {v0, v1, v3, v5, v4}, [Lcom/android/systemui/keyguard/data/repository/BiometricType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->$VALUES:[Lcom/android/systemui/keyguard/data/repository/BiometricType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->isFingerprint:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/data/repository/BiometricType;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/BiometricType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/data/repository/BiometricType;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->$VALUES:[Lcom/android/systemui/keyguard/data/repository/BiometricType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/data/repository/BiometricType;

    return-object v0
.end method


# virtual methods
.method public final isFingerprint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->isFingerprint:Z

    return p0
.end method
