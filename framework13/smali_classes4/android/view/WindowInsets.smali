.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Side;,
        Landroid/view/WindowInsets$Type;,
        Landroid/view/WindowInsets$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CONSUMED:Landroid/view/WindowInsets;


# instance fields
.field private final blacklist mAlwaysConsumeSystemBars:Z

.field private final blacklist mCompatIgnoreVisibility:Z

.field private blacklist mCompatInsetsTypes:I

.field private final greylist-max-o mDisplayCutout:Landroid/view/DisplayCutout;

.field private final greylist-max-o mDisplayCutoutConsumed:Z

.field private final greylist-max-o mIsRound:Z

.field private final blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final greylist-max-o mStableInsetsConsumed:Z

.field private final greylist-max-o mSystemWindowInsetsConsumed:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysConsumeSystemBars(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

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

.method static bridge synthetic blacklist -$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

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
    .locals 7

    .line 118
    new-instance v6, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    sput-object v6, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 119
    return-void
.end method

.method public constructor greylist <init>(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    .line 246
    invoke-static {p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    const/16 v0, 0x9

    new-array v3, v0, [Z

    .line 247
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v9

    .line 246
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 248
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V
    .locals 11
    .param p1, "systemWindowInsetsRect"    # Landroid/graphics/Rect;
    .param p2, "stableInsetsRect"    # Landroid/graphics/Rect;
    .param p3, "isRound"    # Z
    .param p4, "alwaysConsumeSystemBars"    # Z
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-static {p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {p2}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v2

    .line 133
    invoke-static {p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowInsets;->createCompatVisibilityMap([Landroid/graphics/Insets;)[Z

    move-result-object v3

    .line 135
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v9

    .line 132
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 136
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .locals 13
    .param p1, "src"    # Landroid/view/WindowInsets;

    .line 188
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v0

    .line 189
    :goto_0
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    :goto_1
    move-object v4, v1

    iget-object v5, p1, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v6, p1, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v7, p1, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    .line 191
    invoke-static {p1}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v8

    iget-object v9, p1, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v10, p1, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget v11, p1, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v12, p1, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 188
    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 196
    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V
    .locals 4
    .param p1, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p2, "typeMaxInsetsMap"    # [Landroid/graphics/Insets;
    .param p3, "typeVisibilityMap"    # [Z
    .param p4, "isRound"    # Z
    .param p5, "alwaysConsumeSystemBars"    # Z
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p7, "roundedCorners"    # Landroid/view/RoundedCorners;
    .param p8, "privacyIndicatorBounds"    # Landroid/view/PrivacyIndicatorBounds;
    .param p9, "compatInsetsTypes"    # I
    .param p10, "compatIgnoreVisibility"    # Z

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 159
    const/16 v3, 0x9

    if-eqz v2, :cond_1

    .line 160
    new-array v2, v3, [Landroid/graphics/Insets;

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Insets;

    :goto_1
    iput-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 163
    if-nez p2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 164
    if-eqz v2, :cond_3

    .line 165
    new-array v2, v3, [Landroid/graphics/Insets;

    goto :goto_3

    .line 166
    :cond_3
    invoke-virtual {p2}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Insets;

    :goto_3
    iput-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 168
    iput-object p3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 169
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 170
    iput-boolean p5, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    .line 171
    iput p9, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    .line 172
    iput-boolean p10, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 174
    if-nez p6, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 175
    if-nez v0, :cond_6

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    .line 176
    :cond_5
    move-object v0, p6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 178
    iput-object p7, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 179
    iput-object p8, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 180
    return-void
.end method

.method public static blacklist assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 269
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    .line 270
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 271
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    .line 272
    return-void
.end method

.method private static blacklist createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;
    .locals 1
    .param p0, "insets"    # Landroid/graphics/Rect;

    .line 256
    if-nez p0, :cond_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/Insets;

    .line 260
    .local v0, "typeInsetsMap":[Landroid/graphics/Insets;
    invoke-static {v0, p0}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 261
    return-object v0
.end method

.method private static blacklist createCompatVisibilityMap([Landroid/graphics/Insets;)[Z
    .locals 5
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;

    .line 275
    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 276
    .local v0, "typeVisibilityMap":[Z
    if-nez p0, :cond_0

    .line 277
    return-object v0

    .line 279
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    .line 280
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    .line 281
    .local v2, "index":I
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 279
    .end local v2    # "index":I
    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private static blacklist displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 1
    .param p0, "w"    # Landroid/view/WindowInsets;

    .line 199
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_1

    .line 202
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v0

    .line 204
    :cond_1
    return-object v0
.end method

.method static blacklist getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .locals 3
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "typeMask"    # I

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "result":Landroid/graphics/Insets;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_3

    .line 215
    and-int v2, p1, v1

    if-nez v2, :cond_0

    .line 216
    goto :goto_1

    .line 218
    :cond_0
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-object v2, p0, v2

    .line 219
    .local v2, "insets":Landroid/graphics/Insets;
    if-nez v2, :cond_1

    .line 220
    goto :goto_1

    .line 222
    :cond_1
    if-nez v0, :cond_2

    .line 223
    move-object v0, v2

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {v0, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 214
    .end local v2    # "insets":Landroid/graphics/Insets;
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method static blacklist insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;
    .locals 5
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1076
    iget v0, p0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1077
    .local v0, "newLeft":I
    iget v2, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1078
    .local v2, "newTop":I
    iget v3, p0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1079
    .local v3, "newRight":I
    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1080
    .local v1, "newBottom":I
    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    .line 1081
    return-object p0

    .line 1083
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;
    .locals 5
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "cloned":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    .line 1059
    aget-object v2, p0, v1

    .line 1060
    .local v2, "insets":Landroid/graphics/Insets;
    if-nez v2, :cond_0

    .line 1061
    goto :goto_1

    .line 1063
    :cond_0
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v3

    .line 1064
    .local v3, "insetInsets":Landroid/graphics/Insets;
    if-eq v3, v2, :cond_2

    .line 1065
    if-nez v0, :cond_1

    .line 1066
    invoke-virtual {p0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object p0, v4

    check-cast p0, [Landroid/graphics/Insets;

    .line 1067
    const/4 v0, 0x1

    .line 1069
    :cond_1
    aput-object v3, p0, v1

    .line 1058
    .end local v2    # "insets":Landroid/graphics/Insets;
    .end local v3    # "insetInsets":Landroid/graphics/Insets;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1072
    .end local v1    # "i":I
    :cond_3
    return-object p0
.end method

.method private static blacklist setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .locals 2
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroid/graphics/Insets;

    .line 235
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 236
    and-int v1, p1, v0

    if-nez v1, :cond_0

    .line 237
    goto :goto_1

    .line 239
    :cond_0
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    aput-object p2, p0, v1

    .line 235
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist consumeDisplayCutout()Landroid/view/WindowInsets;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    new-instance v11, Landroid/view/WindowInsets;

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v2, v0

    .line 547
    :goto_0
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v5, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v6, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v9, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget v10, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v12, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    move-object v0, v11

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v12

    invoke-direct/range {v0 .. v10}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 546
    return-object v11
.end method

.method public whitelist consumeStableInsets()Landroid/view/WindowInsets;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 879
    return-object p0
.end method

.method public whitelist consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    new-instance v11, Landroid/view/WindowInsets;

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v5, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    .line 601
    invoke-static {p0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v8, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget v9, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v10, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 598
    return-object v11
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1023
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1024
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/view/WindowInsets;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1025
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/WindowInsets;

    .line 1027
    .local v2, "that":Landroid/view/WindowInsets;
    iget-boolean v3, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mIsRound:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

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

    .line 1032
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1033
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 1034
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v4, v2, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1035
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, v2, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1036
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v4, v2, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1037
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1027
    :goto_0
    return v0

    .line 1024
    .end local v2    # "that":Landroid/view/WindowInsets;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist getInsets(I)Landroid/graphics/Insets;
    .locals 1
    .param p1, "typeMask"    # I

    .line 340
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;
    .locals 2
    .param p1, "typeMask"    # I

    .line 364
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 365
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

    .line 835
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {v0}, Landroid/view/PrivacyIndicatorBounds;->getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 1
    .param p1, "position"    # I

    .line 512
    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getStableInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 748
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getStableInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getStableInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getStableInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getStableInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemGestureInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 805
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

    .line 451
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getSystemWindowInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getSystemWindowInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getSystemWindowInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getSystemWindowInsets()Landroid/graphics/Insets;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v0, :cond_0

    .line 321
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_0
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    nop

    .line 325
    .local v0, "result":Landroid/graphics/Insets;
    iget v1, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v1, :cond_1

    .line 326
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 328
    :cond_1
    return-object v0
.end method

.method public blacklist getSystemWindowInsetsAsRect()Landroid/graphics/Rect;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 302
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method public whitelist getTappableElementInsets()Landroid/graphics/Insets;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 864
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasInsets()Z
    .locals 2

    .line 476
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

    .line 477
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

    .line 476
    :goto_1
    return v0
.end method

.method public whitelist hasStableInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
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

    .line 467
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1042
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 1043
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mIsRound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    .line 1044
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 1045
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1042
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist inset(IIII)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 984
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 985
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 986
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 987
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 989
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 956
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
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
    .param p1, "r"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 936
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist insetUnchecked(IIII)Landroid/view/WindowInsets;
    .locals 18
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 998
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v16, Landroid/view/WindowInsets;

    .line 999
    iget-boolean v5, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 1000
    move-object v7, v6

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v5

    move-object v7, v5

    .line 1002
    :goto_0
    iget-boolean v5, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v5, :cond_1

    .line 1003
    move-object v8, v6

    goto :goto_1

    .line 1004
    :cond_1
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v5

    move-object v8, v5

    :goto_1
    iget-object v9, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v10, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v11, v0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    .line 1007
    iget-boolean v5, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v5, :cond_2

    .line 1008
    move-object v12, v6

    goto :goto_2

    .line 1009
    :cond_2
    iget-object v5, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v5, :cond_3

    .line 1010
    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    move-object v12, v5

    goto :goto_2

    .line 1011
    :cond_3
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v5

    move-object v12, v5

    .line 1012
    :goto_2
    iget-object v5, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v5, :cond_4

    .line 1013
    sget-object v5, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    move-object v13, v5

    goto :goto_3

    .line 1014
    :cond_4
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v5

    move-object v13, v5

    .line 1015
    :goto_3
    iget-object v5, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v5, :cond_5

    .line 1016
    move-object v14, v6

    goto :goto_4

    .line 1017
    :cond_5
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v5

    move-object v14, v5

    :goto_4
    iget v15, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    move-object/from16 v5, v16

    move/from16 v17, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move/from16 v15, v17

    invoke-direct/range {v5 .. v15}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 998
    return-object v16
.end method

.method public whitelist isConsumed()Z
    .locals 1

    .line 569
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

.method public whitelist isRound()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method greylist-max-o isSystemWindowInsetsConsumed()Z
    .locals 1

    .line 1090
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return v0
.end method

.method public whitelist isVisible(I)Z
    .locals 3
    .param p1, "typeMask"    # I

    .line 379
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    .line 380
    and-int v1, p1, v0

    if-nez v1, :cond_0

    .line 381
    goto :goto_1

    .line 383
    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    .line 384
    const/4 v1, 0x0

    return v1

    .line 379
    :cond_1
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeCutoutInsets()Landroid/view/WindowInsets;
    .locals 13

    .line 1633
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    .line 1634
    new-instance v0, Landroid/view/WindowInsets;

    .line 1635
    iget-boolean v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    move-object v2, v12

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v2, v1

    .line 1636
    :goto_0
    iget-boolean v1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object v3, v12

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v1

    :goto_1
    iget-object v4, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v5, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v6, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    sget-object v7, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iget-object v8, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v9, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget v10, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v11, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 1640
    .local v0, "insets":Landroid/view/WindowInsets;
    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    .line 1641
    .local v1, "index":I
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v12, v2, v1

    .line 1642
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v12, v2, v1

    .line 1643
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1644
    return-object v0
.end method

.method public whitelist replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    .line 632
    return-object p0

    .line 634
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
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist shouldAlwaysConsumeSystemBars()Z
    .locals 1

    .line 886
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeSystemBars:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInsets{\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    const-string v3, "\n    "

    if-ge v1, v2, :cond_2

    .line 893
    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aget-object v2, v2, v1

    .line 894
    .local v2, "insets":Landroid/graphics/Insets;
    iget-object v4, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aget-object v4, v4, v1

    .line 895
    .local v4, "maxInsets":Landroid/graphics/Insets;
    iget-object v5, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    aget-boolean v5, v5, v1

    .line 896
    .local v5, "visible":Z
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    .line 897
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

    .line 898
    const-string v7, " max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 899
    const-string v7, " vis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 900
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .end local v2    # "insets":Landroid/graphics/Insets;
    .end local v4    # "maxInsets":Landroid/graphics/Insets;
    .end local v5    # "visible":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v1    # "i":I
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

    .line 905
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
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

    .line 907
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v1, :cond_5

    .line 909
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

    .line 908
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compatInsetsTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
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

    .line 914
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
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

    .line 916
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
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

    .line 918
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
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

    .line 920
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v2, "round"

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
