.class public final enum Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum AudioMirroring:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum AudioMirroringGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum Bluetooth:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum BluetoothGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum BuiltIn:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum ChromeCast:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum ChromeCastGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum Dex:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum Disconnected:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum None:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum Remote:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum SmartMirroring:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

.field public static final enum SmartView:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->None:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v2, "BuiltIn"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->BuiltIn:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v3, "Bluetooth"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Bluetooth:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v4, "Disconnected"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Disconnected:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v5, "ChromeCast"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCast:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v6, "AudioMirroring"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->AudioMirroring:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v6, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v7, "MusicShare"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->MusicShare:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v7, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v8, "SmartView"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->SmartView:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v8, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v9, "Dex"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Dex:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v9, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v10, "SmartMirroring"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->SmartMirroring:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v10, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v11, "BluetoothGroup"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->BluetoothGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v11, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v12, "ChromeCastGroup"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->ChromeCastGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v12, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v13, "AudioMirroringGroup"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->AudioMirroringGroup:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    new-instance v13, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    const-string v14, "Remote"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->Remote:Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    filled-new-array/range {v0 .. v13}, [Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->$VALUES:[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 1

    const-class v0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;->$VALUES:[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    return-object v0
.end method
