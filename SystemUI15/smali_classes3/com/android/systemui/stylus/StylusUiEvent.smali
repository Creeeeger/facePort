.class public final enum Lcom/android/systemui/stylus/StylusUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/stylus/StylusUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum BLUETOOTH_STYLUS_CONNECTED:Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum BLUETOOTH_STYLUS_DISCONNECTED:Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum STYLUS_LOW_BATTERY_NOTIFICATION_CLICKED:Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum STYLUS_LOW_BATTERY_NOTIFICATION_DISMISSED:Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN:Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum USI_STYLUS_BATTERY_PRESENCE_FIRST_DETECTED:Lcom/android/systemui/stylus/StylusUiEvent;

.field public static final enum USI_STYLUS_BATTERY_PRESENCE_REMOVED:Lcom/android/systemui/stylus/StylusUiEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v1, 0x512

    const-string v2, "STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN:Lcom/android/systemui/stylus/StylusUiEvent;

    new-instance v1, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v2, 0x513

    const-string v3, "STYLUS_LOW_BATTERY_NOTIFICATION_CLICKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_CLICKED:Lcom/android/systemui/stylus/StylusUiEvent;

    new-instance v2, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v3, 0x514

    const-string v4, "STYLUS_LOW_BATTERY_NOTIFICATION_DISMISSED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_DISMISSED:Lcom/android/systemui/stylus/StylusUiEvent;

    new-instance v3, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v4, 0x516

    const-string v5, "STYLUS_STARTED_CHARGING"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v5, 0x517

    const-string v6, "STYLUS_STOPPED_CHARGING"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v6, 0x518

    const-string v7, "BLUETOOTH_STYLUS_CONNECTED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/stylus/StylusUiEvent;->BLUETOOTH_STYLUS_CONNECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    new-instance v6, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v7, 0x519

    const-string v8, "BLUETOOTH_STYLUS_DISCONNECTED"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/stylus/StylusUiEvent;->BLUETOOTH_STYLUS_DISCONNECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    new-instance v7, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v8, 0x51a

    const-string v9, "USI_STYLUS_BATTERY_PRESENCE_FIRST_DETECTED"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/stylus/StylusUiEvent;->USI_STYLUS_BATTERY_PRESENCE_FIRST_DETECTED:Lcom/android/systemui/stylus/StylusUiEvent;

    new-instance v8, Lcom/android/systemui/stylus/StylusUiEvent;

    const/16 v9, 0x51b

    const-string v10, "USI_STYLUS_BATTERY_PRESENCE_REMOVED"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/stylus/StylusUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/stylus/StylusUiEvent;->USI_STYLUS_BATTERY_PRESENCE_REMOVED:Lcom/android/systemui/stylus/StylusUiEvent;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/stylus/StylusUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/stylus/StylusUiEvent;->$VALUES:[Lcom/android/systemui/stylus/StylusUiEvent;

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

    iput p3, p0, Lcom/android/systemui/stylus/StylusUiEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/stylus/StylusUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/stylus/StylusUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stylus/StylusUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/stylus/StylusUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/stylus/StylusUiEvent;->$VALUES:[Lcom/android/systemui/stylus/StylusUiEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/stylus/StylusUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/stylus/StylusUiEvent;->_id:I

    return p0
.end method
