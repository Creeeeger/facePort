.class public final Landroid/view/WindowInsets$Builder;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private blacklist mForceConsumingOpaqueCaptionBar:Z

.field private blacklist mForceConsumingTypes:I

.field private blacklist mFrameHeight:I

.field private blacklist mFrameWidth:I

.field private blacklist mIsRound:Z

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private blacklist mStableInsetsConsumed:Z

.field private blacklist mSuppressScrimTypes:I

.field private blacklist mSystemInsetsConsumed:Z

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/16 v0, 0xa

    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    new-array v1, v0, [[Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    new-array v0, v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z

    move-result-object v0

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/WindowInsets;
    .locals 21

    move-object/from16 v0, p0

    new-instance v19, Landroid/view/WindowInsets;

    iget-boolean v1, v0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    iget-boolean v6, v0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    iget v7, v0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    iget-boolean v8, v0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    iget v9, v0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    iget-object v10, v0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v11, v0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v12, v0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v13, v0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v15

    iget-boolean v1, v0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    if-eqz v1, :cond_2

    move-object/from16 v16, v2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v1

    :goto_2
    iget-boolean v1, v0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_3

    move-object/from16 v20, v2

    goto :goto_3

    :cond_3
    iget-object v1, v0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v20, v1

    :goto_3
    iget v1, v0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    move/from16 v17, v1

    iget v1, v0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    move/from16 v18, v1

    const/4 v14, 0x0

    move-object/from16 v1, v19

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v19
.end method

.method public blacklist setAlwaysConsumeSystemBars(Z)Landroid/view/WindowInsets$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setBoundingRects(ILjava/util/List;)Landroid/view/WindowInsets$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/WindowInsets$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/graphics/Rect;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    aput-object v3, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public whitelist setBoundingRectsIgnoringVisibility(ILjava/util/List;)Landroid/view/WindowInsets$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/WindowInsets$Builder;"
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/graphics/Rect;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    aput-object v3, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum bounding rects not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;
    .locals 4

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    :goto_0
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    :cond_1
    return-object p0
.end method

.method public whitelist setDisplayShape(Landroid/view/DisplayShape;)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method public blacklist setForceConsumingOpaqueCaptionBar(Z)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    return-object p0
.end method

.method public blacklist setForceConsumingTypes(I)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput p1, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    return-object p0
.end method

.method public whitelist setFrame(II)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput p1, p0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    iput p2, p0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    return-object p0
.end method

.method public whitelist setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    return-object p0
.end method

.method public whitelist setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-object p0
.end method

.method public whitelist setPrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/WindowInsets$Builder;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const/4 v2, 0x3

    aput-object p1, v0, v2

    new-instance v2, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v2, v0, v1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v2, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method public blacklist setRound(Z)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    return-object p0
.end method

.method public whitelist setRoundedCorner(ILandroid/view/RoundedCorner;)Landroid/view/WindowInsets$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1, p2}, Landroid/view/RoundedCorners;->setRoundedCorner(ILandroid/view/RoundedCorner;)V

    return-object p0
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    :goto_0
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public whitelist setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    return-object p0
.end method

.method public blacklist setSuppressScrimTypes(I)Landroid/view/WindowInsets$Builder;
    .locals 0

    iput p1, p0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    return-object p0
.end method

.method public whitelist setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-object p0
.end method

.method public whitelist setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    return-object p0
.end method

.method public whitelist setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-object p0
.end method

.method public whitelist setVisible(IZ)Landroid/view/WindowInsets$Builder;
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aput-boolean p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
