.class public final enum Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

.field public static final enum ANY_FACE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

.field public static final enum ANY_FINGERPRINT:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

.field public static final enum NONE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

.field public static final enum UNDER_DISPLAY_FINGERPRINT:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->NONE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    new-instance v1, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    const-string v2, "ANY_FACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->ANY_FACE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    new-instance v2, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    const-string v3, "ANY_FINGERPRINT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->ANY_FINGERPRINT:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    new-instance v3, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    const-string v4, "UNDER_DISPLAY_FINGERPRINT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->UNDER_DISPLAY_FINGERPRINT:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->$VALUES:[Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;
    .locals 1

    const-class v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->$VALUES:[Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->intValue:I

    return p0
.end method
