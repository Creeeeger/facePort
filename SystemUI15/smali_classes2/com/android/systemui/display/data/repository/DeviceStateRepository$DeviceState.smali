.class public final enum Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

.field public static final enum CONCURRENT_DISPLAY:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

.field public static final enum FOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

.field public static final enum HALF_FOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

.field public static final enum REAR_DISPLAY:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

.field public static final enum UNFOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

.field public static final enum UNKNOWN:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    const-string v1, "FOLDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->FOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v1, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    const-string v2, "HALF_FOLDED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->HALF_FOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v2, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    const-string v3, "UNFOLDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->UNFOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    const-string v4, "REAR_DISPLAY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->REAR_DISPLAY:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v4, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    const-string v5, "CONCURRENT_DISPLAY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->CONCURRENT_DISPLAY:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v5, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->UNKNOWN:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->$VALUES:[Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;
    .locals 1

    const-class v0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;
    .locals 1

    sget-object v0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->$VALUES:[Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    return-object v0
.end method
