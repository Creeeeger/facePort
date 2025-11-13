.class public final enum Lcom/samsung/app/video/editor/external/EditSubType;
.super Ljava/lang/Enum;
.source "EditSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/EditSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist AUDIO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist AUDIO_TRANSITION_FADE_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist LUT_DOWNLOAD:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist LUT_MYFILTER:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist LUT_PRELOAD:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist NONE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_BLACK_AND_WHITE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_BLACK_VIGNETTE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_BURST_SHOT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_CARTOON_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_FADEDCOLOR:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_FADE_IN_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_FADE_IN_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_FADE_IN_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_FADE_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_LINEAR_DODGE_BLEND_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_NONE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_PASTEL_SKETCH:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_PORTRAIT_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_SEPIA_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_TINT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_TURQUOISE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_VINTAGE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_TRANSITION_2_DIVISION_SLIDE_HORIZONTAL_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_TRANSITION_BLEND_MULTIPLE_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_TRANSITION_FADE:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_TRANSITION_FADE_IN_ZOOM_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

.field public static final enum blacklist VIDEO_TRANSITION_WIPE_RIGHT:Lcom/samsung/app/video/editor/external/EditSubType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 34

    .line 9
    new-instance v0, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 10
    new-instance v1, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v3, "VIDEO_TRANSITION_FADE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 11
    new-instance v3, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v5, "VIDEO_TRANSITION_WIPE_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_WIPE_RIGHT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 12
    new-instance v5, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v7, "AUDIO_TRANSITION_FADE_OUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/EditSubType;->AUDIO_TRANSITION_FADE_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 13
    new-instance v7, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v9, "AUDIO_TRANSITION_FADE_IN_OUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/EditSubType;->AUDIO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 14
    new-instance v9, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v11, "VIDEO_EFFECT_NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 15
    new-instance v11, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v13, "VIDEO_EFFECT_ZOOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_ZOOM:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 16
    new-instance v13, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v15, "VIDEO_EFFECT_FADE_IN_BLACK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 17
    new-instance v15, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v14, "VIDEO_EFFECT_FADE_IN_WHITE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 18
    new-instance v14, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v12, "VIDEO_EFFECT_FADE_OUT_BLACK"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_BLACK:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 19
    new-instance v12, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v10, "VIDEO_EFFECT_FADE_OUT_WHITE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 20
    new-instance v10, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v8, "VIDEO_EFFECT_FADE_IN_OUT_WHITE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADE_IN_OUT_WHITE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 21
    new-instance v8, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_TRANSITION_BLEND_MULTIPLE_TEXTURE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_BLEND_MULTIPLE_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 22
    new-instance v6, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v4, "VIDEO_EFFECT_BLACK_AND_WHITE_NEW"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BLACK_AND_WHITE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 23
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v2, "VIDEO_EFFECT_SEPIA_NEW"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_SEPIA_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 24
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_EFFECT_CARTOON_NEW"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_CARTOON_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 25
    new-instance v6, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v4, "VIDEO_EFFECT_VINTAGE_NEW"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_VINTAGE_NEW:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 26
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v2, "VIDEO_EFFECT_FADEDCOLOR"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_FADEDCOLOR:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 27
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_EFFECT_LINEAR_DODGE_BLEND_TEXTURE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_LINEAR_DODGE_BLEND_TEXTURE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 28
    new-instance v6, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v4, "VIDEO_TRANSITION_FADE_IN_OUT"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE_IN_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 29
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v2, "VIDEO_EFFECT_BLACK_VIGNETTE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BLACK_VIGNETTE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 30
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_EFFECT_PASTEL_SKETCH"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PASTEL_SKETCH:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 31
    new-instance v6, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v4, "VIDEO_EFFECT_TINT"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_TINT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 32
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v4, "VIDEO_EFFECT_TURQUOISE"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_TURQUOISE:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 38
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_TRANSITION_2_DIVISION_SLIDE_HORIZONTAL_OUT"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_2_DIVISION_SLIDE_HORIZONTAL_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 39
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_EFFECT_BURST_SHOT"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_BURST_SHOT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 40
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_EFFECT_PORTRAIT_BLUR"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_EFFECT_PORTRAIT_BLUR:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 41
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "LUT_PRELOAD"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->LUT_PRELOAD:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 42
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "LUT_DOWNLOAD"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->LUT_DOWNLOAD:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 43
    new-instance v2, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "LUT_MYFILTER"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->LUT_MYFILTER:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 44
    new-instance v4, Lcom/samsung/app/video/editor/external/EditSubType;

    const-string v6, "VIDEO_TRANSITION_FADE_IN_ZOOM_OUT"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/app/video/editor/external/EditSubType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_FADE_IN_ZOOM_OUT:Lcom/samsung/app/video/editor/external/EditSubType;

    .line 6
    const/16 v2, 0x1f

    new-array v2, v2, [Lcom/samsung/app/video/editor/external/EditSubType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v4, v2, v0

    sput-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EditSubType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/samsung/app/video/editor/external/EditSubType;->value:I

    .line 48
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/EditSubType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/EditSubType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/EditSubType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/EditSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/EditSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/EditSubType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/samsung/app/video/editor/external/EditSubType;->value:I

    return v0
.end method
