.class public final Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DIGIT_CHARACTERS:[C


# instance fields
.field public final mAmPmMarginInside:Landroid/view/View;

.field public final mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field public mContext:Landroid/content/Context;

.field public mCurrentLocale:Ljava/util/Locale;

.field public final mDTPaddingLeft:Landroid/view/View;

.field public final mDTPaddingRight:Landroid/view/View;

.field public final mDefaultHeight:I

.field public final mDefaultWidth:I

.field public mDelegator:Landroidx/picker/widget/SeslTimePicker;

.field public final mDivider:Landroid/widget/TextView;

.field public final mEditorActionListener:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;

.field public mHourFormat:C

.field public final mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field public final mHourSpinnerInput:Landroid/widget/EditText;

.field public mHourWithTwoDigit:Z

.field public mIs24HourView:Z

.field public mIsAm:Z

.field public mIsAmPmAutoFlipped:Z

.field public final mIsDateTimeMode:Z

.field public mIsEditTextMode:Z

.field public mIsEnabled:Z

.field public mIsInvalidMinute:Z

.field public final mMinuteInterval:I

.field public final mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field public final mMinuteSpinnerInput:Landroid/widget/EditText;

.field public final mModeChangeListener:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

.field public mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;

.field public mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

.field public final mPaddingLeft:Landroid/view/View;

.field public final mPaddingRight:Landroid/view/View;

.field public final mPickerTexts:[Landroid/widget/EditText;

.field public mSkipToChangeInterval:Z

.field public mTempCalendar:Ljava/util/Calendar;

.field public final mTimeLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [C

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

.method public constructor <init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    iput-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    iput v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteInterval:I

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/EditText;

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    new-instance v3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    new-instance v4, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;

    invoke-direct {v4, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;

    sget-object v5, Landroidx/picker/R$styleable;->TimePicker:[I

    invoke-virtual {p2, p3, v5, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsDateTimeMode:Z

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v5, 0x2

    if-eqz p4, :cond_3

    if-ne p5, v1, :cond_1

    const p4, 0x7f0d0b08

    invoke-virtual {p3, p4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_1
    if-ne p5, v5, :cond_2

    const p4, 0x7f0d0b07

    invoke-virtual {p3, p4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_2
    const p4, 0x7f0d0b06

    invoke-virtual {p3, p4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_3
    const p4, 0x7f0d0b10

    invoke-virtual {p3, p4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_1
    const p3, 0x7f0a0e0f

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/picker/widget/SeslNumberPicker;

    iput-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f142b4d

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p4, p3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object v3, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    new-instance p5, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    const/4 v3, 0x0

    invoke-direct {p5, p0, v3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V

    iput-object p5, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    const p4, 0x7f0a0ac2

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    iput-object p5, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const v3, 0x2000005

    invoke-virtual {p5, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p3, v5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    invoke-virtual {p5, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p3, 0x7f0a0e0e

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    const-string p3, "hm"

    const/4 p5, 0x0

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz p1, :cond_4

    const-string p1, "Hm"

    goto :goto_2

    :cond_4
    move-object p1, p3

    :goto_2
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v3, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v3, v0

    move v4, v3

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_e

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_d

    const/16 v7, 0x27

    if-eq v6, v7, :cond_7

    const/16 v7, 0x48

    if-eq v6, v7, :cond_6

    const/16 v7, 0x4b

    if-eq v6, v7, :cond_6

    const/16 v7, 0x68

    if-eq v6, v7, :cond_6

    const/16 v7, 0x6b

    if-eq v6, v7, :cond_6

    if-nez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_6
    move v4, v1

    goto :goto_6

    :cond_7
    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-ge v1, p1, :cond_9

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_9

    invoke-virtual {v4, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move v6, v1

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p1, p1, -0x1

    move v3, v0

    move v6, v3

    :goto_4
    if-ge v3, p1, :cond_c

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_b

    add-int/lit8 v8, v3, 0x1

    if-ge v8, p1, :cond_a

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_a

    invoke-virtual {v4, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_4

    :cond_a
    invoke-virtual {v4, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    invoke-virtual {v4, v0, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_e
    const-string p1, ":"

    :goto_7
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    const-string v3, "sec-roboto-condensed-light"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const-string v4, "sec"

    invoke-static {v4, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    const/16 v6, 0x190

    invoke-static {v4, v6, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_8

    :cond_f
    const-string p1, "sans-serif-thin"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_8

    :cond_10
    move-object v3, v4

    :goto_8
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v4, "theme_font_clock"

    invoke-static {p1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_11

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    :cond_11
    move-object p1, p5

    :goto_9
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_12
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_13
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_14

    const v3, 0x7f0711b9

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    goto :goto_a

    :cond_14
    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    :goto_a
    const v3, 0x7f0711c0

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v4, 0x7f0a0e12

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    invoke-virtual {v3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    sget-object v4, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    iget-object v6, v3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v7, v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    if-ne v4, v7, :cond_15

    goto :goto_b

    :cond_15
    iput-object v4, v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f142b4e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    iget-object v6, v3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object v4, v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    new-instance v4, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    const/4 v7, 0x1

    invoke-direct {v4, p0, v7}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V

    iput-object v4, v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    invoke-virtual {v3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000006

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v3, v5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$5;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v4, Landroid/icu/text/DateFormatSymbols;

    const-class v6, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v4, v6, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p2

    const-string v6, "SeslBaseReflector"

    new-array v7, v1, [Ljava/lang/Class;

    const-string v8, "android.icu.text.DateFormatSymbols"

    :try_start_1
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    const-string v9, "Fail to get class = "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p5

    :goto_c
    aput-object v8, v7, v0

    const-string v8, "com.samsung.sesl.icu.SemDateFormatSymbols"

    const-string v9, "getAmpmNarrowStrings"

    invoke-static {v8, v9, v7}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_16

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    :try_start_2
    invoke-virtual {v7, p5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " InvocationTargetException"

    invoke-static {v7, v8, v9, v6, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_d

    :catch_3
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " IllegalArgumentException"

    invoke-static {v7, v8, v9, v6, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_d

    :catch_4
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " IllegalAccessException"

    invoke-static {v7, v8, v9, v6, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_16
    :goto_d
    move-object v4, p5

    :goto_e
    instance-of v6, v4, [Ljava/lang/String;

    if-eqz v6, :cond_17

    check-cast v4, [Ljava/lang/String;

    goto :goto_f

    :cond_17
    const-string v4, "SeslLocaleDataReflector"

    const-string v6, "amPm narrow strings failed. Use getAmPmStrings for ampm"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v4

    :goto_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "ar"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "fa"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string/jumbo v7, "ur"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_12

    :cond_18
    aget-object v6, p2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_19

    aget-object v6, v4, v0

    goto :goto_10

    :cond_19
    aget-object v6, p2, v0

    :goto_10
    aput-object v6, v3, v0

    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1a

    aget-object p2, v4, v1

    goto :goto_11

    :cond_1a
    aget-object p2, p2, v1

    :goto_11
    aput-object p2, v3, v1

    goto :goto_13

    :cond_1b
    :goto_12
    aget-object v4, p2, v0

    aput-object v4, v3, v0

    aget-object p2, p2, v1

    aput-object p2, v3, v1

    :goto_13
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v4, 0x7f0a0e0c

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v6, 0x7f0a0df8

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingRight:Landroid/view/View;

    iget-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v6, 0x7f0a0df7

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingLeft:Landroid/view/View;

    iget-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v7, 0x7f0a0e13

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    iget-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v7, 0x7f0a0e14

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    iget-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v7, 0x7f0a0e10

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTimeLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const v7, 0x7f0a0e0d

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    iput-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v7, p2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v1, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    iget-object v8, v7, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0711bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    iget-object v9, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v9, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v0, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-boolean v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v8, :cond_1c

    goto :goto_14

    :cond_1c
    iget-boolean v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v8, :cond_1d

    invoke-virtual {v7, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_1d
    iget-object v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, p5}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iput-boolean v0, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    :goto_14
    invoke-virtual {p2, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    invoke-virtual {p2, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-virtual {p2, v3}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    new-instance p5, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;

    const/4 v7, 0x2

    invoke-direct {p5, p0, v7}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V

    iget-object v7, p2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object p5, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    aget-object p4, v3, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p4

    if-eq p4, v1, :cond_1f

    if-ne p4, v5, :cond_1e

    goto :goto_15

    :cond_1e
    move p4, v0

    goto :goto_16

    :cond_1f
    :goto_15
    move p4, v1

    :goto_16
    iget-object p5, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p5, p5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p5

    if-eq p5, v1, :cond_21

    if-ne p5, v5, :cond_20

    goto :goto_17

    :cond_20
    move p5, v0

    goto :goto_18

    :cond_21
    :goto_17
    move p5, v1

    :goto_18
    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v3, p3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "a"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    if-eq p5, p4, :cond_23

    :cond_22
    if-nez p3, :cond_25

    if-eq p5, p4, :cond_25

    :cond_23
    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    const p4, 0x7f0a0e11

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsDateTimeMode:Z

    if-eqz p4, :cond_24

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, v1

    goto :goto_19

    :cond_24
    move p4, v1

    :goto_19
    invoke-virtual {p3, v6, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p3, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_25
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    if-eqz p3, :cond_26

    const/16 p4, 0xb

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p3, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p4, 0xc

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    :cond_26
    iget-boolean p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    if-nez p3, :cond_28

    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz p3, :cond_27

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_27
    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    invoke-virtual {p2, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iput-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    :cond_28
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_29

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_29
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    aput-object p3, p2, v0

    iget-object p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    aput-object p4, p2, v1

    new-instance p2, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    invoke-direct {p2, p0, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p2, p2, v1

    new-instance p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    invoke-direct {p3, p0, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p2, p2, v0

    new-instance p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {p3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p2, p2, v1

    new-instance p3, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {p3, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsDateTimeMode:Z

    if-eqz p2, :cond_2a

    const p2, 0x7f07117f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x43200000    # 160.0f

    mul-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0, p2, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(FI)V

    invoke-virtual {p0, p2, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(FI)V

    invoke-virtual {p0, p2, v2}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(FI)V

    invoke-virtual {p0, p2, v5}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setNumberPickerTextSize(FI)V

    :cond_2a
    return-void
.end method

.method public static access$1300(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getHour()I
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v0

    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz p0, :cond_1

    rem-int/lit8 v0, v0, 0xc

    return v0

    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getHourFormatData()V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :goto_1
    if-ge v2, v1, :cond_3

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

    :cond_2
    :goto_2
    iput-char v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    iput-boolean v4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    :cond_3
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTimeChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {v0, v1, p0}, Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;->onTimeChanged(II)V

    :cond_0
    return-void
.end method

.method public final setCurrentHour(IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-nez p1, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method public final setEditTextMode(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Landroidx/picker/widget/SeslTimePicker;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final setMinute(I)V
    .locals 3

    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteInterval:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_1

    :cond_0
    rem-int v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, v2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object v0, v2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_1

    :cond_2
    iget-object v0, v2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ne p1, v0, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "lo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "my"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    :goto_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public final setNumberPickerTextSize(FI)V
    .locals 3

    if-eqz p2, :cond_3

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public final updateAmPmControl()V
    .locals 6

    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    iget-boolean v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsDateTimeMode:Z

    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x440c0000    # 560.0f

    invoke-direct {v0, v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x45408000    # 3080.0f

    invoke-direct {v0, v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingLeft:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    if-nez v1, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-direct {v0, v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {v0, v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x4528c000    # 2700.0f

    invoke-direct {v0, v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingLeft:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPaddingRight:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mDTPaddingRight:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final updateHourControl()V
    .locals 5

    iget-boolean v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_1

    iget-char v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v4, 0x6b

    if-ne v0, v4, :cond_0

    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v0, 0x17

    invoke-virtual {v3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_1
    iget-char v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v4, 0x4b

    if-ne v0, v4, :cond_2

    invoke-virtual {v3, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    :goto_0
    iget-boolean p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    iget-object v0, v3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    iput-object p0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_2
    return-void
.end method
