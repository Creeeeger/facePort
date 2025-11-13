.class public final Landroid/view/DisplayCutout;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayCutout$Bounds;,
        Landroid/view/DisplayCutout$CutoutPathParserInfo;,
        Landroid/view/DisplayCutout$Builder;,
        Landroid/view/DisplayCutout$ParcelableWrapper;,
        Landroid/view/DisplayCutout$CutoutPolicy;,
        Landroid/view/DisplayCutout$BoundsPosition;
    }
.end annotation


# static fields
.field public static final blacklist BOUNDS_POSITION_BOTTOM:I = 0x3

.field public static final blacklist BOUNDS_POSITION_LEFT:I = 0x0

.field public static final blacklist BOUNDS_POSITION_LENGTH:I = 0x4

.field public static final blacklist BOUNDS_POSITION_RIGHT:I = 0x2

.field public static final blacklist BOUNDS_POSITION_TOP:I = 0x1

.field private static final greylist-max-o CACHE_LOCK:Ljava/lang/Object;

.field private static final blacklist EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field public static final greylist-max-o EMULATION_OVERLAY_CATEGORY:Ljava/lang/String; = "com.android.internal.display_cutout_emulation"

.field static final blacklist INVALID_OVERRIDES:[I

.field private static final blacklist INVALID_SIDE_OVERRIDE:I = -0x1

.field public static final blacklist LETTERBOX_BOTTOM:I = 0x8

.field public static final blacklist LETTERBOX_LEFT:I = 0x1

.field public static final blacklist LETTERBOX_NONE:I = 0x0

.field public static final blacklist LETTERBOX_RIGHT:I = 0x2

.field public static final blacklist LETTERBOX_TOP:I = 0x4

.field public static final greylist-max-o NO_CUTOUT:Landroid/view/DisplayCutout;

.field private static final greylist-max-o NULL_PAIR:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SIDE_STRING_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final blacklist SIDE_STRING_LEFT:Ljava/lang/String; = "left"

.field private static final blacklist SIDE_STRING_RIGHT:Ljava/lang/String; = "right"

.field private static final blacklist SIDE_STRING_TOP:Ljava/lang/String; = "top"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayCutout"

.field private static final greylist-max-o ZERO_RECT:Landroid/graphics/Rect;

.field private static greylist-max-o sCachedCutout:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedCutoutPath:Landroid/graphics/Path;

.field private static blacklist sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field private static greylist-max-o sCachedDensity:F

.field private static greylist-max-o sCachedDisplayHeight:I

.field private static greylist-max-o sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedSideOverrides:[I

.field private static greylist-max-o sCachedSpec:Ljava/lang/String;

.field private static blacklist sCachedWaterfallInsets:Landroid/graphics/Insets;


# instance fields
.field private final blacklist mBounds:Landroid/view/DisplayCutout$Bounds;

.field private final blacklist mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field private final greylist-max-o mSafeInsets:Landroid/graphics/Rect;

.field private blacklist mSideOverrides:[I

.field private final blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCACHE_LOCK()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCachedCutoutPath(Landroid/graphics/Path;)V
    .locals 0

    sput-object p0, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCachedCutoutPathParserInfo(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .locals 0

    sput-object p0, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 20

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    sput-object v0, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v12, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v13, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    sget-object v14, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v15, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v16, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v17, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v18, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    sput-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    const/4 v0, -0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/view/DisplayCutout;->INVALID_OVERRIDES:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v11}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v4, p6

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v4, p6

    move-object v5, v0

    move-object/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v9, Landroid/view/DisplayCutout$Bounds;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v8}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    move-object v0, p0

    move-object/from16 v2, p6

    move-object v3, v9

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V
    .locals 11

    move-object v0, p1

    move/from16 v8, p8

    invoke-static {p1, v8}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v9

    new-instance v10, Landroid/view/DisplayCutout$Bounds;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, p2

    move-object v4, v10

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iput-object p3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    if-nez p4, :cond_1

    sget-object v0, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    goto :goto_1

    :cond_1
    move-object v0, p4

    :goto_1
    iput-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iput-object p5, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V
    .locals 6

    invoke-static {p1, p5}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/view/DisplayCutout$Bounds;

    const/4 v0, 0x0

    invoke-direct {v3, p3, p5, v0}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->extractBoundsFromList(Landroid/graphics/Rect;Ljava/util/List;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method private static greylist-max-o atLeastZero(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static blacklist computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    iget v0, p2, Landroid/graphics/Insets;->left:I

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x3

    invoke-static {p0, p1, v1, v2}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->top:I

    const/4 v3, 0x1

    aget-object v3, p3, v3

    const/16 v4, 0x30

    invoke-static {p0, p1, v3, v4}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p2, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const/4 v5, 0x5

    invoke-static {p0, p1, v4, v5}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    aget-object v2, p3, v2

    const/16 v5, 0x50

    invoke-static {p0, p1, v2, v5}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static blacklist computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;
    .locals 7

    new-instance v6, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v6
.end method

.method public static blacklist extractBoundsFromList(Landroid/graphics/Rect;Ljava/util/List;)[Landroid/graphics/Rect;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)[",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget v1, p0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_3

    aput-object v5, v0, v3

    goto :goto_4

    :cond_3
    const/4 v6, 0x3

    aput-object v5, v0, v6

    goto :goto_4

    :cond_4
    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_5

    aput-object v5, v0, v2

    goto :goto_4

    :cond_5
    const/4 v6, 0x2

    aput-object v5, v0, v6

    :goto_4
    goto :goto_3

    :cond_6
    return-object v0
.end method

.method private static blacklist findCutoutInsetForSide(IILandroid/graphics/Rect;I)I
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown gravity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :sswitch_1
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :sswitch_2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :sswitch_3
    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist fromBoundingRect(IIIII)Landroid/view/DisplayCutout;
    .locals 8

    const/4 v0, 0x4

    new-array v7, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    if-ne p4, v1, :cond_0

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_0
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_1
    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v2, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v0
.end method

.method public static blacklist fromBounds([Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 7

    new-instance v6, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v6
.end method

.method public static blacklist fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;
    .locals 8

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIILjava/lang/String;)Landroid/view/DisplayCutout;
    .locals 12

    move/from16 v0, p6

    int-to-float v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float v9, v1, v2

    invoke-static {p0}, Landroid/view/DisplayCutout;->loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;

    move-result-object v10

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I

    move-result-object v11

    const/4 v4, 0x0

    move-object/from16 v3, p7

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v3 .. v11}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/DisplayCutout;

    return-object v1
.end method

.method public static blacklist fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;
    .locals 10

    nop

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutPath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutApproximationRect(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v9, p6

    int-to-float v2, v9

    const/high16 v3, 0x43200000    # 160.0f

    div-float v6, v2, v3

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;

    move-result-object v7

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I

    move-result-object v8

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v8}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public static blacklist fromSpec(Ljava/lang/String;IIFLandroid/graphics/Insets;[I)Landroid/view/DisplayCutout;
    .locals 9

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    return-object v0
.end method

.method private static blacklist getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static blacklist getDisplayCutoutApproximationRect(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10700d7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    return-object v2

    :cond_0
    const v2, 0x1040373

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getDisplayCutoutPath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10700d8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    return-object v2

    :cond_0
    const v2, 0x1040371

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/android/window/flags/Flags;->movableCutoutConfiguration()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10700d9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    nop

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    goto :goto_1

    :cond_2
    const v3, 0x107011d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    :goto_1
    nop

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    array-length v4, v3

    if-nez v4, :cond_3

    sget-object v4, Landroid/view/DisplayCutout;->INVALID_OVERRIDES:[I

    return-object v4

    :cond_3
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x0

    :goto_2
    const/4 v6, 0x3

    if-gt v4, v6, :cond_5

    aget v6, v3, v4

    if-ltz v6, :cond_4

    aget v6, v3, v4

    if-ge v6, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid side override definition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    return-object v3

    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid side override definition, exact 4 overrides required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static blacklist getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x1070102

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x111019d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method public static blacklist getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x1070120

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x11101dd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private static blacklist getRotationToOverride(I[Landroid/graphics/Rect;I)I
    .locals 4

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p2

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eq v1, v0, :cond_2

    return p2

    :cond_2
    move v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    return p2

    :cond_4
    sub-int v0, p0, v1

    if-gez v0, :cond_5

    add-int/lit8 v0, v0, 0x4

    :cond_5
    return v0
.end method

.method private static blacklist getSideOverride([II)I
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget v0, p0, p1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;
    .locals 9

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10701d2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    nop

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    nop

    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v5, v6, v7, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroid/view/DisplayCutout;->loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;

    move-result-object v2

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method private blacklist insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    if-gtz p2, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    :cond_0
    iget v0, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    :cond_1
    if-gtz p4, :cond_2

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_3

    :cond_2
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_3
    if-gtz p1, :cond_4

    iget v0, p5, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_5

    :cond_4
    iget v0, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->left:I

    :cond_5
    if-gtz p3, :cond_6

    iget v0, p5, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_7

    :cond_6
    iget v0, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    :cond_7
    return-object p5
.end method

.method private static blacklist loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;
    .locals 4

    nop

    const v0, 0x10505fb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x10505fd

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x10505fc

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x10505fa

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Landroid/graphics/Insets;",
            "[I)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v14, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v0

    :cond_1
    invoke-static/range {p2 .. p5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v10

    sget-object v2, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    :try_start_1
    sget v0, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    if-ne v0, v11, :cond_2

    sget v0, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    if-ne v0, v12, :cond_2

    sget v0, Landroid/view/DisplayCutout;->sCachedDensity:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_2

    sget-object v0, Landroid/view/DisplayCutout;->sCachedWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v14, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/view/DisplayCutout;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_2

    sget-object v0, Landroid/view/DisplayCutout;->sCachedSideOverrides:[I

    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move/from16 v30, v10

    goto/16 :goto_1

    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Landroid/view/CutoutSpecification$Parser;

    move/from16 v8, p2

    move/from16 v7, p3

    invoke-direct {v0, v13, v8, v7, v10}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    invoke-virtual {v0, v9}, Landroid/view/CutoutSpecification$Parser;->parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/CutoutSpecification;->getSafeInset()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/CutoutSpecification;->getLeftBound()Landroid/graphics/Rect;

    move-result-object v24

    invoke-virtual/range {v16 .. v16}, Landroid/view/CutoutSpecification;->getTopBound()Landroid/graphics/Rect;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/CutoutSpecification;->getRightBound()Landroid/graphics/Rect;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Landroid/view/CutoutSpecification;->getBottomBound()Landroid/graphics/Rect;

    move-result-object v27

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v14, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v14, Landroid/graphics/Insets;->left:I

    iget v1, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v14, Landroid/graphics/Insets;->top:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v14, Landroid/graphics/Insets;->right:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v14, Landroid/graphics/Insets;->bottom:I

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v1, v0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v28, v6

    move/from16 v6, p6

    move-object/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v29, v9

    move/from16 v9, v19

    move/from16 v30, v10

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    move-object v5, v0

    const/4 v0, 0x0

    invoke-static {v15, v0}, Landroid/view/DisplayCutout;->getSideOverride([II)I

    move-result v7

    new-instance v1, Landroid/view/DisplayCutout$Bounds;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v27

    invoke-direct/range {v17 .. v23}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    invoke-static {v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/view/DisplayCutout;->getRotationToOverride(I[Landroid/graphics/Rect;I)I

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v9}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    :cond_4
    invoke-static {v11, v12, v14, v8}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    new-instance v17, Landroid/view/DisplayCutout;

    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    aget-object v32, v8, v0

    const/4 v0, 0x1

    aget-object v33, v8, v0

    const/4 v0, 0x2

    aget-object v34, v8, v0

    const/4 v0, 0x3

    aget-object v35, v8, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v37}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    move-object/from16 v1, v17

    move-object v2, v10

    move-object/from16 v3, p7

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    move-object/from16 v3, v17

    new-instance v0, Landroid/util/Pair;

    invoke-virtual/range {v16 .. v16}, Landroid/view/CutoutSpecification;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v0

    sget-object v6, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sput-object v29, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    sput v11, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    sput v12, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    sput v13, Landroid/view/DisplayCutout;->sCachedDensity:F

    sput-object v4, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    sput-object v14, Landroid/view/DisplayCutout;->sCachedWaterfallInsets:Landroid/graphics/Insets;

    sput v30, Landroid/view/DisplayCutout;->sCachedPhysicalPixelDisplaySizeRatio:F

    sput-object v15, Landroid/view/DisplayCutout;->sCachedSideOverrides:[I

    monitor-exit v6

    return-object v4

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    move/from16 v30, v10

    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public static blacklist pathFromResourcesForUDC(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Path;
    .locals 13

    const v0, 0x1040372

    move-object v1, p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    move/from16 v12, p4

    int-to-float v2, v12

    const/high16 v3, 0x43200000    # 160.0f

    div-float v8, v2, v3

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;

    move-result-object v9

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I

    move-result-object v10

    move-object v2, v0

    move-object v3, v11

    move v4, p2

    move/from16 v5, p3

    move v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v10}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Path;

    return-object v2
.end method

.method private static blacklist sideOverridesToString([I)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const-string v2, "length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, p0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    if-eqz v2, :cond_2

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v5, "bottom"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v5, "right"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v5, "top"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v5, "left"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000003L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000004L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000005L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000006L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000007L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v2, v3

    const-wide v6, 0x20500000008L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout;

    iget-object v3, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v3, v4}, Landroid/view/DisplayCutout$Bounds;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3, v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    iget-object v4, v1, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public whitelist getBoundingRectBottom()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectLeft()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectRight()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectTop()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRects()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public blacklist getBoundingRectsAll()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCutoutPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-static {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->-$$Nest$mhasCutout(Landroid/view/DisplayCutout$CutoutPathParserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    sget-object v3, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Landroid/view/CutoutSpecification$Parser;

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/CutoutSpecification$Parser;->parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/CutoutSpecification;->getPath()Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v1

    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v1

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v5

    invoke-static {v1, v4, v5, v3}, Landroid/util/RotationUtils;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    :cond_3
    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v1

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v4, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    new-instance v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-direct {v1, v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V

    sput-object v1, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    sput-object v2, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_0
    return-object v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-object v0
.end method

.method public blacklist getRotated(IIII)Landroid/view/DisplayCutout;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne v0, v1, :cond_0

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    :cond_0
    invoke-static/range {p3 .. p4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    :goto_0
    array-length v9, v3

    if-ge v8, v9, :cond_3

    aget-object v9, v3, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    aget-object v9, v3, v8

    invoke-static {v9, v4, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    neg-int v8, v1

    iget-object v9, v0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    move/from16 v15, p4

    invoke-static {v9, v15}, Landroid/view/DisplayCutout;->getSideOverride([II)I

    move-result v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v3, v8}, Landroid/view/DisplayCutout;->getRotationToOverride(I[Landroid/graphics/Rect;I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v20

    new-instance v21, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v12

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v13

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v16

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v18

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v19

    move-object/from16 v10, v21

    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, p4

    invoke-direct/range {v10 .. v19}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    rem-int/lit8 v11, v1, 0x2

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_5

    move v11, v7

    goto :goto_2

    :cond_5
    move v11, v6

    :goto_2
    if-eqz v5, :cond_6

    move v12, v6

    goto :goto_3

    :cond_6
    move v12, v7

    :goto_3
    nop

    invoke-static {v3, v2, v10}, Landroid/view/DisplayCutout;->constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v14

    iget-object v15, v0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    iput-object v15, v13, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-virtual {v13, v14}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v15

    return-object v15
.end method

.method public whitelist getSafeInsetBottom()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getSafeInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getSafeInsetRight()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getSafeInsetTop()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public greylist-max-o getSafeInsets()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public whitelist getWaterfallInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x0

    const v1, 0xbc8f

    mul-int v2, v0, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$Bounds;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int v2, v0, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v3}, Landroid/graphics/Insets;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public greylist-max-o inset(IIII)Landroid/view/DisplayCutout;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object v6

    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v6, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;->insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    iget-object v0, v6, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v6

    :cond_3
    iget-object v0, v6, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;->insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v6, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    aget-object v3, v1, v2

    sget-object v4, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, v1, v2

    neg-int v4, v7

    neg-int v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v11

    iget-object v13, v6, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v14, 0x0

    move-object v9, v2

    move-object v10, v15

    move-object v12, v1

    invoke-direct/range {v9 .. v14}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v2
.end method

.method public greylist-max-o isBoundsEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$misEmpty(Landroid/view/DisplayCutout$Bounds;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .locals 2

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 7

    new-instance v6, Landroid/view/DisplayCutout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v5, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-object v6
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutout{insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " waterfall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boundingRect={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} cutoutPathParserInfo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} sideOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-static {v1}, Landroid/view/DisplayCutout;->sideOverridesToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
