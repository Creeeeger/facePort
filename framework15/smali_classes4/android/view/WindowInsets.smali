.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type;,
        Landroid/view/WindowInsets$Builder;,
        Landroid/view/WindowInsets$Side;
    }
.end annotation


# static fields
.field public static final whitelist CONSUMED:Landroid/view/WindowInsets;


# instance fields
.field private final blacklist mCompatIgnoreVisibility:Z

.field private blacklist mCompatInsetsTypes:I

.field private final greylist-max-o mDisplayCutout:Landroid/view/DisplayCutout;

.field private final greylist-max-o mDisplayCutoutConsumed:Z

.field private final blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private final blacklist mForceConsumingOpaqueCaptionBar:Z

.field private final blacklist mForceConsumingTypes:I

.field private final blacklist mFrameHeight:I

.field private final blacklist mFrameWidth:I

.field private final greylist-max-o mIsRound:Z

.field private final blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final greylist-max-o mStableInsetsConsumed:Z

.field private final blacklist mSuppressScrimTypes:I

.field private final greylist-max-o mSystemWindowInsetsConsumed:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 0

    invoke-static {p0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/WindowInsets;->setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    new-instance v18, Landroid/view/WindowInsets;

    move-object/from16 v0, v18

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatVisibilityMap([Landroid/graphics/Insets;)[Z

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    sput-object v18, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor greylist <init>(Landroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    const/16 v2, 0xa

    new-array v3, v2, [Z

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    new-array v14, v2, [[Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .locals 21

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v5, v1

    :goto_1
    iget-object v6, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v8, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v9, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v10, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v11

    iget-object v12, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v13, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v14, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v15, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-boolean v3, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v3, :cond_2

    move-object/from16 v17, v2

    goto :goto_2

    :cond_2
    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v3

    :goto_2
    iget-boolean v3, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    :goto_3
    move-object/from16 v18, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v19, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v20, v2

    move-object/from16 v3, p0

    move/from16 v16, v1

    invoke-direct/range {v3 .. v20}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V
    .locals 13

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v3, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    new-array v3, v4, [Landroid/graphics/Insets;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Insets;

    :goto_1
    iput-object v3, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    if-nez p2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v3, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v3, :cond_3

    new-array v3, v4, [Landroid/graphics/Insets;

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Insets;

    :goto_3
    iput-object v3, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    move/from16 v5, p4

    iput-boolean v5, v0, Landroid/view/WindowInsets;->mIsRound:Z

    move/from16 v6, p5

    iput v6, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    move/from16 v7, p6

    iput-boolean v7, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    move/from16 v8, p7

    iput v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    move/from16 v9, p12

    iput v9, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move/from16 v10, p13

    iput-boolean v10, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-nez p8, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-nez v1, :cond_6

    invoke-virtual/range {p8 .. p8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v1, p8

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v1, 0x0

    :goto_6
    iput-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v1, p9

    iput-object v1, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    move-object/from16 v2, p10

    iput-object v2, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-boolean v12, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-nez v12, :cond_8

    if-nez p14, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual/range {p14 .. p14}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Landroid/graphics/Rect;

    goto :goto_8

    :cond_8
    :goto_7
    new-array v12, v4, [[Landroid/graphics/Rect;

    :goto_8
    iput-object v12, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-boolean v12, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-nez v12, :cond_a

    if-nez p15, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual/range {p15 .. p15}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Landroid/graphics/Rect;

    goto :goto_a

    :cond_a
    :goto_9
    new-array v4, v4, [[Landroid/graphics/Rect;

    :goto_a
    iput-object v4, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move/from16 v4, p16

    iput v4, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v12, p17

    iput v12, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    return-void
.end method

.method public static blacklist assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    return-void
.end method

.method public static blacklist createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Insets;

    invoke-static {v0, p0}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private static blacklist createCompatVisibilityMap([Landroid/graphics/Insets;)[Z
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Z

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static blacklist displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_1

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method private blacklist getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_3

    and-int v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-object v2, p1, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/graphics/Rect;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_3

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-object v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v3, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method static blacklist insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;
    .locals 11

    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/view/WindowInsets;->insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    return-object v2
.end method

.method static blacklist insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;
    .locals 11

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v7, p0

    move v8, v0

    move v9, v1

    :goto_0
    const/16 v0, 0xa

    if-ge v9, v0, :cond_4

    aget-object v10, v7, v9

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/WindowInsets;->insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v8, :cond_2

    invoke-virtual {v7}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[Landroid/graphics/Rect;

    const/4 v8, 0x1

    :cond_2
    aput-object v0, v7, v9

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method static blacklist insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;
    .locals 5

    iget v0, p0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v3

    if-eq v3, v2, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object p0, v4

    check-cast p0, [Landroid/graphics/Insets;

    const/4 v0, 0x1

    :cond_1
    aput-object v3, p0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static blacklist insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p5, p3

    sub-int v3, p6, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v1, p0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    neg-int v0, p1

    neg-int v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method private static blacklist setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    aput-object p2, p0, v1

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public greylist consumeCaptionInsets()Landroid/view/WindowInsets;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v20, 0x0

    if-eqz v2, :cond_0

    move-object/from16 v3, v20

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v2

    :goto_0
    iget-boolean v2, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v2, :cond_1

    move-object/from16 v4, v20

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v2

    :goto_1
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v7, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v8, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v9, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget-object v10, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v11, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v12, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v13, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v14, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v15, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v2

    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v18, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v19, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v19}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    iget-object v3, v1, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v20, v3, v2

    iget-object v3, v1, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v20, v3, v2

    iget-object v3, v1, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    return-object v1
.end method

.method public whitelist consumeDisplayCutout()Landroid/view/WindowInsets;
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v19, Landroid/view/WindowInsets;

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v7, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v8, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v10, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget-object v11, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v12, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v13, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v14, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v15, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v1, :cond_2

    move-object/from16 v16, v2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v1

    :goto_2
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_3

    move-object/from16 v20, v2

    goto :goto_3

    :cond_3
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v20, v1

    :goto_3
    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v17, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v18, v1

    const/4 v9, 0x0

    move-object/from16 v1, v19

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v19
.end method

.method public whitelist consumeStableInsets()Landroid/view/WindowInsets;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public whitelist consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v19, Landroid/view/WindowInsets;

    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v5, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v6, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v1

    :goto_0
    move-object v9, v1

    iget-object v10, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v11, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v17, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v18, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v19
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/view/WindowInsets;

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/WindowInsets;

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mIsRound:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget v4, v2, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget v4, v2, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v4, v2, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, v2, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v4, v2, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v4, v2, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v4, v2, Landroid/view/WindowInsets;->mFrameWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    iget v4, v2, Landroid/view/WindowInsets;->mFrameHeight:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getBoundingRects(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectsIgnoringVisibility(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to query the bounding rects for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist getDisplayShape()Landroid/view/DisplayShape;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0
.end method

.method public blacklist getForceConsumingTypes()I
    .locals 1

    iget v0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return v0
.end method

.method public whitelist getFrame()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public whitelist getInsets(I)Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;
    .locals 2

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to query the maximum insets for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMandatorySystemGestureInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0}, Landroid/view/PrivacyIndicatorBounds;->getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getStableInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getStableInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getStableInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getStableInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getStableInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSuppressScrimTypes()I
    .locals 1

    iget v0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return v0
.end method

.method public whitelist getSystemGestureInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemWindowInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getSystemWindowInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getSystemWindowInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getSystemWindowInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getSystemWindowInsets()Landroid/graphics/Insets;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    nop

    iget v1, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public blacklist getSystemWindowInsetsAsRect()Landroid/graphics/Rect;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method public whitelist getTappableElementInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasInsets()Z
    .locals 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist hasStableInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist hasSystemWindowInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mIsRound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v7, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget v1, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v1, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v15, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist inset(IIII)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist insetUnchecked(IIII)Landroid/view/WindowInsets;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    new-instance v30, Landroid/view/WindowInsets;

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v1, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v8, v9, v10, v11}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v13, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v8, v9, v10, v11}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v14, v1

    :goto_1
    iget-object v15, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v6, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v5, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v4, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v1, :cond_2

    const/16 v20, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_3

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    move-object/from16 v20, v1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_2
    iget-object v1, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v1, :cond_4

    sget-object v1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    move-object/from16 v21, v1

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v1

    move-object/from16 v21, v1

    :goto_3
    iget-object v1, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v1, :cond_5

    const/16 v22, 0x0

    goto :goto_4

    :cond_5
    iget-object v1, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    move-object/from16 v22, v1

    :goto_4
    iget-object v3, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v2, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-boolean v12, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v12, :cond_6

    move/from16 v25, v1

    move/from16 v24, v2

    move-object/from16 v23, v3

    move/from16 v19, v4

    move/from16 v26, v5

    move/from16 v17, v6

    move/from16 v18, v7

    const/16 v27, 0x0

    goto :goto_5

    :cond_6
    iget-object v12, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move/from16 v17, v6

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v18, v7

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v25, v1

    move-object v1, v12

    move/from16 v24, v2

    move/from16 v2, p1

    move-object/from16 v23, v3

    move/from16 v3, p2

    move/from16 v19, v4

    move/from16 v4, p3

    move/from16 v26, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v27, v1

    :goto_5
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v1

    :goto_6
    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v10

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v28

    iget v2, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v11

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v29

    move-object/from16 v12, v30

    move/from16 v16, v18

    move/from16 v18, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v1

    invoke-direct/range {v12 .. v29}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v30
.end method

.method public whitelist isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isForceConsumingOpaqueCaptionBar()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return v0
.end method

.method public whitelist isRound()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method greylist-max-o isSystemWindowInsetsConsumed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return v0
.end method

.method public whitelist isVisible(I)Z
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeCutoutInsets()Landroid/view/WindowInsets;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v20, 0x0

    if-eqz v2, :cond_0

    move-object/from16 v3, v20

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v2

    :goto_0
    iget-boolean v2, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v2, :cond_1

    move-object/from16 v4, v20

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v2

    :goto_1
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v7, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v8, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v9, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    sget-object v10, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iget-object v11, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v12, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v13, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v14, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v15, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v2

    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v18, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v19, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v19}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    const/16 v2, 0x80

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    iget-object v3, v1, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v20, v3, v2

    iget-object v3, v1, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v20, v3, v2

    iget-object v3, v1, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    return-object v1
.end method

.method public whitelist replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInsets{\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const-string v3, "\n    "

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aget-object v2, v2, v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    aget-boolean v5, v5, v1

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v6, 0x1

    shl-int/2addr v6, v1

    invoke-static {v6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " boundingRects="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxBoundingRects="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    const-string v2, ""

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cutout="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "roundedCorners="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "privacyIndicatorBounds="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayShape="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceConsumingTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceConsumingOpaqueCaptionBar="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suppressScrimTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compatInsetsTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compatIgnoreVisibility="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemWindowInsetsConsumed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stableInsetsConsumed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayCutoutConsumed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v2, "round"

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
