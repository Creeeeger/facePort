.class public final enum Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_ALARM_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_ANC_POPUP_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_CALLING:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_NORMAL:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_GONE:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_LIVE_CAPTION_TOGGLE_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_LIVE_CAPTION_TOGGLE_GONE:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_LIVE_CAPTION_TOGGLE_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_MEDIA_OUTPUT_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_MUSIC_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_NOTIFICATION_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_RING_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_SOUND_SETTINGS_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_SPATIAL_AUDIO_POP_UP_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_SPATIAL_AUDIO_TOGGLE_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

.field public static final enum VOLUME_PANEL_VOICE_CALL_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;


# instance fields
.field private final metricId:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v1, 0x662

    const-string v2, "VOLUME_PANEL_SHOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v2, 0x663

    const-string v3, "VOLUME_PANEL_GONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_GONE:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v2, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v3, 0x664

    const-string v4, "VOLUME_PANEL_MEDIA_OUTPUT_CLICKED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_MEDIA_OUTPUT_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v3, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v4, 0x690

    const-string v5, "VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_NORMAL"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_NORMAL:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v4, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v5, 0x691

    const-string v6, "VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_CALLING"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_CALLING:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v6, 0x666

    const-string v7, "VOLUME_PANEL_SOUND_SETTINGS_CLICKED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_SOUND_SETTINGS_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v6, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v7, 0x667

    const-string v8, "VOLUME_PANEL_MUSIC_SLIDER_TOUCHED"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_MUSIC_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v7, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v8, 0x668

    const-string v9, "VOLUME_PANEL_VOICE_CALL_SLIDER_TOUCHED"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_VOICE_CALL_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v8, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v9, 0x669

    const-string v10, "VOLUME_PANEL_RING_SLIDER_TOUCHED"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_RING_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v9, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v10, 0x66a

    const-string v11, "VOLUME_PANEL_NOTIFICATION_SLIDER_TOUCHED"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_NOTIFICATION_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v10, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v11, 0x66b

    const-string v12, "VOLUME_PANEL_ALARM_SLIDER_TOUCHED"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_ALARM_SLIDER_TOUCHED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v11, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x66c

    const-string v13, "VOLUME_PANEL_LIVE_CAPTION_TOGGLE_SHOWN"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_LIVE_CAPTION_TOGGLE_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v12, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v13, 0x66d

    const-string v14, "VOLUME_PANEL_LIVE_CAPTION_TOGGLE_GONE"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_LIVE_CAPTION_TOGGLE_GONE:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v13, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v14, 0x66e

    const-string v15, "VOLUME_PANEL_LIVE_CAPTION_TOGGLE_CLICKED"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_LIVE_CAPTION_TOGGLE_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v14, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x66f

    const-string v15, "VOLUME_PANEL_SPATIAL_AUDIO_BUTTON_SHOWN"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x670

    const-string v13, "VOLUME_PANEL_SPATIAL_AUDIO_BUTTON_GONE"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x671

    const-string v13, "VOLUME_PANEL_SPATIAL_AUDIO_POP_UP_SHOWN"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_SPATIAL_AUDIO_POP_UP_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v15, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x672

    const-string v13, "VOLUME_PANEL_SPATIAL_AUDIO_TOGGLE_CLICKED"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_SPATIAL_AUDIO_TOGGLE_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v14, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x673

    const-string v13, "VOLUME_PANEL_ANC_BUTTON_SHOWN"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x674

    const-string v13, "VOLUME_PANEL_ANC_BUTTON_GONE"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x675

    const-string v13, "VOLUME_PANEL_ANC_POPUP_SHOWN"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_ANC_POPUP_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    new-instance v15, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    const/16 v12, 0x676

    const-string v13, "VOLUME_PANEL_ANC_TOGGLE_CLICKED"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;-><init>(Ljava/lang/String;II)V

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v15

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    filled-new-array/range {v0 .. v21}, [Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->$VALUES:[Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput p3, p0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->metricId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->$VALUES:[Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->metricId:I

    return p0
.end method
