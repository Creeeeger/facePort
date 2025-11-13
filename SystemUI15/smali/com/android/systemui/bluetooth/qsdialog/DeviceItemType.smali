.class public final enum Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

.field public static final enum ACTIVE_MEDIA_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

.field public static final enum AVAILABLE_MEDIA_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

.field public static final enum CONNECTED_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

.field public static final enum SAVED_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    const-string v1, "ACTIVE_MEDIA_BLUETOOTH_DEVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->ACTIVE_MEDIA_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    new-instance v1, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    const-string v2, "AUDIO_SHARING_MEDIA_BLUETOOTH_DEVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    const-string v3, "AVAILABLE_MEDIA_BLUETOOTH_DEVICE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->AVAILABLE_MEDIA_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    new-instance v3, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    const-string v4, "CONNECTED_BLUETOOTH_DEVICE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->CONNECTED_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    new-instance v4, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    const-string v5, "SAVED_BLUETOOTH_DEVICE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->SAVED_BLUETOOTH_DEVICE:Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->$VALUES:[Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;
    .locals 1

    const-class v0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;
    .locals 1

    sget-object v0, Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;->$VALUES:[Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bluetooth/qsdialog/DeviceItemType;

    return-object v0
.end method
