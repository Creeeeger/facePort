.class public final enum Lcom/android/systemui/screenshot/ScreenshotEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/ScreenshotEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v1, 0x12e

    const-string v2, "SCREENSHOT_REQUESTED_GLOBAL_ACTIONS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v2, 0x12f

    const-string v3, "SCREENSHOT_REQUESTED_KEY_CHORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v3, 0x180

    const-string v4, "SCREENSHOT_REQUESTED_KEY_OTHER"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v4, 0x130

    const-string v5, "SCREENSHOT_REQUESTED_OVERVIEW"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v5, 0x17e

    const-string v6, "SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v6, 0x27e

    const-string v7, "SCREENSHOT_REQUESTED_VENDOR_GESTURE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v7, 0x131

    const-string v8, "SCREENSHOT_REQUESTED_OTHER"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v8, 0x132

    const-string v9, "SCREENSHOT_SAVED"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v8, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v9, 0x150

    const-string v10, "SCREENSHOT_NOT_SAVED"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v10, 0x501

    const-string v11, "SCREENSHOT_CAPTURE_FAILED"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v10, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v11, 0x133

    const-string v12, "SCREENSHOT_PREVIEW_TAPPED"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v11, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x134

    const-string v13, "SCREENSHOT_EDIT_TAPPED"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v12, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v13, 0x135

    const-string v14, "SCREENSHOT_SHARE_TAPPED"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v13, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v14, 0x176

    const-string v15, "SCREENSHOT_SMART_ACTION_TAPPED"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x175

    const-string v15, "SCREENSHOT_SCROLL_TAPPED"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x136

    const-string v13, "SCREENSHOT_INTERACTION_TIMEOUT"

    move-object/from16 v18, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x137

    const-string v13, "SCREENSHOT_EXPLICIT_DISMISSAL"

    move-object/from16 v19, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x290

    const-string v13, "SCREENSHOT_SWIPE_DISMISSED"

    move-object/from16 v20, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x434

    const-string v13, "SCREENSHOT_DISMISSED_OTHER"

    move-object/from16 v21, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x280

    const-string v13, "SCREENSHOT_REENTERED"

    move-object/from16 v22, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x2af

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_IMPRESSION"

    move-object/from16 v23, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x2b0

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_REQUESTED"

    move-object/from16 v24, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x2b1

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_SHARE"

    move-object/from16 v25, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x2b2

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_EDIT"

    move-object/from16 v26, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x370

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_STARTED"

    move-object/from16 v27, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x371

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_FAILURE"

    move-object/from16 v28, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x372

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_COMPLETED"

    move-object/from16 v29, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x379

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED"

    move-object/from16 v30, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x37a

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED"

    move-object/from16 v31, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x37b

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED"

    move-object/from16 v32, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x38e

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_SAVED"

    move-object/from16 v33, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v15, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x38f

    const-string v13, "SCREENSHOT_LONG_SCREENSHOT_EXIT"

    move-object/from16 v34, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    new-instance v14, Lcom/android/systemui/screenshot/ScreenshotEvent;

    const/16 v12, 0x4d8

    const-string v13, "SCREENSHOT_SAVED_TO_WORK_PROFILE"

    move-object/from16 v35, v15

    const/16 v15, 0x20

    invoke-direct {v14, v13, v15, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

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

    move-object/from16 v34, v14

    move-object/from16 v14, v18

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

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

    filled-new-array/range {v0 .. v32}, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

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

    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    return-void
.end method

.method public static getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    return p0
.end method
