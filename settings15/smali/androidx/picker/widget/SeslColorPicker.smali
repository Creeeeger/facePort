.class public Landroidx/picker/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentColorContainer:Landroid/view/View;

.field public final mCurrentColorView:Landroid/widget/ImageView;

.field public final mCurrentFontScale:F

.field public final mImageButtonClickListener:Landroidx/picker/widget/SeslColorPicker$4;

.field public final mIsLightTheme:Z

.field public final mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

.field public final mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field public final mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

.field public final mPickedColorContainer:Landroid/view/View;

.field public final mPickedColorView:Landroid/widget/ImageView;

.field public final mRecentColorListLayout:Landroid/widget/LinearLayout;

.field public final mRecentColorValues:Ljava/util/ArrayList;

.field public final mRecentlyDivider:Landroid/view/View;

.field public final mRecentlyText:Landroid/widget/TextView;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x19b

    const/16 v0, 0x140

    const/16 v1, 0x168

    filled-new-array {v0, v1, p2}, [I

    move-result-object p2

    new-instance v0, Landroidx/picker/widget/SeslColorPicker$4;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslColorPicker$4;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker/widget/SeslColorPicker$4;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f040318

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0ac5

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    new-instance p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/4 v3, 0x3

    new-array v5, v3, [F

    iput-object v5, p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v4, :cond_2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float v4, v0, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float v0, p1, v0

    float-to-int v0, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, p2, v4

    if-ne v5, v0, :cond_1

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070f73

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070f2b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070f2d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070f2a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0x7f0a0dcc

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1, p2, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const p1, 0x7f0a0dcb

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    const p1, 0x7f0a0dd3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    iget-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p2, :cond_3

    const p2, 0x7f060814

    goto :goto_3

    :cond_3
    const p2, 0x7f060813

    :goto_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x7f0a0dca

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0dd2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    const v3, 0x3f99999a    # 1.2f

    cmpl-float p1, p1, v3

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    const v6, 0x7f070f82

    if-lez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iget v7, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float v7, p1, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {p2, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p2, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    mul-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    const p1, 0x7f0a0dc9

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorContainer:Landroid/view/View;

    const p1, 0x7f0a0dd1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    iget-object p2, p2, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    const p1, 0x7f0a0dc6

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslColorSwatchView;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    new-instance p2, Landroidx/picker/widget/SeslColorPicker$1;

    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslColorPicker$1;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    iput-object p2, p1, Landroidx/picker/widget/SeslColorSwatchView;->mListener:Landroidx/picker/widget/SeslColorPicker$1;

    const p1, 0x7f0a0dce

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslOpacitySeekBar;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    const p1, 0x7f0a0dcf

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    iget-object p2, p2, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080b8e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p1, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080b8f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    new-instance p2, Landroidx/picker/widget/SeslColorPicker$2;

    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslColorPicker$2;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    new-instance p2, Landroidx/picker/widget/SeslColorPicker$3;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f142b02

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f142b0a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f142aea

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0ddc

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0ddb

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    const p1, 0x7f0a0dd4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f142ad5    # 1.9694814E38f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f142ad9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f142ad8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f142ad4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f142ad3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f142ad7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p2, :cond_7

    const p2, 0x7f06081f

    goto :goto_4

    :cond_7
    const p2, 0x7f06081e

    :goto_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    move p2, v2

    :goto_5
    const/4 v0, 0x6

    if-ge p2, v0, :cond_9

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v8, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v8, :cond_8

    const v8, 0x7f080b95

    goto :goto_6

    :cond_8
    const v8, 0x7f080b94

    :goto_6
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v8, 0x3d

    invoke-static {v8, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    new-instance v9, Landroid/content/res/ColorStateList;

    new-array v10, v2, [I

    filled-new-array {v10}, [[I

    move-result-object v10

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-direct {v9, v10, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v8, v9, v7, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroidx/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker/widget/SeslColorPicker$4;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    iget p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    int-to-float p1, p1

    iget v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p2, :cond_b

    const p2, 0x7f060821

    goto :goto_7

    :cond_b
    const p2, 0x7f060820

    :goto_7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslColorPicker;->updateCurrentColor()V

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    iget-object p1, p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    :cond_c
    return-void
.end method


# virtual methods
.method public final mapColorOnColorWheel(I)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iget-boolean v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0xb

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, v0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(I)V

    :cond_4
    return-void
.end method

.method public final setCurrentColorViewDescription(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object p1

    iget-boolean v1, v2, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v1, :cond_0

    iget-object v1, v2, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, v2, Landroidx/picker/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    mul-int/lit8 p1, p1, 0xb

    add-int/2addr p1, v3

    sget v2, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->$r8$clinit:I

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f142b01

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateCurrentColor()V
    .locals 6

    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    iget-object v0, v0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    iget-object v4, v1, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v2, v1, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(I)V

    :cond_1
    return-void
.end method
