.class public final enum Lcom/android/systemui/keyguard/shared/model/DevicePosture;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/model/DevicePosture;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/DevicePosture;

.field public static final enum CLOSED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

.field public static final Companion:Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;

.field public static final enum FLIPPED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

.field public static final enum HALF_OPENED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

.field public static final enum OPENED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

.field public static final enum UNKNOWN:Lcom/android/systemui/keyguard/shared/model/DevicePosture;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/DevicePosture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->UNKNOWN:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    const-string v2, "CLOSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/DevicePosture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->CLOSED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    const-string v3, "HALF_OPENED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/shared/model/DevicePosture;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->HALF_OPENED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    const-string v4, "OPENED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/shared/model/DevicePosture;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->OPENED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    new-instance v4, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    const-string v5, "FLIPPED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/shared/model/DevicePosture;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->FLIPPED:Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->Companion:Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/DevicePosture;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/DevicePosture;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    return-object v0
.end method
