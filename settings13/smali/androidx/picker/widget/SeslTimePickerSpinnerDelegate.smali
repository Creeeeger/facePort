.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;
.super Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;
.source "SeslTimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;,
        Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;,
        Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C


# instance fields
.field private final mAmPmMarginInside:Landroid/view/View;

.field private final mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDTPaddingLeft:Landroid/view/View;

.field private final mDTPaddingRight:Landroid/view/View;

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mHourFormat:C

.field private final mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsAmPmAutoFlipped:Z

.field private mIsDateTimeMode:Z

.field private mIsEditTextMode:Z

.field private mIsEnabled:Z

.field private mIsInvalidMinute:Z

.field private mIsMarginLeftShown:Z

.field private mLayoutMode:I

.field private mMinuteInterval:I

.field private final mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private final mPaddingLeft:Landroid/view/View;

.field private final mPaddingRight:Landroid/view/View;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mSkipToChangeInterval:Z

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mTimeLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

    .line 1217
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data
.end method

.method constructor <init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 125
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;-><init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    .line 79
    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 105
    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    .line 119
    iput v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteInterval:I

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/EditText;

    .line 121
    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 337
    new-instance v3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$4;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$4;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    .line 982
    new-instance v3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 127
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroidx/picker/R$styleable;->TimePicker:[I

    invoke-virtual {v3, p3, v4, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 128
    sget p4, Landroidx/picker/R$styleable;->TimePicker_dateTimeMode:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsDateTimeMode:Z

    .line 129
    sget p4, Landroidx/picker/R$styleable;->TimePicker_timeLayoutMode:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mLayoutMode:I

    .line 130
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    iget-object p3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 133
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isDateTimeMode()Z

    move-result p4

    const/4 p5, 0x2

    if-eqz p4, :cond_2

    .line 134
    iget p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mLayoutMode:I

    if-ne p4, v1, :cond_0

    .line 135
    sget p4, Landroidx/picker/R$layout;->sesl_spinning_datepicker_time_picker_spinner_phone:I

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p3, p4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_0
    if-ne p4, p5, :cond_1

    .line 137
    sget p4, Landroidx/picker/R$layout;->sesl_spinning_datepicker_time_picker_spinner_multipane:I

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p3, p4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 139
    :cond_1
    sget p4, Landroidx/picker/R$layout;->sesl_spinning_datepicker_time_picker_spinner:I

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p3, p4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 142
    :cond_2
    sget p4, Landroidx/picker/R$layout;->sesl_time_picker_spinner:I

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p3, p4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 146
    :goto_0
    sget p3, Landroidx/picker/R$id;->sesl_timepicker_hour:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslNumberPicker;

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 147
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroidx/picker/R$string;->sesl_time_picker_hour:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 148
    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {p1, p3}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 149
    new-instance p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    invoke-direct {p3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p1, p3}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 177
    sget p3, Landroidx/picker/R$id;->numberpicker_input:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 178
    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const v3, 0x2000005

    .line 179
    invoke-virtual {p4, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 180
    invoke-virtual {p1, p5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 181
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget p4, Landroidx/picker/R$id;->sesl_timepicker_divider:I

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 186
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setDividerText()V

    .line 188
    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt p4, v3, :cond_4

    .line 192
    sget p4, Landroidx/picker/R$dimen;->sesl_time_picker_dialog_min_width:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    goto :goto_1

    :cond_4
    int-to-float p4, p4

    .line 196
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 195
    invoke-static {v1, p4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p4, v3

    float-to-int p4, p4

    iput p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    .line 198
    :goto_1
    sget p4, Landroidx/picker/R$dimen;->sesl_time_picker_spinner_height:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    .line 201
    iget-object p4, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v3, Landroidx/picker/R$id;->sesl_timepicker_minute:I

    invoke-virtual {p4, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/picker/widget/SeslNumberPicker;

    iput-object p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 203
    invoke-virtual {p4}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 204
    invoke-virtual {p4, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v3, 0x3b

    .line 205
    invoke-virtual {p4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    const-wide/16 v3, 0x64

    .line 206
    invoke-virtual {p4, v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 207
    invoke-virtual {p4, v1}, Landroidx/picker/widget/SeslNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    .line 208
    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroidx/picker/widget/SeslNumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V

    .line 209
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/picker/R$string;->sesl_time_picker_minute:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {p4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 211
    new-instance v3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$2;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$2;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 217
    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v4, 0x2000006

    .line 218
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 219
    invoke-virtual {p4, p5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 220
    iget-object p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, p4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 223
    invoke-static {p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 226
    iget-object p4, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v3, Landroidx/picker/R$id;->sesl_timepicker_ampm:I

    invoke-virtual {p4, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 227
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v4, Landroidx/picker/R$id;->sesl_datetimepicker_padding_right:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingRight:Landroid/view/View;

    .line 228
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v4, Landroidx/picker/R$id;->sesl_datetimepicker_padding_left:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingLeft:Landroid/view/View;

    .line 229
    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsMarginLeftShown:Z

    .line 231
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v4, Landroidx/picker/R$id;->sesl_timepicker_padding_left:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    .line 232
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v4, Landroidx/picker/R$id;->sesl_timepicker_padding_right:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    .line 233
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v4, Landroidx/picker/R$id;->sesl_timepicker_hour_minute_layout:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTimeLayout:Landroid/widget/LinearLayout;

    .line 235
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v4, Landroidx/picker/R$id;->sesl_timepicker_ampm_picker_margin:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    .line 236
    check-cast p4, Landroidx/picker/widget/SeslNumberPicker;

    iput-object p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 237
    invoke-virtual {p4}, Landroidx/picker/widget/SeslNumberPicker;->setAmPm()V

    .line 238
    invoke-virtual {p4, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 239
    invoke-virtual {p4, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 240
    invoke-virtual {p4, p2}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 241
    new-instance v3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$3;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$3;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 259
    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 260
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 261
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 262
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 263
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 266
    aget-object p2, p2, v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p2

    if-eq p2, v1, :cond_6

    if-ne p2, p5, :cond_5

    goto :goto_2

    :cond_5
    move p2, v0

    goto :goto_3

    :cond_6
    :goto_2
    move p2, v1

    .line 271
    :goto_3
    iget-object p3, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p3, p3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p3

    if-eq p3, v1, :cond_8

    if-ne p3, p5, :cond_7

    goto :goto_4

    :cond_7
    move p3, v0

    goto :goto_5

    :cond_8
    :goto_4
    move p3, v1

    .line 275
    :goto_5
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result p4

    if-eqz p4, :cond_9

    if-eq p3, p2, :cond_a

    :cond_9
    if-nez p4, :cond_b

    if-eq p3, p2, :cond_b

    .line 279
    :cond_a
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->changeAmPmView()V

    .line 282
    :cond_b
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    .line 285
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    .line 286
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 289
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 290
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 292
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_c

    .line 293
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 297
    :cond_c
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_d

    .line 298
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 301
    :cond_d
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setTextWatcher()V

    .line 302
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isDateTimeMode()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 303
    sget p2, Landroidx/picker/R$dimen;->sesl_spinning_date_picker_date_spinner_text_size:I

    .line 304
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x43200000    # 160.0f

    mul-float/2addr p2, p3

    .line 305
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 306
    invoke-virtual {p0, v0, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(IF)V

    .line 307
    invoke-virtual {p0, v1, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(IF)V

    .line 308
    invoke-virtual {p0, v2, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(IF)V

    .line 309
    invoke-virtual {p0, p5, p2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(IF)V

    :cond_e
    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return p0
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)C
    .locals 0

    .line 61
    iget-char p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    return p0
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    return p0
.end method

.method static synthetic access$1102(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    return p1
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$1400(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    return p0
.end method

.method static synthetic access$1702(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    return p1
.end method

.method static synthetic access$1800()[C
    .locals 1

    .line 61
    sget-object v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    return p0
.end method

.method static synthetic access$202(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return p0
.end method

.method static synthetic access$402(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return p1
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->validCheck()V

    return-void
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateModeState(Z)V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .locals 5

    .line 475
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_0

    .line 476
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    .line 477
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v3, 0x0

    .line 484
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 488
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p1, 0x1

    if-ge v1, v0, :cond_1

    .line 492
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    .line 494
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    move p1, v1

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3
.end method

.method private changeAmPmView()V
    .locals 3

    .line 328
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    sget v1, Landroidx/picker/R$id;->sesl_timepicker_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isDateTimeMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/2addr v2, v1

    .line 333
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 334
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 925
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 926
    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    const-class v2, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v1, v2, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    .line 928
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p0

    .line 929
    invoke-static {v1}, Landroidx/reflect/icu/SeslLocaleDataReflector;->getAmpmNarrowStrings(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-static {}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 932
    aget-object v1, p0, v4

    aput-object v1, v0, v4

    .line 933
    aget-object p0, p0, v3

    aput-object p0, v0, v3

    goto :goto_2

    .line 935
    :cond_0
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_1

    aget-object v2, v1, v4

    goto :goto_0

    :cond_1
    aget-object v2, p0, v4

    :goto_0
    aput-object v2, v0, v4

    .line 936
    aget-object v2, p0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    aget-object p0, v1, v3

    goto :goto_1

    :cond_2
    aget-object p0, p0, v3

    :goto_1
    aput-object p0, v0, v3

    :goto_2
    return-object v0
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 514
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private getHourFormatData()V
    .locals 5

    .line 361
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 362
    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 361
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 364
    iput-boolean v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :goto_1
    if-ge v2, v1, :cond_3

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    :cond_2
    :goto_2
    iput-char v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_3

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    .line 372
    iput-boolean v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method private static getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 443
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 444
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x48

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x68

    if-eq v3, v4, :cond_1

    const/16 v4, 0x6b

    if-eq v3, v4, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    .line 458
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 459
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 460
    invoke-static {v2, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result p0

    .line 461
    invoke-virtual {v2, v0, p0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string p0, ":"

    return-object p0
.end method

.method private getMinuteInterval()I
    .locals 0

    .line 726
    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteInterval:I

    return p0
.end method

.method private isAmPmAtStart()Z
    .locals 1

    .line 380
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v0, "hm"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "a"

    .line 382
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isCharacterNumberLanguage()Z
    .locals 2

    .line 974
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lo"

    .line 975
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ur"

    .line 976
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method private isDateTimeMode()Z
    .locals 0

    .line 966
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsDateTimeMode:Z

    return p0
.end method

.method private static isMeaLanguage()Z
    .locals 2

    .line 969
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lo"

    .line 970
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method private onTimeChanged()V
    .locals 3

    .line 845
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 846
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 847
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result p0

    .line 846
    invoke-interface {v0, v1, v2, p0}, Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;->onTimeChanged(Landroidx/picker/widget/SeslTimePicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2

    .line 532
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    .line 538
    iput-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 543
    iput-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_2

    move p1, v0

    .line 548
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 550
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    .line 552
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method private setDividerText()V
    .locals 4

    .line 394
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hm"

    .line 395
    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 405
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, "sec-roboto-condensed-light"

    .line 406
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "sec-roboto-light"

    .line 407
    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 409
    invoke-virtual {v1, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "sans-serif-thin"

    .line 413
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 418
    :goto_1
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_font_clock"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 420
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setMinuteInterval(I)V
    .locals 0

    .line 733
    iput p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteInterval:I

    return-void
.end method

.method private setTextWatcher()V
    .locals 5

    .line 1162
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1163
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1165
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4, v2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1167
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1170
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1171
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private updateAmPmControl()V
    .locals 5

    .line 761
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 764
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isDateTimeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x440c0000    # 560.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 766
    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x45408000    # 3080.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 771
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 773
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsMarginLeftShown:Z

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 777
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingLeft:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 781
    :cond_2
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 782
    iget-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4, v0}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 783
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 785
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isDateTimeMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 786
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 787
    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 790
    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x4528c000    # 2700.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 794
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 796
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsMarginLeftShown:Z

    if-eqz v0, :cond_4

    .line 800
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingLeft:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateHourControl()V
    .locals 4

    .line 852
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 854
    iget-char v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    .line 855
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 856
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 859
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 863
    :cond_1
    iget-char v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v3, 0x4b

    if-ne v0, v3, :cond_2

    .line 864
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 865
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 868
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 871
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroidx/picker/widget/SeslNumberPicker$Formatter;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslNumberPicker;->setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 742
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 745
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 747
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    .line 748
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 750
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 752
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    .line 753
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateModeState(Z)V
    .locals 1

    .line 347
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 351
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 354
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 355
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_2
    return-void
.end method

.method private validCheck()V
    .locals 3

    .line 807
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_5

    .line 808
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 813
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-nez v1, :cond_2

    .line 814
    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    const/16 v2, 0xc

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 820
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 821
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 823
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 824
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 827
    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 828
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_5
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 693
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getBaseline()I
    .locals 0

    .line 671
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getDefaultHeight()I
    .locals 0

    .line 1158
    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    return p0
.end method

.method public getDefaultWidth()I
    .locals 0

    .line 1153
    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    return p0
.end method

.method public getHour()I
    .locals 2

    .line 558
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v0

    .line 559
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 561
    :cond_0
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz p0, :cond_1

    .line 562
    rem-int/lit8 v0, v0, 0xc

    return v0

    .line 564
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getMinute()I
    .locals 0

    .line 601
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p0

    return p0
.end method

.method public is24Hour()Z
    .locals 0

    .line 630
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    return p0
.end method

.method public isEditTextMode()Z
    .locals 0

    .line 1052
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 666
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 676
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 714
    const-class p0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 719
    const-class p0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 700
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    .line 705
    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 706
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 707
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 708
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 707
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    .line 709
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 686
    check-cast p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;

    .line 687
    invoke-virtual {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 688
    invoke-virtual {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3

    .line 681
    new-instance v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public requestLayout()V
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 318
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 321
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_2

    .line 322
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public set5MinuteInterval(Z)V
    .locals 4

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    .line 636
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result p1

    const/16 v1, 0x3a

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    .line 637
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result p1

    const/16 v1, 0x17

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    .line 638
    :goto_0
    invoke-direct {p0, p1, v3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 640
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslNumberPicker;->setCustomIntervalValue(I)V

    .line 641
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslNumberPicker;->applyWheelCustomInterval(Z)V

    .line 642
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinuteInterval(I)V

    goto :goto_1

    .line 644
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setCustomIntervalValue(I)V

    :goto_1
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 0

    .line 840
    invoke-super {p0, p1}, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 841
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4

    .line 1014
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1018
    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    .line 1019
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 1020
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1022
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1023
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_3

    .line 1026
    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1027
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 1030
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 1029
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1032
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    new-instance v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1045
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

    if-eqz v0, :cond_4

    .line 1046
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-interface {v0, p0, p1}, Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Landroidx/picker/widget/SeslTimePicker;Z)V

    :cond_4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 655
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 659
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 660
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 661
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    .line 527
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    .line 606
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    .line 612
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 613
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    .line 614
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    const/4 p1, 0x0

    .line 616
    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 617
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method public setMinute(I)V
    .locals 3

    .line 572
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getMinuteInterval()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 575
    iget-boolean v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_0

    .line 576
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_1

    .line 578
    :cond_0
    rem-int v0, p1, v0

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->applyWheelCustomInterval(Z)V

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->applyWheelCustomInterval(Z)V

    .line 584
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_1

    .line 587
    :cond_2
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 588
    invoke-static {}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    :cond_3
    return-void

    .line 594
    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 596
    :goto_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public setNumberPickerTextSize(IF)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1110
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    .line 1107
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1104
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    .line 1101
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    .line 1098
    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnTimeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 650
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
    .locals 3

    .line 1057
    invoke-direct {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    .line 1059
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    add-int/lit8 v2, p1, 0x37

    invoke-virtual {v0, v2, v1}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    .line 1060
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    add-int/lit8 p1, p1, 0x6e

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    .line 1063
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    add-int/lit8 v2, p1, 0x37

    invoke-virtual {v0, v2, p2}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    .line 1064
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    add-int/lit8 p1, p1, 0x6e

    invoke-virtual {p0, p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    :goto_0
    return-void
.end method
