.class public Landroid/view/NotificationHeaderView;
.super Landroid/widget/RelativeLayout;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mAcceptAllTouches:Z

.field private blacklist mAltExpandTarget:Landroid/view/View;

.field private greylist-max-o mBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mBottomAmountRounded:Z

.field private blacklist mBottomIsRounded:Z

.field private blacklist mCalibratedRadius:I

.field private blacklist mClipBottomAmount:I

.field private blacklist mClipTopAmount:I

.field private blacklist mCornerRadii:[F

.field private blacklist mCurrentTopRoundness:F

.field private blacklist mDistanceToBottomRoundness:F

.field private blacklist mDistanceToTopRoundness:F

.field private greylist-max-o mEntireHeaderClickable:Z

.field private blacklist mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private greylist-max-o mExpandClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mExpandOnlyOnButton:Z

.field private greylist-max-o mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mOutlineAlpha:F

.field greylist-max-o mProvider:Landroid/view/ViewOutlineProvider;

.field private blacklist mTmpPath:Landroid/graphics/Path;

.field private blacklist mTopAmountRounded:Z

.field private blacklist mTopLineView:Landroid/view/NotificationTopLineView;

.field private greylist-max-o mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

.field private final blacklist mTouchableHeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAcceptAllTouches(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltExpandTarget(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mAltExpandTarget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackground(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomAmountRounded(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mBottomAmountRounded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomIsRounded(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mBottomIsRounded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCalibratedRadius(Landroid/view/NotificationHeaderView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mCalibratedRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipBottomAmount(Landroid/view/NotificationHeaderView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mClipBottomAmount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClipTopAmount(Landroid/view/NotificationHeaderView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mClipTopAmount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentTopRoundness(Landroid/view/NotificationHeaderView;)F
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mCurrentTopRoundness:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceToBottomRoundness(Landroid/view/NotificationHeaderView;)F
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mDistanceToBottomRoundness:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceToTopRoundness(Landroid/view/NotificationHeaderView;)F
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mDistanceToTopRoundness:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandButton(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/NotificationExpandButton;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandOnlyOnButton(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutlineAlpha(Landroid/view/NotificationHeaderView;)F
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mOutlineAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpPath(Landroid/view/NotificationHeaderView;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mTmpPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopAmountRounded(Landroid/view/NotificationHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/NotificationHeaderView;->mTopAmountRounded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchableHeight(Landroid/view/NotificationHeaderView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationHeaderView;->mTouchableHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance v0, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mCornerRadii:[F

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTmpPath:Landroid/graphics/Path;

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/NotificationHeaderView;->mOutlineAlpha:F

    .line 77
    new-instance v0, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 128
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050284

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mTouchableHeight:I

    .line 130
    const v1, 0x1110192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    .line 132
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->initDimens()V

    .line 133
    return-void
.end method

.method private greylist-max-o getFirstChildNotGone()Landroid/view/View;
    .locals 4

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 509
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 510
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 511
    return-object v1

    .line 508
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method private blacklist updateBackgroundRadii()V
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 212
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mCornerRadii:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 214
    .end local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method

.method private greylist-max-o updateTouchListener()V
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    .line 335
    return-void
.end method


# virtual methods
.method public blacklist applyRoundness()V
    .locals 3

    .line 184
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    iget-boolean v1, p0, Landroid/view/NotificationHeaderView;->mBottomAmountRounded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/NotificationHeaderView;->mCalibratedRadius:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/NotificationHeaderView;->setRoundness(FF)V

    .line 185
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    .line 323
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 326
    :cond_0
    return-void
.end method

.method public blacklist getCurrentBackgroundRadiusTop()F
    .locals 2

    .line 177
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mTopAmountRounded:Z

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Landroid/view/NotificationHeaderView;->mCalibratedRadius:I

    int-to-float v0, v0

    return v0

    .line 180
    :cond_0
    iget v0, p0, Landroid/view/NotificationHeaderView;->mCurrentTopRoundness:F

    iget v1, p0, Landroid/view/NotificationHeaderView;->mCalibratedRadius:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public blacklist getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V
    .locals 15
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "topRoundness"    # F
    .param p6, "bottomRoundness"    # F
    .param p7, "outPath"    # Landroid/graphics/Path;

    .line 142
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Path;->reset()V

    .line 143
    sub-int v5, v3, v1

    .line 144
    .local v5, "height":I
    const/4 v6, 0x0

    .line 145
    .local v6, "lineOffset":F
    add-float v7, p5, p6

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 146
    add-float v7, p5, p6

    int-to-float v8, v5

    sub-float v6, v7, v8

    .line 148
    :cond_0
    sub-int v7, v2, v0

    .line 149
    .local v7, "width":I
    move/from16 v8, p5

    .line 150
    .local v8, "topRoundnessX":F
    move/from16 v9, p6

    .line 151
    .local v9, "bottomRoundnessX":F
    div-int/lit8 v10, v7, 0x2

    int-to-float v10, v10

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 152
    div-int/lit8 v10, v7, 0x2

    int-to-float v10, v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 153
    const/4 v10, 0x0

    cmpl-float v11, p5, v10

    if-lez v11, :cond_1

    .line 154
    int-to-float v11, v0

    int-to-float v12, v1

    add-float v12, v12, p5

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    int-to-float v11, v0

    int-to-float v12, v1

    int-to-float v13, v0

    add-float/2addr v13, v8

    int-to-float v14, v1

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 156
    int-to-float v11, v2

    sub-float/2addr v11, v8

    int-to-float v12, v1

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    int-to-float v11, v2

    int-to-float v12, v1

    int-to-float v13, v2

    int-to-float v14, v1

    add-float v14, v14, p5

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 159
    :cond_1
    int-to-float v11, v0

    add-float/2addr v11, v6

    int-to-float v12, v1

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    int-to-float v11, v2

    sub-float/2addr v11, v6

    int-to-float v12, v1

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    :goto_0
    cmpl-float v10, p6, v10

    if-lez v10, :cond_2

    .line 163
    int-to-float v10, v2

    int-to-float v11, v3

    sub-float v11, v11, p6

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    int-to-float v10, v2

    int-to-float v11, v3

    int-to-float v12, v2

    sub-float/2addr v12, v9

    int-to-float v13, v3

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 165
    int-to-float v10, v0

    add-float/2addr v10, v9

    int-to-float v11, v3

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    int-to-float v10, v0

    int-to-float v11, v3

    int-to-float v12, v0

    int-to-float v13, v3

    sub-float v13, v13, p6

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 168
    :cond_2
    int-to-float v10, v2

    int-to-float v11, v3

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    int-to-float v10, v0

    int-to-float v11, v3

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    :goto_1
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Path;->close()V

    .line 172
    return-void
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initDimens()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView;->mCalibratedRadius:I

    .line 138
    return-void
.end method

.method public greylist-max-o isInTouchRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 523
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 280
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 285
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/NotificationHeaderView;->mClipTopAmount:I

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/NotificationHeaderView;->mClipBottomAmount:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v1

    .line 288
    .local v1, "bottom":I
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView;->mBottomIsRounded:Z

    if-eqz v2, :cond_0

    .line 289
    iget v2, p0, Landroid/view/NotificationHeaderView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    .line 291
    :cond_0
    const/4 v2, 0x0

    .line 292
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v3

    .line 293
    .local v3, "right":I
    iget-boolean v4, p0, Landroid/view/NotificationHeaderView;->mTopAmountRounded:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    .line 294
    iget v6, p0, Landroid/view/NotificationHeaderView;->mClipTopAmount:I

    int-to-float v6, v6

    iget v7, p0, Landroid/view/NotificationHeaderView;->mCurrentTopRoundness:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget v7, p0, Landroid/view/NotificationHeaderView;->mDistanceToTopRoundness:F

    :goto_0
    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 295
    .local v6, "clipTop":I
    add-int/2addr v0, v6

    .line 296
    if-ltz v6, :cond_2

    .line 297
    add-int/2addr v1, v6

    .line 300
    .end local v6    # "clipTop":I
    :cond_2
    iget-boolean v6, p0, Landroid/view/NotificationHeaderView;->mBottomAmountRounded:Z

    if-eqz v6, :cond_4

    .line 301
    iget v6, p0, Landroid/view/NotificationHeaderView;->mDistanceToBottomRoundness:F

    float-to-int v6, v6

    .line 302
    .local v6, "clipBottom":I
    add-int/2addr v1, v6

    .line 303
    iget v7, p0, Landroid/view/NotificationHeaderView;->mClipTopAmount:I

    if-lez v7, :cond_3

    .line 304
    sub-int/2addr v1, v7

    .line 306
    :cond_3
    iget v7, p0, Landroid/view/NotificationHeaderView;->mClipBottomAmount:I

    if-lez v7, :cond_4

    if-nez v4, :cond_4

    iget v4, p0, Landroid/view/NotificationHeaderView;->mCurrentTopRoundness:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 307
    sub-int/2addr v0, v7

    .line 310
    .end local v6    # "clipBottom":I
    :cond_4
    iget-object v4, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    iget-object v4, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_5
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 254
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 255
    const v0, 0x102045e

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationTopLineView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    .line 256
    const v0, 0x10202d7

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 257
    const v0, 0x10201e6

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAltExpandTarget:Landroid/view/View;

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    .line 259
    return-void
.end method

.method public greylist-max-o setAcceptAllTouches(Z)V
    .locals 1
    .param p1, "acceptAllTouches"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 536
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    .line 537
    return-void
.end method

.method public blacklist setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 222
    iput p1, p0, Landroid/view/NotificationHeaderView;->mClipBottomAmount:I

    .line 223
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 224
    return-void
.end method

.method public blacklist setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 217
    iput p1, p0, Landroid/view/NotificationHeaderView;->mClipTopAmount:I

    .line 218
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 219
    return-void
.end method

.method public blacklist setCurrentTopRoundness(F)V
    .locals 0
    .param p1, "currentTopRoundness"    # F

    .line 188
    iput p1, p0, Landroid/view/NotificationHeaderView;->mCurrentTopRoundness:F

    .line 189
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->applyRoundness()V

    .line 190
    return-void
.end method

.method public blacklist setDistanceToBottomRoundness(F)V
    .locals 1
    .param p1, "distanceToBottomRoundness"    # F

    .line 236
    iget v0, p0, Landroid/view/NotificationHeaderView;->mDistanceToBottomRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/NotificationHeaderView;->mBottomAmountRounded:Z

    .line 238
    iput p1, p0, Landroid/view/NotificationHeaderView;->mDistanceToBottomRoundness:F

    .line 239
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->applyRoundness()V

    .line 240
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 242
    :cond_1
    return-void
.end method

.method public blacklist setDistanceToTopRoundness(F)V
    .locals 1
    .param p1, "distanceToTopRoundness"    # F

    .line 227
    iget v0, p0, Landroid/view/NotificationHeaderView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/NotificationHeaderView;->mTopAmountRounded:Z

    .line 229
    iput p1, p0, Landroid/view/NotificationHeaderView;->mDistanceToTopRoundness:F

    .line 230
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->applyRoundness()V

    .line 231
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 233
    :cond_1
    return-void
.end method

.method public greylist-max-o setExpandOnlyOnButton(Z)V
    .locals 0
    .param p1, "expandOnlyOnButton"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 544
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    .line 545
    return-void
.end method

.method public greylist-max-o setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 265
    if-eqz p1, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 267
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 271
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 276
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 339
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 340
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAltExpandTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 343
    return-void
.end method

.method public blacklist setOutlineAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 247
    iput p1, p0, Landroid/view/NotificationHeaderView;->mOutlineAlpha:F

    .line 248
    return-void
.end method

.method public blacklist setRoundness(FF)V
    .locals 5
    .param p1, "topRoundness"    # F
    .param p2, "bottomRoundness"    # F

    .line 193
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, p1, v2

    const/4 v3, 0x4

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/NotificationHeaderView;->mBottomIsRounded:Z

    .line 197
    aput p1, v0, v1

    .line 198
    aput p1, v0, v4

    .line 199
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 200
    const/4 v1, 0x3

    aput p1, v0, v1

    .line 201
    aput p2, v0, v3

    .line 202
    const/4 v1, 0x5

    aput p2, v0, v1

    .line 203
    const/4 v1, 0x6

    aput p2, v0, v1

    .line 204
    const/4 v1, 0x7

    aput p2, v0, v1

    .line 205
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateBackgroundRadii()V

    .line 206
    return-void
.end method

.method public blacklist setTopLineExtraMarginEnd(I)V
    .locals 1
    .param p1, "extraMarginEnd"    # I

    .line 352
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTopLineView:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationTopLineView;->setHeaderTextMarginEnd(I)V

    .line 353
    return-void
.end method

.method public blacklist setTopLineExtraMarginEndDp(F)V
    .locals 1
    .param p1, "extraMarginEndDp"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 363
    nop

    .line 364
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 363
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setTopLineExtraMarginEnd(I)V

    .line 365
    return-void
.end method

.method public blacklist styleTextAsTitle(Z)V
    .locals 4
    .param p1, "styleTextAsTitle"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 374
    if-eqz p1, :cond_0

    .line 375
    const v0, 0x10303b9

    goto :goto_0

    .line 376
    :cond_0
    const v0, 0x10303b6

    :goto_0
    nop

    .line 378
    .local v0, "styleResId":I
    const v1, 0x1020339

    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, "headerText":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 380
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 383
    :cond_1
    const v2, 0x10201f9

    invoke-virtual {p0, v2}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 384
    .local v2, "appNameText":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 385
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 387
    :cond_2
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
