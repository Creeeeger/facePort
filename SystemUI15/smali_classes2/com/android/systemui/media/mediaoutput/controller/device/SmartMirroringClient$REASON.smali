.class final enum Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

.field public static final enum UNKNOWN:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->UNKNOWN:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v3, "SCAN_P2P_BUSY"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v4, "SCAN_HDMI_CONNECTED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v5, "SCAN_HOTSPOT_ON"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v6, "SCAN_WIFI_RESTRICTED"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v7, "SCAN_DEX_ENABLED"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v8, "SCAN_TV2MOBILE_POPUP_PLAYER"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v9, "SCAN_SETTING_RESTRICTED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v10, "SCAN_P2P_CONNECTED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v11, "SCAN_WIFIDISPLAY_SINK_CONNECTED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v12, "SCAN_SECOND_SCREEN_CONNECTED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v13, "SCAN_HIGH_TEMPERATURE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v14, "SCAN_SECOND_SCREEN_ALREADY_RUNNING"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v15, "SCAN_AUDIO_MIRRORING_CONNECTED"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v13}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    const-string v13, "SCAN_SMART_VIEW_NONE_INITIATION"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v14}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;-><init>(Ljava/lang/String;II)V

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->$VALUES:[Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;
    .locals 1

    const-class v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->$VALUES:[Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->value:I

    return p0
.end method
