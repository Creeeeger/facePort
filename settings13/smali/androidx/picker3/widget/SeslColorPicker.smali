.class public Landroidx/picker3/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker3/widget/SeslColorPicker$PickedColor;,
        Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field static RECENT_COLOR_SLOT_COUNT:I = 0x6


# instance fields
.field private beforeValue:Ljava/lang/String;

.field editTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mColorDescription:[Ljava/lang/String;

.field private mColorPickerBlueEditText:Landroid/widget/EditText;

.field private mColorPickerGreenEditText:Landroid/widget/EditText;

.field private mColorPickerHexEditText:Landroid/widget/EditText;

.field private mColorPickerOpacityEditText:Landroid/widget/EditText;

.field private mColorPickerRedEditText:Landroid/widget/EditText;

.field private mColorPickerSaturationEditText:Landroid/widget/EditText;

.field private mColorPickerTabSpectrumText:Landroid/widget/TextView;

.field private mColorPickerTabSwatchesText:Landroid/widget/TextView;

.field private mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

.field private mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mFlagVar:Z

.field private mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

.field private mGradientSeekBarContainer:Landroid/widget/LinearLayout;

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mIsLightTheme:Z

.field private mIsOpacityBarEnabled:Z

.field mIsSpectrumSelected:Z

.field private mOnColorChangedListener:Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

.field private mOpacityLayout:Landroid/widget/LinearLayout;

.field private mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

.field private mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field private mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

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

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mShowOpacitySeekbar:Z

.field private final mSmallestWidthDp:[I

.field private mSpectrumViewContainer:Landroid/widget/FrameLayout;

.field private mSwatchViewContainer:Landroid/widget/FrameLayout;

.field private mTabLayoutContainer:Landroid/widget/LinearLayout;

.field private mTextFromRGB:Z

.field private mfromEditText:Z

.field private mfromRGB:Z

.field private mfromSaturationSeekbar:Z

.field private mfromSpectrumTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 52
    fill-array-data p2, :array_0

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mSmallestWidthDp:[I

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 60
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    .line 62
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsSpectrumSelected:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 134
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    .line 135
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    .line 136
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    .line 137
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    .line 138
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    .line 962
    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$15;

    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$15;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    .line 143
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 146
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    move p2, v3

    :cond_0
    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Landroidx/picker/R$layout;->sesl_color_picker_oneui_3_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    new-instance p1, Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-direct {p1}, Landroidx/picker3/widget/SeslRecentColorInfo;-><init>()V

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    .line 153
    invoke-virtual {p1}, Landroidx/picker3/widget/SeslRecentColorInfo;->getRecentColorInfo()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 155
    sget p1, Landroidx/picker/R$id;->sesl_color_picker_tab_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mTabLayoutContainer:Landroid/widget/LinearLayout;

    .line 156
    new-instance p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-direct {p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 158
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initDialogPadding()V

    .line 159
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initCurrentColorView()V

    .line 160
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initColorSwatchView()V

    .line 161
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initGradientColorSeekBar()V

    .line 162
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initColorSpectrumView()V

    .line 163
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mShowOpacitySeekbar:Z

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->initOpacitySeekBar(Z)V

    .line 164
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initRecentColorLayout()V

    .line 165
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    .line 167
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->setInitialColors()V

    .line 168
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initCurrentColorValuesLayout()V

    return-void

    nop

    :array_0
    .array-data 4
        0x140
        0x168
        0x19b
    .end array-data
.end method

.method static synthetic access$000(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslOpacitySeekBar;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/picker3/widget/SeslColorPicker;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    return p0
.end method

.method static synthetic access$1002(Landroidx/picker3/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    return p1
.end method

.method static synthetic access$1100(Landroidx/picker3/widget/SeslColorPicker;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    return p0
.end method

.method static synthetic access$1102(Landroidx/picker3/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    return p1
.end method

.method static synthetic access$1200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1302(Landroidx/picker3/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    return p1
.end method

.method static synthetic access$1400(Landroidx/picker3/widget/SeslColorPicker;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    return p0
.end method

.method static synthetic access$1402(Landroidx/picker3/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    return p1
.end method

.method static synthetic access$1500(Landroidx/picker3/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/picker3/widget/SeslColorPicker;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Landroidx/picker3/widget/SeslColorPicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexData()V

    return-void
.end method

.method static synthetic access$2200(Landroidx/picker3/widget/SeslColorPicker;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2300(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2400(Landroidx/picker3/widget/SeslColorPicker;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method static synthetic access$302(Landroidx/picker3/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic access$400(Landroidx/picker3/widget/SeslColorPicker;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslColorPicker$PickedColor;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    return-void
.end method

.method static synthetic access$700(Landroidx/picker3/widget/SeslColorPicker;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    return-void
.end method

.method static synthetic access$800(Landroidx/picker3/widget/SeslColorPicker;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    return p0
.end method

.method static synthetic access$802(Landroidx/picker3/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    return p1
.end method

.method static synthetic access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    return-object p0
.end method

.method private initColorSpectrumView()V
    .locals 6

    .line 427
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_color_spectrum_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker3/widget/SeslColorSpectrumView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 428
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_color_spectrum_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSpectrumViewContainer:Landroid/widget/FrameLayout;

    .line 429
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$5;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$5;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView;->setOnSpectrumColorChangedListener(Landroidx/picker3/widget/SeslColorSpectrumView$SpectrumColorChangedListener;)V

    .line 449
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$6;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$6;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 493
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$7;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$7;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initColorSwatchView()V
    .locals 2

    .line 407
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_color_swatch_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker3/widget/SeslColorSwatchView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 408
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_color_swatch_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSwatchViewContainer:Landroid/widget/FrameLayout;

    .line 409
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$4;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$4;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroidx/picker3/widget/SeslColorSwatchView;->setOnColorSwatchChangedListener(Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;)V

    return-void
.end method

.method private initCurrentColorValuesLayout()V
    .locals 2

    .line 657
    sget v0, Landroidx/picker/R$id;->sesl_color_hex_edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 658
    sget v0, Landroidx/picker/R$id;->sesl_color_red_edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 659
    sget v0, Landroidx/picker/R$id;->sesl_color_blue_edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 660
    sget v0, Landroidx/picker/R$id;->sesl_color_green_edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 662
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    const-string v1, "disableDirectWriting=true;"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->setTextWatcher()V

    .line 670
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$12;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$12;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 3

    .line 233
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_current_color_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 234
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_picked_color_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 236
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    .line 237
    sget v1, Landroidx/picker/R$color;->sesl_color_picker_selected_color_item_text_color_light:I

    goto :goto_0

    .line 238
    :cond_0
    sget v1, Landroidx/picker/R$color;->sesl_color_picker_selected_color_item_text_color_dark:I

    .line 236
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 240
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_swatches_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    .line 241
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_spectrum_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    .line 242
    sget v0, Landroidx/picker/R$id;->sesl_color_seek_bar_opacity_value_edit_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    .line 243
    sget v0, Landroidx/picker/R$id;->sesl_color_seek_bar_saturation_value_edit_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 244
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    const-string v1, "disableDirectWriting=true;"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_tab_selector_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_tab_selector_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 252
    :goto_1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget v1, Landroidx/picker/R$style;->TabTextSelected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 254
    iget-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_dialog_body_text_color_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 257
    :cond_2
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_dialog_body_text_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :goto_2
    iget-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_secondary_text_color_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 262
    :cond_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_secondary_text_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    :goto_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 265
    iput-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    .line 267
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 268
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 270
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 273
    :cond_4
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 276
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$1;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$1;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$2;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$2;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 331
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$3;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$3;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private initDialogPadding()V
    .locals 4

    .line 190
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 192
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float v2, v1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 195
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float v1, v0, v1

    float-to-int v1, v1

    .line 198
    invoke-direct {p0, v1}, Landroidx/picker3/widget/SeslColorPicker;->isContains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$dimen;->sesl_color_picker_seekbar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 201
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_dialog_padding_left:I

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

    .line 206
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_dialog_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 208
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_dialog_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 211
    sget v3, Landroidx/picker/R$id;->sesl_color_picker_main_content_container:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 214
    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 5

    .line 505
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_saturation_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientSeekBarContainer:Landroid/widget/LinearLayout;

    .line 506
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_saturation_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker3/widget/SeslGradientColorSeekBar;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 508
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_saturation_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 510
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->init(Ljava/lang/Integer;)V

    .line 512
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroidx/picker3/widget/SeslColorPicker$8;

    invoke-direct {v2, p0}, Landroidx/picker3/widget/SeslColorPicker$8;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 560
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroidx/picker3/widget/SeslColorPicker$9;

    invoke-direct {v2, p0}, Landroidx/picker3/widget/SeslColorPicker$9;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$string;->sesl_color_picker_hue_and_saturation:I

    .line 580
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_slider:I

    .line 581
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 582
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 579
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecentColorLayout()V
    .locals 6

    .line 809
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_used_color_item_list_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 812
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$string;->sesl_color_picker_color_one:I

    .line 813
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_two:I

    .line 814
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$string;->sesl_color_picker_color_three:I

    .line 815
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v5, Landroidx/picker/R$string;->sesl_color_picker_color_four:I

    .line 816
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v5, Landroidx/picker/R$string;->sesl_color_picker_color_five:I

    .line 817
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v5, Landroidx/picker/R$string;->sesl_color_picker_color_six:I

    .line 818
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v5, Landroidx/picker/R$string;->sesl_color_picker_color_seven:I

    .line 819
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    iput-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 822
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v2, :cond_0

    .line 823
    sget v2, Landroidx/picker/R$color;->sesl_color_picker_used_color_item_empty_slot_color_light:I

    goto :goto_0

    .line 824
    :cond_0
    sget v2, Landroidx/picker/R$color;->sesl_color_picker_used_color_item_empty_slot_color_dark:I

    .line 822
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 827
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/picker3/widget/SeslColorPicker;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 828
    sput v0, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    goto :goto_1

    .line 830
    :cond_1
    sput v5, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    :goto_1
    move v0, v3

    .line 833
    :goto_2
    sget v2, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v0, v2, :cond_2

    .line 834
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 835
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Landroidx/picker3/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 836
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 837
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private isContains(I)Z
    .locals 4

    .line 223
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSmallestWidthDp:[I

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

.method private static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 1145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapColorOnColorWheel(I)V
    .locals 6

    .line 991
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 993
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->updateCursorPosition(I)V

    .line 996
    :cond_0
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView;->setColor(I)V

    .line 999
    :cond_1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    if-eqz v0, :cond_2

    .line 1000
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->restoreColor(I)V

    .line 1002
    :cond_2
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_3

    .line 1003
    invoke-virtual {v0, p1}, Landroidx/picker3/widget/SeslOpacitySeekBar;->restoreColor(I)V

    .line 1005
    :cond_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1006
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1007
    invoke-direct {p0, p1, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 1010
    :cond_4
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-eqz p1, :cond_5

    .line 1011
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getV()F

    move-result p1

    .line 1012
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getAlpha()I

    move-result v0

    .line 1014
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 1015
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    .line 1016
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorColor(I)V

    .line 1017
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2, p1}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 1018
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {p1, v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    .line 1021
    :cond_5
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    if-eqz p1, :cond_6

    .line 1022
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    .line 1023
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 1024
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "%d"

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    return-void
.end method

.method private setCurrentColorViewDescription(II)V
    .locals 2

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    invoke-virtual {v1, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, ", "

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 1044
    :cond_1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget p2, Landroidx/picker/R$string;->sesl_color_picker_new:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1040
    :cond_2
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget p2, Landroidx/picker/R$string;->sesl_color_picker_current:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 6

    .line 946
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz v1, :cond_0

    .line 947
    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_used_color_item_slot_light:I

    goto :goto_0

    .line 948
    :cond_0
    sget v1, Landroidx/picker/R$drawable;->sesl_color_picker_used_color_item_slot_dark:I

    .line 946
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_1

    .line 952
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    const/16 p2, 0x3d

    const/4 v1, 0x0

    .line 955
    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 956
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v4, v3, [[I

    new-array v5, v1, [I

    aput-object v5, v4, v1

    new-array v3, v3, [I

    aput p2, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 958
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    .line 907
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    :cond_0
    return-void
.end method

.method private setTextWatcher()V
    .locals 3

    .line 682
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/picker3/widget/SeslColorPicker$13;

    invoke-direct {v1, p0}, Landroidx/picker3/widget/SeslColorPicker$13;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, ""

    .line 712
    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 715
    new-instance v2, Landroidx/picker3/widget/SeslColorPicker$14;

    invoke-direct {v2, p0, v1}, Landroidx/picker3/widget/SeslColorPicker$14;-><init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCurrentColor()V
    .locals 11

    .line 914
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 916
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    const-string v2, "%d"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v7}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getAlpha()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(II)V

    .line 918
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 919
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 923
    :cond_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 924
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 925
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v5}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 927
    :cond_1
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_2

    .line 928
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 930
    :cond_2
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-eqz v1, :cond_3

    .line 931
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroidx/picker3/widget/SeslColorSpectrumView;->updateCursorColor(I)V

    .line 932
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroidx/picker3/widget/SeslColorSpectrumView;->setColor(I)V

    .line 934
    :cond_3
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_4

    .line 935
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 936
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/picker3/widget/SeslGradientColorSeekBar;->changeColorBase(I)V

    .line 937
    iput-boolean v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    .line 938
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 940
    iput-boolean v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    :cond_4
    return-void
.end method

.method private updateHexAndRGBValues(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    and-int/lit8 p1, p1, -0x1

    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%08x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 798
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 799
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 802
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateHexData()V
    .locals 5

    .line 775
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "0"

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 776
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 777
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 778
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 779
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    and-int/lit8 v3, v0, -0x1

    .line 780
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 782
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 785
    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    if-nez v1, :cond_3

    .line 786
    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 789
    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    if-eqz p0, :cond_4

    .line 790
    invoke-interface {p0, v0}, Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Landroidx/picker3/widget/SeslRecentColorInfo;
    .locals 0

    .line 1068
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    return-object p0
.end method

.method public initOpacitySeekBar(Z)V
    .locals 4

    .line 587
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker3/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 588
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_opacity_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 589
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_opacity_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacityLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 591
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    :goto_0
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-nez p1, :cond_1

    .line 596
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 600
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/picker3/widget/SeslOpacitySeekBar;->init(Ljava/lang/Integer;)V

    .line 601
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$10;

    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$10;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 634
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    new-instance v0, Landroidx/picker3/widget/SeslColorPicker$11;

    invoke-direct {v0, p0}, Landroidx/picker3/widget/SeslColorPicker$11;-><init>(Landroidx/picker3/widget/SeslColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$string;->sesl_color_picker_opacity:I

    .line 651
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$string;->sesl_color_picker_slider:I

    .line 652
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/picker/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 653
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 650
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isUserInputValid()Z
    .locals 0

    .line 1076
    iget-boolean p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 347
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_swatches_text_view:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 348
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 349
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget v0, Landroidx/picker/R$drawable;->sesl_color_picker_tab_selector_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget v0, Landroidx/picker/R$drawable;->sesl_color_picker_tab_selector_bg_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 354
    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 355
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 356
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p1, :cond_1

    .line 357
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_dialog_body_text_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_dialog_body_text_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    :goto_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget v0, Landroidx/picker/R$style;->TabTextSelected:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 363
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p1, :cond_2

    .line 364
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_secondary_text_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 366
    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_secondary_text_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    :goto_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSwatchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSpectrumViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 372
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientSeekBarContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 374
    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 375
    :cond_4
    sget v0, Landroidx/picker/R$id;->sesl_color_picker_spectrum_text_view:I

    if-ne p1, v0, :cond_8

    .line 376
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 377
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 378
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p1, :cond_5

    .line 379
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    sget v0, Landroidx/picker/R$drawable;->sesl_color_picker_tab_selector_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 381
    :cond_5
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    sget v0, Landroidx/picker/R$drawable;->sesl_color_picker_tab_selector_bg_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 383
    :goto_3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 384
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorPicker;->initColorSpectrumView()V

    .line 386
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p1, :cond_6

    .line 387
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_dialog_body_text_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 389
    :cond_6
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_dialog_body_text_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    :goto_4
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSpectrumText:Landroid/widget/TextView;

    sget v0, Landroidx/picker/R$style;->TabTextSelected:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 393
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsLightTheme:Z

    if-eqz p1, :cond_7

    .line 394
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_secondary_text_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 396
    :cond_7
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_secondary_text_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    :goto_5
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerTabSwatchesText:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 399
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSwatchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 400
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSpectrumViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 401
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_6
    return-void
.end method

.method public saveSelectedColor()V
    .locals 1

    .line 1057
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker3/widget/SeslRecentColorInfo;->saveSelectedColor(I)V

    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0

    .line 903
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Landroidx/picker3/widget/SeslColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 1

    .line 1084
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-eqz p1, :cond_0

    .line 1086
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1087
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 9

    .line 846
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 848
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v5, Landroidx/picker/R$string;->sesl_color_picker_option:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 850
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x7

    .line 851
    sput v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    .line 853
    sput v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    :goto_1
    move v4, v1

    .line 856
    :goto_2
    sget v5, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v4, v5, :cond_3

    .line 857
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ge v4, v0, :cond_2

    .line 859
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 860
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Landroidx/picker3/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    iget-object v8, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker3/widget/SeslColorSwatchView;

    invoke-virtual {v8, v6}, Landroidx/picker3/widget/SeslColorSwatchView;->getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 863
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    .line 865
    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 866
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 871
    :cond_3
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {v2}, Landroidx/picker3/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 872
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 873
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 874
    invoke-direct {p0, v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 875
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 876
    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 877
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 879
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 880
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 881
    invoke-direct {p0, v0, v1}, Landroidx/picker3/widget/SeslColorPicker;->setCurrentColorViewDescription(II)V

    .line 882
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 883
    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 884
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mCurrentColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 888
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 889
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 890
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 891
    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 892
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    :cond_6
    return-void
.end method
