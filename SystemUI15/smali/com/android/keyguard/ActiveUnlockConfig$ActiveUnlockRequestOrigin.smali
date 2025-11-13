.class public final enum Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

.field public static final enum ASSISTANT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

.field public static final enum BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

.field public static final enum UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

.field public static final enum UNLOCK_INTENT_LEGACY:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

.field public static final enum WAKE:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v1, "WAKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->WAKE:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    new-instance v1, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v2, "UNLOCK_INTENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    new-instance v2, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v3, "BIOMETRIC_FAIL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    new-instance v3, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v4, "ASSISTANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->ASSISTANT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    new-instance v4, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v5, "UNLOCK_INTENT_LEGACY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT_LEGACY:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->$VALUES:[Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;
    .locals 1

    const-class v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;
    .locals 1

    sget-object v0, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->$VALUES:[Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    return-object v0
.end method
