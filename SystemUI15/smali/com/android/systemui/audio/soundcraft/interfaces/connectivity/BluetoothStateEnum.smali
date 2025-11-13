.class public final enum Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum ADAPTIVE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum AMBIENT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum ANC:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum BATTERY_CRADLE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum BATTERY_LEFT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum BATTERY_RIGHT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum WEARING_L:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

.field public static final enum WEARING_R:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;


# instance fields
.field private final supportedTag:Lcom/samsung/android/bluetooth/SmepTag;

.field private final tag:I

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v6, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    sget-object v13, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_BATTERY:Lcom/samsung/android/bluetooth/SmepTag;

    const-string v5, "L"

    const-string v1, "BATTERY_LEFT"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v6, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->BATTERY_LEFT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v10

    const-string v12, "R"

    const-string v8, "BATTERY_RIGHT"

    const/4 v9, 0x1

    move-object v7, v1

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->BATTERY_RIGHT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BATTERY_CRADLE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v10

    const-string v12, "Cradle"

    const-string v8, "BATTERY_CRADLE"

    const/4 v9, 0x2

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->BATTERY_CRADLE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_ANC:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v17

    sget-object v18, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_ANC_LEVEL:Lcom/samsung/android/bluetooth/SmepTag;

    const-string v19, "ANC"

    const-string v15, "ANC"

    const/16 v16, 0x3

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v3, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ANC:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v4, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_AMBIENT:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v10

    sget-object v11, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_AMBIENT_LEVEL:Lcom/samsung/android/bluetooth/SmepTag;

    const-string v12, "Ambient"

    const-string v8, "AMBIENT"

    const/4 v9, 0x4

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->AMBIENT:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v5, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v16

    sget-object v17, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_RESPONSIVE_HEARING:Lcom/samsung/android/bluetooth/SmepTag;

    const-string v18, "Adaptive"

    const-string v14, "ADAPTIVE"

    const/4 v15, 0x5

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v5, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->ADAPTIVE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v13, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_L:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v10

    sget-object v18, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_SWITCH_AUDIO_PATH_BY_WEARING_STATE:Lcom/samsung/android/bluetooth/SmepTag;

    const-string/jumbo v12, "wearingL"

    const-string v8, "WEARING_L"

    const/4 v9, 0x6

    move-object v7, v13

    move-object/from16 v11, v18

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v13, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->WEARING_L:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    new-instance v7, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->STATE_WEARING_R:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v17

    const-string/jumbo v19, "wearingR"

    const-string v15, "WEARING_R"

    const/16 v16, 0x7

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;-><init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V

    sput-object v7, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->WEARING_R:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    move-object v0, v6

    move-object v6, v13

    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/samsung/android/bluetooth/SmepTag;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/bluetooth/SmepTag;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->tag:I

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->supportedTag:Lcom/samsung/android/bluetooth/SmepTag;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->title:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;
    .locals 1

    const-class v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;
    .locals 1

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->$VALUES:[Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;

    return-object v0
.end method


# virtual methods
.method public final getSupportedTag()Lcom/samsung/android/bluetooth/SmepTag;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->supportedTag:Lcom/samsung/android/bluetooth/SmepTag;

    return-object p0
.end method

.method public final getTag()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->tag:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->title:Ljava/lang/String;

    return-object p0
.end method
