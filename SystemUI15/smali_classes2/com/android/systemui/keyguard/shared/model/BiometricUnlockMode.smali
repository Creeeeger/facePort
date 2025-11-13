.class public final enum Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode$Companion;

.field public static final enum DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final enum WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

.field public static final dismissesKeyguardModes:Ljava/util/Set;

.field public static final wakeAndUnlockModes:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v8, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "WAKE_AND_UNLOCK"

    const/4 v2, 0x1

    invoke-direct {v8, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v9, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "WAKE_AND_UNLOCK_PULSING"

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "SHOW_BOUNCER"

    const/4 v2, 0x3

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "ONLY_WAKE"

    const/4 v2, 0x4

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v10, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "UNLOCK_COLLAPSING"

    const/4 v2, 0x5

    invoke-direct {v10, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v11, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "DISMISS_BOUNCER"

    const/4 v2, 0x6

    invoke-direct {v11, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    new-instance v12, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    const-string v1, "WAKE_AND_UNLOCK_FROM_DREAM"

    const/4 v2, 0x7

    invoke-direct {v12, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    move-object v1, v8

    move-object v2, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode$Companion;

    filled-new-array {v8, v12, v9}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->wakeAndUnlockModes:Ljava/util/Set;

    filled-new-array {v8, v9, v10, v12, v11}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->dismissesKeyguardModes:Ljava/util/Set;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockMode;

    return-object v0
.end method
