.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getMODE_CLEAR$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMODE_FLAG_ENABLED$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMODE_FLAG_FRAME_COMMIT$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMODE_FLAG_FRAME_REQUEST$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMODE_FLAG_STARTED_DISPLAY_ON$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN$annotations()V
    .locals 0

    return-void
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "CLEAR"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlags:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    and-int v5, v4, p0

    if-ne v5, v4, :cond_2

    if-eqz v3, :cond_1

    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlagsStr:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
