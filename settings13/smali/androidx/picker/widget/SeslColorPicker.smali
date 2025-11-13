.class public Landroidx/picker/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslColorPicker$PickedColor;,
        Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mCurrentColorContainer:Landroid/view/View;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mCurrentFontScale:F

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mIsLightTheme:Z

.field private mIsOpacityBarEnabled:Z

.field private mOnColorChangedListener:Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

.field private mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

.field private mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field private mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

.field private mPickedColorContainer:Landroid/view/View;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Landroidx/picker/widget/SeslRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentlyDivider:Landroid/view/View;

.field private mRecentlyText:Landroid/widget/TextView;

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private final mSmallestWidthDp:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 45
    fill-array-data p2, :array_0

    iput-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mSmallestWidthDp:[I

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 53
    iput-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 429
    new-instance v0, Landroidx/picker/widget/SeslColorPicker$4;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslColorPicker$4;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 111
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$attr;->isLightTheme:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    move p2, v4

    :cond_0
    iput-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 115
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Landroidx/picker/R$layout;->sesl_color_picker_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    new-instance p1, Landroidx/picker/widget/SeslRecentColorInfo;

    invoke-direct {p1}, Landroidx/picker/widget/SeslRecentColorInfo;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker/widget/SeslRecentColorInfo;

    .line 120
    invoke-virtual {p1}, Landroidx/picker/widget/SeslRecentColorInfo;->getRecentColorInfo()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 122
    new-instance p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-direct {p1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 124
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->initDialogPadding()V

    .line 125
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->initCurrentColorView()V

    .line 126
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->initColorSwatchView()V

    .line 127
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->initOpacitySeekBar()V

    .line 128
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->initRecentColorLayout()V

    .line 130
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->updateCurrentColor()V

    .line 131
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->setInitialColors()V

    return-void

    nop

    :array_0
    .array-data 4
        0x140
        0x168
        0x19b
    .end array-data
.end method

.method static synthetic access$002(Landroidx/picker/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$PickedColor;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslColorPicker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/picker/widget/SeslColorPicker;->updateCurrentColor()V

    return-void
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslColorPicker;)Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslColorPicker;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslColorPicker;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private initColorSwatchView()V
    .locals 2

    .line 215
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_color_swatch_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslColorSwatchView;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    .line 217
    new-instance v1, Landroidx/picker/widget/SeslColorPicker$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslColorPicker$1;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslColorSwatchView;->setOnColorSwatchChangedListener(Landroidx/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;)V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 7

    .line 178
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_current_color_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 179
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_picked_color_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    .line 182
    sget v1, Landroidx/picker/R$color;->sesl_color_picker_selected_color_item_text_color_light:I

    goto :goto_0

    .line 183
    :cond_0
    sget v1, Landroidx/picker/R$color;->sesl_color_picker_selected_color_item_text_color_dark:I

    .line 181
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 185
    sget v1, Landroidx/picker/R$id;->sesl_color_picker_current_color_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    sget v2, Landroidx/picker/R$id;->sesl_color_picker_picked_color_text:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    const v3, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 193
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$dimen;->sesl_color_picker_selected_color_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 196
    iget v3, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float v3, v0, v3

    float-to-double v3, v3

    .line 197
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide v5, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v3, v5

    .line 196
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    iget v1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 202
    :cond_1
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_current_color_focus:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorContainer:Landroid/view/View;

    .line 203
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_picked_color_focus:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    .line 205
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 206
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 211
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private initDialogPadding()V
    .locals 4

    .line 135
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 137
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float v2, v1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 140
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float v1, v0, v1

    float-to-int v1, v1

    .line 143
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslColorPicker;->isContains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$dimen;->sesl_color_picker_seekbar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$dimen;->sesl_color_picker_dialog_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 151
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$dimen;->sesl_color_picker_dialog_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 153
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$dimen;->sesl_color_picker_dialog_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 156
    sget v3, Landroidx/picker/R$id;->sesl_color_picker_main_content_container:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 159
    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private initOpacitySeekBar()V
    .locals 5

    .line 228
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 229
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_opacity_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 231
    iget-boolean v0, p0, Landroidx/picker/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslOpacitySeekBar;->init(Ljava/lang/Integer;)V

    .line 237
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    new-instance v1, Landroidx/picker/widget/SeslColorPicker$2;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslColorPicker$2;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 266
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    new-instance v1, Landroidx/picker/widget/SeslColorPicker$3;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslColorPicker$3;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$string;->sesl_color_picker_opacity:I

    .line 282
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_slider:I

    .line 283
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 284
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecentColorLayout()V
    .locals 8

    .line 288
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_used_color_item_list_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 290
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_used_color_divider_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    .line 291
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_recently_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 293
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$string;->sesl_color_picker_color_one:I

    .line 294
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_two:I

    .line 295
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_three:I

    .line 296
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_four:I

    .line 297
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_five:I

    .line 298
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_six:I

    .line 299
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iput-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 302
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v2, :cond_0

    .line 303
    sget v2, Landroidx/picker/R$color;->sesl_color_picker_used_color_item_empty_slot_color_light:I

    goto :goto_0

    .line 304
    :cond_0
    sget v2, Landroidx/picker/R$color;->sesl_color_picker_used_color_item_empty_slot_color_dark:I

    .line 302
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_1

    .line 308
    iget-object v4, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroidx/picker/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 310
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 311
    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    :cond_1
    iget v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 316
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/picker/R$dimen;->sesl_color_picker_selected_color_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 319
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    int-to-float v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    div-float/2addr v0, v2

    float-to-double v4, v0

    .line 320
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v4, v6

    .line 319
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_3

    .line 324
    sget v1, Landroidx/picker/R$color;->sesl_color_picker_used_color_text_color_light:I

    goto :goto_2

    .line 325
    :cond_3
    sget v1, Landroidx/picker/R$color;->sesl_color_picker_used_color_text_color_dark:I

    .line 323
    :goto_2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 327
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private isContains(I)Z
    .locals 4

    .line 168
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mSmallestWidthDp:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private mapColorOnColorWheel(I)V
    .locals 1

    .line 450
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 452
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslColorSwatchView;->updateCursorPosition(I)V

    .line 455
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslOpacitySeekBar;->restoreColor(I)V

    .line 458
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x1

    .line 460
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    :cond_2
    return-void
.end method

.method private setCurrentColorViewDescription(II)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, ", "

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/picker/R$string;->sesl_color_picker_new:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/picker/R$string;->sesl_color_picker_current:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 6

    .line 413
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    .line 414
    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_used_color_item_slot_light:I

    goto :goto_0

    .line 415
    :cond_0
    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_used_color_item_slot_dark:I

    .line 413
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    const/16 p2, 0x3d

    const/4 v1, 0x0

    .line 422
    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 423
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v4, v3, [[I

    new-array v5, v1, [I

    aput-object v5, v4, v1

    new-array v3, v3, [I

    aput p2, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 425
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    :cond_0
    return-void
.end method

.method private updateCurrentColor()V
    .locals 3

    .line 397
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslOpacitySeekBar;->changeColorBase(I)V

    .line 402
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 404
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroidx/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 406
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    if-eqz p0, :cond_2

    .line 407
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Landroidx/picker/widget/SeslRecentColorInfo;
    .locals 0

    .line 503
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker/widget/SeslRecentColorInfo;

    return-object p0
.end method

.method public setOnColorChangedListener(Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0

    .line 386
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 1

    .line 519
    iput-boolean p1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 522
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
