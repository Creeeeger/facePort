.class public Landroidx/picker3/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static RECENT_COLOR_SLOT_COUNT:I = 0x6


# instance fields
.field public beforeValue:Ljava/lang/String;

.field public final editTexts:Ljava/util/ArrayList;

.field public final mColorDescription:[Ljava/lang/String;

.field public final mColorPickerBlueEditText:Landroid/widget/EditText;

.field public final mColorPickerGreenEditText:Landroid/widget/EditText;

.field public final mColorPickerHexEditText:Landroid/widget/EditText;

.field public final mColorPickerOpacityEditText:Landroid/widget/EditText;

.field public final mColorPickerRedEditText:Landroid/widget/EditText;

.field public final mColorPickerSaturationEditText:Landroid/widget/EditText;

.field public mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

.field public final mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field public final mCurrentColorView:Landroid/widget/ImageView;

.field public final mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

.field public mFlagVar:Z

.field public mFromRecentLayoutTouch:Z

.field public final mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

.field public final mGradientSeekBarContainer:Landroid/widget/LinearLayout;

.field public final mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field public final mImageButtonClickListener:Landroidx/picker3/widget/SeslColorPicker$17;

.field public mIsInputFromUser:Z

.field public final mIsLightTheme:Z

.field public mLastFocussedEditText:Landroid/widget/EditText;

.field public mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

.field public mOnEyeDropperListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda1;

.field public final mOnTabSelectListener:Landroidx/picker3/widget/SeslColorPicker$4;

.field public mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

.field public mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field public final mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

.field public final mPickedColorView:Landroid/widget/ImageView;

.field public final mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

.field public final mRecentColorListLayout:Landroid/widget/LinearLayout;

.field public final mRecentColorValues:Ljava/util/ArrayList;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field public mSpectrumViewContainer:Landroid/widget/FrameLayout;

.field public final mSwatchViewContainer:Landroid/widget/FrameLayout;

.field public final mTabLayoutContainer:Lcom/google/android/material/tabs/TabLayout;

.field public mTextFromRGB:Z

.field public mfromEditText:Z

.field public mfromRGB:Z

.field public mfromSaturationSeekbar:Z

.field public mfromSpectrumTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x19b

    const/16 v2, 0x140

    const/16 v3, 0x168

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    iput-boolean v2, v0, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    new-instance v4, Landroidx/picker3/widget/SeslColorPicker$4;

    invoke-direct {v4, v0}, Landroidx/picker3/widget/SeslColorPicker$4;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mOnTabSelectListener:Landroidx/picker3/widget/SeslColorPicker$4;

    new-instance v4, Landroidx/picker3/widget/SeslColorPicker$17;

    invoke-direct {v4, v0}, Landroidx/picker3/widget/SeslColorPicker$17;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker3/widget/SeslColorPicker$17;

    move-object/from16 v4, p1

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040354

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput-boolean v6, v0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d03e9

    invoke-virtual {v4, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f0a04ff

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const v4, 0x7f0a0b26

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-direct {v4}, Landroidx/picker3/widget/SeslRecentColorInfo;-><init>()V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iget-object v4, v4, Landroidx/picker3/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    const v4, 0x7f0a0b1f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mTabLayoutContainer:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    invoke-virtual {v4, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_1
    new-instance v4, Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-direct {v4}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v4, v9, :cond_3

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float v8, v5, v8

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_3

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float v5, v4, v5

    float-to-int v5, v5

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_3

    aget v10, v1, v8

    if-ne v10, v5, :cond_2

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0711c6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07119c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, v7

    add-int/2addr v5, v1

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    int-to-float v1, v1

    sub-float/2addr v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    float-to-int v1, v4

    iget-object v4, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07119e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07119b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v8, 0x7f0a0b11

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v4, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const v1, 0x7f0a0b10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    const v1, 0x7f0a0b18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    const v1, 0x7f0a0b24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0b25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    const-string v4, "disableDirectWriting=true;"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    iput-boolean v9, v0, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v5, v5, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_4
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mTabLayoutContainer:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mOnTabSelectListener:Landroidx/picker3/widget/SeslColorPicker$4;

    invoke-virtual {v1, v5}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v5, Landroidx/picker3/widget/SeslColorPicker$1;

    invoke-direct {v5, v0}, Landroidx/picker3/widget/SeslColorPicker$1;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v5, Landroidx/picker3/widget/SeslColorPicker$2;

    invoke-direct {v5, v0}, Landroidx/picker3/widget/SeslColorPicker$2;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v5, Landroidx/picker3/widget/SeslColorPicker$3;

    invoke-direct {v5, v0}, Landroidx/picker3/widget/SeslColorPicker$3;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v1, 0x7f0a0b0b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/picker3/widget/SeslColorSwatchView;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    const v1, 0x7f0a0b0c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mSwatchViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    new-instance v5, Landroidx/picker3/widget/SeslColorPicker$5;

    invoke-direct {v5, v0}, Landroidx/picker3/widget/SeslColorPicker$5;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    iput-object v5, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorPicker$5;

    const v1, 0x7f0a0b1b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mGradientSeekBarContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0b1c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/picker3/widget/SeslGradientColorSeekBar;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    const v1, 0x7f0a0b1d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v8, v8, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/16 v10, 0x64

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initColor(I)V

    :cond_5
    iget-object v8, v5, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f081119

    invoke-virtual {v8, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    new-instance v8, Landroidx/picker3/widget/SeslColorPicker$9;

    invoke-direct {v8, v0}, Landroidx/picker3/widget/SeslColorPicker$9;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    new-instance v8, Landroidx/picker3/widget/SeslColorPicker$10;

    invoke-direct {v8, v0}, Landroidx/picker3/widget/SeslColorPicker$10;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f131176

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f13118e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f13116e

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker3/widget/SeslColorPicker;->initColorSpectrumView()V

    invoke-virtual {v0, v2}, Landroidx/picker3/widget/SeslColorPicker;->initOpacitySeekBar(Z)V

    const v1, 0x7f0a0b21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131159

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13115d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13115c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131158

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131157

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13115b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f13115a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v5, :cond_6

    const v5, 0x7f060713

    goto :goto_3

    :cond_6
    const v5, 0x7f060712

    :goto_3
    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_8

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    if-lt v5, v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x7

    sput v5, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v5, 0x6

    sput v5, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    :goto_5
    move v5, v2

    :goto_6
    sget v6, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v5, v6, :cond_9

    iget-object v6, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroidx/picker3/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f131170

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/appcompat/util/SeslShapeDrawable;

    invoke-direct {v1}, Landroidx/appcompat/util/SeslShapeDrawable;-><init>()V

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    const v6, 0x7f060711

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v6, v0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v6, :cond_a

    const v6, 0x7f0607ba

    goto :goto_7

    :cond_a
    const v6, 0x7f0607b9

    :goto_7
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    new-instance v6, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v7, v2

    invoke-direct {v6, v5, v7, v3}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;-><init>(I[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Landroidx/picker3/widget/SeslColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroidx/picker3/widget/SeslColorPicker$$ExternalSyntheticLambda0;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    :cond_b
    const v1, 0x7f0a0b07

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0b22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0b03

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    const v1, 0x7f0a0b05

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    new-instance v3, Landroidx/picker3/widget/SeslColorPicker$15;

    invoke-direct {v3, v0}, Landroidx/picker3/widget/SeslColorPicker$15;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v1, ""

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    :goto_8
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ge v2, v1, :cond_c

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Landroidx/picker3/widget/SeslColorPicker$16;

    invoke-direct {v3, v0, v1}, Landroidx/picker3/widget/SeslColorPicker$16;-><init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Landroidx/picker3/widget/SeslColorPicker$13;

    invoke-direct {v3, v0, v2}, Landroidx/picker3/widget/SeslColorPicker$13;-><init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_9

    :cond_d
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    new-instance v2, Landroidx/picker3/widget/SeslColorPicker$14;

    invoke-direct {v2, v0}, Landroidx/picker3/widget/SeslColorPicker$14;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public final initColorSpectrumView()V
    .locals 4

    const v0, 0x7f0a0b09

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker3/widget/SeslColorSpectrumView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    const v0, 0x7f0a0b0a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSpectrumViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$6;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$6;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorPicker$6;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$7;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$7;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$8;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$8;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final initOpacitySeekBar(Z)V
    .locals 4

    const v0, 0x7f0a0b13

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker3/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    const v0, 0x7f0a0b14

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0b12

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/16 v2, 0xff

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/picker3/widget/SeslOpacitySeekBar;->initColor(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f081118

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p1, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f081119

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$11;

    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$11;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$12;

    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$12;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f131186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f13118e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f13116e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final mapColorOnColorWheel(I)V
    .locals 6

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    const/16 v1, 0xff

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object v2

    iget-boolean v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iget-boolean v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iput v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->currentCursorColor:I

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/picker3/widget/SeslColorSwatchView;->setShadowRect(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0xb

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    iput v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView;->setColor(I)V

    :cond_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_4

    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->initColor(I)V

    iget-object v2, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v2, v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslOpacitySeekBar;->initColor(I)V

    iget-object v2, v0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, v0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v2, v0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    :cond_6
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v2, 0x2

    aget v3, v0, v2

    iget v4, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v2

    invoke-static {v4, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iput v1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorColor(I)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    aput v3, v0, v2

    iget v1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iput v4, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v4, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    :cond_7
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_8
    return-void
.end method

.method public final setCurrentColorViewDescription(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f131185

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f131160

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08111f

    goto :goto_0

    :cond_0
    const v1, 0x7f08111e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p2, 0x3d

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    new-instance v2, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x0

    invoke-direct {v2, p2, v3, v0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;-><init>(I[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f020039

    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker3/widget/SeslColorPicker$17;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateCurrentColor()V
    .locals 9

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    const-string v2, "%d"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget v4, v4, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-virtual {v1, v3, v4}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(II)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    :cond_1
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    :cond_2
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorColor(I)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/picker3/widget/SeslColorSpectrumView;->setColor(I)V

    :cond_3
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_5

    const/16 v5, 0xff

    invoke-static {v0, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%08x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f13114d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f131198

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    aput v5, v7, v3

    goto :goto_0

    :cond_4
    iget-object v5, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    aput v0, v5, v3

    :goto_0
    iget-object v5, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v7, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v5, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x3

    new-array v5, v5, [F

    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v0, v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    iget-object v6, v4, Landroidx/picker3/widget/SeslGradientColorSeekBar;->mColors:[I

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v6, v3

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_5
    iput-boolean v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    :cond_6
    return-void
.end method

.method public final updateHexAndRGBValues(I)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%08x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const-string v0, "#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final updateRecentColorLayout()V
    .locals 9

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f131187

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x7

    sput v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    sput v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    :goto_1
    move v4, v1

    :goto_2
    sget v5, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ge v4, v0, :cond_2

    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v5, v6}, Landroidx/picker3/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    invoke-virtual {v8, v7}, Landroidx/picker3/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v7, v8, v2, v3}, Landroidx/datastore/preferences/core/MutablePreferences$toString$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iget-object v2, v2, Landroidx/picker3/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iget-object v0, v0, Landroidx/picker3/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    :cond_6
    return-void
.end method
