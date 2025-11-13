.class public final enum Lcom/android/systemui/qs/bar/BarType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/bar/BarType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BRIGHTNESS_VOLUME:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum DATAUSAGE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum QUICK_CONTROL:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum SMARTVIEW_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum VOLUME:Lcom/android/systemui/qs/bar/BarType;


# instance fields
.field private final mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/qs/bar/BarItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollapsed:Z

.field private final mExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v6, Lcom/android/systemui/qs/bar/BarType;

    const/4 v2, 0x0

    const-class v3, Lcom/android/systemui/qs/bar/BarItemImpl;

    const-string v1, "DUMMY"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    new-instance v1, Lcom/android/systemui/qs/bar/BarType;

    const/4 v9, 0x1

    const-class v10, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    const-string v8, "VIDEO_CALL_MIC_MODE"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v1, Lcom/android/systemui/qs/bar/BarType;->VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

    new-instance v2, Lcom/android/systemui/qs/bar/BarType;

    const/4 v15, 0x2

    const-class v16, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    const-string v14, "TOP_LARGE_TILE"

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v2, Lcom/android/systemui/qs/bar/BarType;->TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    new-instance v3, Lcom/android/systemui/qs/bar/BarType;

    const/4 v9, 0x3

    const-class v10, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    const-string v8, "TILE_CHUNK_LAYOUT"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v3, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    new-instance v4, Lcom/android/systemui/qs/bar/BarType;

    const/4 v15, 0x4

    const-class v16, Lcom/android/systemui/qs/bar/BrightnessBar;

    const-string v14, "BRIGHTNESS"

    const/16 v18, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v4, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

    new-instance v5, Lcom/android/systemui/qs/bar/BarType;

    const/4 v9, 0x5

    const-class v10, Lcom/android/systemui/qs/bar/VolumeBar;

    const-string v8, "VOLUME"

    const/4 v12, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v5, Lcom/android/systemui/qs/bar/BarType;->VOLUME:Lcom/android/systemui/qs/bar/BarType;

    new-instance v7, Lcom/android/systemui/qs/bar/BarType;

    const/4 v15, 0x6

    const-class v16, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    const-string v14, "BRIGHTNESS_VOLUME"

    const/16 v18, 0x1

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v7, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_VOLUME:Lcom/android/systemui/qs/bar/BarType;

    new-instance v14, Lcom/android/systemui/qs/bar/BarType;

    const/4 v10, 0x7

    const-class v11, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const-string v9, "QS_MEDIA_PLAYER"

    const/4 v13, 0x1

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v14, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    new-instance v8, Lcom/android/systemui/qs/bar/BarType;

    const/16 v17, 0x8

    const-class v18, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    const-string v16, "MULTI_SIM_PREFERRED_SLOT"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v8, Lcom/android/systemui/qs/bar/BarType;->MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

    new-instance v9, Lcom/android/systemui/qs/bar/BarType;

    const/16 v23, 0x9

    const-class v24, Lcom/android/systemui/qs/bar/QuickControlBar;

    const-string v22, "QUICK_CONTROL"

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v9, Lcom/android/systemui/qs/bar/BarType;->QUICK_CONTROL:Lcom/android/systemui/qs/bar/BarType;

    new-instance v10, Lcom/android/systemui/qs/bar/BarType;

    const/16 v17, 0xa

    const-class v18, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    const-string v16, "BRIGHTNESS_MEDIA_DEVICES"

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v10, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    new-instance v11, Lcom/android/systemui/qs/bar/BarType;

    const/16 v23, 0xb

    const-class v24, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    const-string v22, "BOTTOM_LARGE_TILE"

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v11, Lcom/android/systemui/qs/bar/BarType;->BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    new-instance v12, Lcom/android/systemui/qs/bar/BarType;

    const/16 v17, 0xc

    const-class v18, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    const-string v16, "SMARTVIEW_LARGE_TILE"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v12, Lcom/android/systemui/qs/bar/BarType;->SMARTVIEW_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    new-instance v13, Lcom/android/systemui/qs/bar/BarType;

    const/16 v23, 0xd

    const-class v24, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    const-string v22, "MEDIA_DEVICES"

    const/16 v26, 0x0

    move-object/from16 v21, v13

    invoke-direct/range {v21 .. v26}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v13, Lcom/android/systemui/qs/bar/BarType;->MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    new-instance v21, Lcom/android/systemui/qs/bar/BarType;

    const/16 v17, 0xe

    const-class v18, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    const-string v16, "SECURITY_FOOTER"

    move-object/from16 v15, v21

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v21, Lcom/android/systemui/qs/bar/BarType;->SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

    new-instance v15, Lcom/android/systemui/qs/bar/BarType;

    sget-boolean v27, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    const/16 v24, 0xf

    const-class v25, Lcom/android/systemui/qs/bar/DataUsageBar;

    const-string v23, "DATAUSAGE"

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    sput-object v15, Lcom/android/systemui/qs/bar/BarType;->DATAUSAGE:Lcom/android/systemui/qs/bar/BarType;

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    move-object/from16 v14, v21

    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/qs/bar/BarType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/BarType;->$VALUES:[Lcom/android/systemui/qs/bar/BarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/qs/bar/BarItemImpl;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarType;->mCls:Ljava/lang/Class;

    iput-boolean p4, p0, Lcom/android/systemui/qs/bar/BarType;->mCollapsed:Z

    iput-boolean p5, p0, Lcom/android/systemui/qs/bar/BarType;->mExpanded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarType;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/bar/BarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/BarType;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/bar/BarType;->$VALUES:[Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/bar/BarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/bar/BarType;

    return-object v0
.end method


# virtual methods
.method public final getCls()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarType;->mCls:Ljava/lang/Class;

    return-object p0
.end method

.method public final hasCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarType;->mCollapsed:Z

    return p0
.end method

.method public final hasExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarType;->mExpanded:Z

    return p0
.end method
