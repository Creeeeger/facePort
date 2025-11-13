.class public final enum Lcom/android/systemui/media/controls/util/MediaUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/controls/util/MediaUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum ACTION_SEEK:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum ACTIVE_TO_RESUME:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum CAROUSEL_PAGE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum CAST_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum DISMISS_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum DISMISS_SWIPE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_COMMUNAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_OPEN_BROADCAST_DIALOG:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_TAP_CONTENT_VIEW:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_TIMEOUT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum OPEN_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum OPEN_SETTINGS_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TAP_ACTION_NEXT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TAP_ACTION_OTHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TAP_ACTION_PLAY_PAUSE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TAP_ACTION_PREV:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TRANSFER_TO_CAST:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TRANSFER_TO_LOCAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TRANSFER_TO_REMOTE:Lcom/android/systemui/media/controls/util/MediaUiEvent;


# instance fields
.field private final metricId:I


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v1, 0x0

    const/16 v2, 0x405

    const-string v3, "LOCAL_MEDIA_ADDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v2, 0x1

    const/16 v3, 0x406

    const-string v4, "CAST_MEDIA_ADDED"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAST_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v3, 0x2

    const/16 v4, 0x407

    const-string v5, "REMOTE_MEDIA_ADDED"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/controls/util/MediaUiEvent;->REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v4, 0x3

    const/16 v5, 0x408

    const-string v6, "TRANSFER_TO_LOCAL"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_LOCAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v5, 0x4

    const/16 v6, 0x409

    const-string v7, "TRANSFER_TO_CAST"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_CAST:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v6, 0x5

    const/16 v7, 0x40a

    const-string v8, "TRANSFER_TO_REMOTE"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_REMOTE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v7, 0x6

    const/16 v8, 0x3f5

    const-string v9, "RESUME_MEDIA_ADDED"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v7, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v8, 0x7

    const/16 v9, 0x3f6

    const-string v10, "ACTIVE_TO_RESUME"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/media/controls/util/MediaUiEvent;->ACTIVE_TO_RESUME:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v8, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v9, 0x8

    const/16 v10, 0x3f7

    const-string v11, "MEDIA_TIMEOUT"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_TIMEOUT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v9, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v10, 0x9

    const/16 v11, 0x3f8

    const-string v12, "MEDIA_REMOVED"

    invoke-direct {v9, v12, v10, v11}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v10, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v11, 0xa

    const/16 v12, 0x3f9

    const-string v13, "CAROUSEL_PAGE"

    invoke-direct {v10, v13, v11, v12}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAROUSEL_PAGE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v11, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0xb

    const/16 v13, 0x3fa

    const-string v14, "DISMISS_SWIPE"

    invoke-direct {v11, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/media/controls/util/MediaUiEvent;->DISMISS_SWIPE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v12, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v13, 0xc

    const/16 v14, 0x3fb

    const-string v15, "OPEN_LONG_PRESS"

    invoke-direct {v12, v15, v13, v14}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v13, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v14, 0xd

    const/16 v15, 0x3fc

    move-object/from16 v16, v12

    const-string v12, "DISMISS_LONG_PRESS"

    invoke-direct {v13, v12, v14, v15}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/media/controls/util/MediaUiEvent;->DISMISS_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0xe

    const/16 v15, 0x3fd

    move-object/from16 v17, v13

    const-string v13, "OPEN_SETTINGS_LONG_PRESS"

    invoke-direct {v14, v13, v12, v15}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_SETTINGS_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0xf

    const/16 v13, 0x3fe

    move-object/from16 v18, v14

    const-string v14, "OPEN_SETTINGS_CAROUSEL"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x10

    const/16 v13, 0x3ff

    move-object/from16 v19, v15

    const-string v15, "TAP_ACTION_PLAY_PAUSE"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_PLAY_PAUSE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x11

    const/16 v13, 0x400

    move-object/from16 v20, v14

    const-string v14, "TAP_ACTION_PREV"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_PREV:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x12

    const/16 v13, 0x401

    move-object/from16 v21, v15

    const-string v15, "TAP_ACTION_NEXT"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_NEXT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x13

    const/16 v13, 0x402

    move-object/from16 v22, v14

    const-string v14, "TAP_ACTION_OTHER"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TAP_ACTION_OTHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x14

    const/16 v13, 0x403

    move-object/from16 v23, v15

    const-string v15, "ACTION_SEEK"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->ACTION_SEEK:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x15

    const/16 v13, 0x404

    move-object/from16 v24, v14

    const-string v14, "OPEN_OUTPUT_SWITCHER"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x16

    const/16 v13, 0x40c

    move-object/from16 v25, v15

    const-string v15, "MEDIA_TAP_CONTENT_VIEW"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_TAP_CONTENT_VIEW:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x17

    const/16 v13, 0x40d

    move-object/from16 v26, v14

    const-string v14, "MEDIA_CAROUSEL_LOCATION_QQS"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x18

    const/16 v13, 0x40e

    move-object/from16 v27, v15

    const-string v15, "MEDIA_CAROUSEL_LOCATION_QS"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x19

    const/16 v13, 0x40f

    move-object/from16 v28, v14

    const-string v14, "MEDIA_CAROUSEL_LOCATION_LOCKSCREEN"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x1a

    const/16 v13, 0x410

    move-object/from16 v29, v15

    const-string v15, "MEDIA_CAROUSEL_LOCATION_DREAM"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x1b

    const/16 v13, 0x5f0

    move-object/from16 v30, v14

    const-string v14, "MEDIA_CAROUSEL_LOCATION_COMMUNAL"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_COMMUNAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x1c

    const/16 v13, 0x411

    move-object/from16 v31, v15

    const-string v15, "MEDIA_RECOMMENDATION_ADDED"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x1d

    const/16 v13, 0x412

    move-object/from16 v32, v14

    const-string v14, "MEDIA_RECOMMENDATION_REMOVED"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x1e

    const/16 v13, 0x413

    move-object/from16 v33, v15

    const-string v15, "MEDIA_RECOMMENDATION_ACTIVATED"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x1f

    const/16 v13, 0x414

    move-object/from16 v34, v14

    const-string v14, "MEDIA_RECOMMENDATION_ITEM_TAP"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x20

    const/16 v13, 0x415

    move-object/from16 v35, v15

    const-string v15, "MEDIA_RECOMMENDATION_CARD_TAP"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x21

    const/16 v13, 0x437

    move-object/from16 v36, v14

    const-string v14, "MEDIA_OPEN_BROADCAST_DIALOG"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_OPEN_BROADCAST_DIALOG:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x22

    const/16 v13, 0x4dc

    move-object/from16 v37, v15

    const-string v15, "MEDIA_CAROUSEL_SINGLE_PLAYER"

    invoke-direct {v14, v15, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    new-instance v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/16 v12, 0x23

    const/16 v13, 0x4dd

    move-object/from16 v38, v14

    const-string v14, "MEDIA_CAROUSEL_MULTIPLE_PLAYERS"

    invoke-direct {v15, v14, v12, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v15

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    filled-new-array/range {v0 .. v35}, [Lcom/android/systemui/media/controls/util/MediaUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->$VALUES:[Lcom/android/systemui/media/controls/util/MediaUiEvent;

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

    iput p3, p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->metricId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/controls/util/MediaUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/controls/util/MediaUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->$VALUES:[Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/controls/util/MediaUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->metricId:I

    return p0
.end method
