.class Landroidx/picker/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SeslDatePickerSpinnerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;,
        Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;,
        Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDatePicker:Landroidx/picker/widget/SeslDatePicker;

.field private final mDayPaddingView:Landroid/view/View;

.field private final mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mIsEditTextMode:Z

.field private mIsLeapMonth:Z

.field private mIsLunar:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarTempDay:I

.field private mLunarTempMonth:I

.field private mLunarTempYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private final mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mToast:Landroid/widget/Toast;

.field private mToastText:Ljava/lang/String;

.field private final mYearPaddingView:Landroid/view/View;

.field private final mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 137
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    .line 92
    iput-boolean p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    const/4 p3, 0x0

    .line 101
    iput-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 105
    new-instance p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {p4, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    iput-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/widget/EditText;

    .line 792
    iput-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    .line 805
    new-instance p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$3;

    invoke-direct {p4, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$3;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    iput-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 146
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    .line 149
    sget v0, Landroidx/picker/R$layout;->sesl_date_picker_spinner:I

    const/4 v1, 0x1

    invoke-virtual {p4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    iput-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    .line 152
    invoke-virtual {p0, p4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 154
    new-instance p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;

    invoke-direct {p4, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$2;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    .line 259
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_pickers:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    .line 260
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_spinner_day_padding:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDayPaddingView:Landroid/view/View;

    .line 261
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_spinner_year_padding:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearPaddingView:Landroid/view/View;

    .line 264
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_spinner_day:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 265
    sget v2, Landroidx/picker/R$id;->numberpicker_input:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 266
    invoke-static {}, Landroidx/picker/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroidx/picker/widget/SeslNumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPicker;->setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V

    .line 267
    invoke-virtual {v0, p4}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 268
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    const/4 v3, 0x2

    .line 269
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 270
    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 273
    sget v4, Landroidx/picker/R$id;->sesl_date_picker_spinner_month:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 274
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 275
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    invoke-virtual {v4, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 p2, 0xc

    .line 277
    invoke-virtual {v4, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 278
    invoke-virtual {v4}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 279
    invoke-virtual {v4, v3}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v4, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 282
    iget p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    sub-int/2addr p2, v1

    invoke-virtual {v4, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 283
    invoke-virtual {v4, p3}, Landroidx/picker/widget/SeslNumberPicker;->setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V

    .line 284
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, p2}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 285
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 286
    invoke-virtual {v4}, Landroidx/picker/widget/SeslNumberPicker;->setMonthInputMode()V

    .line 288
    :goto_0
    invoke-virtual {v4, p4}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 289
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, p2}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 292
    sget p2, Landroidx/picker/R$id;->sesl_date_picker_spinner_year:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker;

    iput-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 293
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 294
    invoke-virtual {p2, p4}, Landroidx/picker/widget/SeslNumberPicker;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 295
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    const/4 p3, 0x4

    .line 297
    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 298
    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const-string p3, "sec-roboto-light"

    .line 300
    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    .line 301
    invoke-virtual {v0, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 302
    invoke-virtual {v4, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 303
    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 306
    sget p4, Landroidx/picker/R$integer;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 307
    sget v2, Landroidx/picker/R$integer;->sesl_date_picker_spinner_number_text_size_with_unit:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 309
    sget v5, Landroidx/picker/R$string;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    int-to-float v5, p4

    .line 311
    invoke-virtual {v0, v5}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    .line 312
    invoke-virtual {p2, v5}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    .line 314
    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "my"

    .line 315
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "bn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ar"

    .line 316
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "fa"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "ga"

    .line 318
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 319
    sget p4, Landroidx/picker/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    add-int/lit8 p4, p3, -0x1

    goto :goto_2

    :cond_2
    const-string p3, "hu"

    .line 320
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    add-int/lit8 p4, p4, -0x4

    goto :goto_2

    .line 317
    :cond_3
    :goto_1
    sget p4, Landroidx/picker/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 324
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 325
    invoke-virtual {v4, v5}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_3

    :cond_5
    int-to-float p3, p4

    .line 327
    invoke-virtual {v4, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_3
    const-string p3, "ko"

    .line 330
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string/jumbo p3, "zh"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "ja"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    int-to-float p3, v2

    .line 331
    invoke-virtual {v0, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    .line 332
    invoke-virtual {v4, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    .line 333
    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    const/16 p3, 0x3e5

    .line 334
    invoke-virtual {v0, p3}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    const/16 p3, 0x3e6

    .line 335
    invoke-virtual {v4, p3}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    const/16 p3, 0x3e7

    .line 336
    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    .line 340
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroidx/picker/R$string;->sesl_date_picker_day:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 339
    invoke-virtual {v0, p3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroidx/picker/R$string;->sesl_date_picker_month:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 341
    invoke-virtual {v4, p3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroidx/picker/R$string;->sesl_date_picker_year:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 348
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 p4, 0x5

    .line 349
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 348
    invoke-virtual {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->init(III)V

    .line 352
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->reorderSpinners()V

    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateModeState(Z)V

    return-void
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p0
.end method

.method static synthetic access$1102(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)I
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;III)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;ZZZZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroidx/picker/widget/SeslDatePicker;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    return-object p0
.end method

.method static synthetic access$2200(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$2602(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 50
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2700(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$3000(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    return p0
.end method

.method static synthetic access$3100(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return p0
.end method

.method static synthetic access$402(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return p1
.end method

.method static synthetic access$412(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 1

    .line 50
    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return v0
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return p0
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p0
.end method

.method static synthetic access$602(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p1
.end method

.method static synthetic access$612(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 1

    .line 50
    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return v0
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return p0
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return p0
.end method

.method static synthetic access$802(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    .line 50
    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return p1
.end method

.method static synthetic access$812(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 1

    .line 50
    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return v0
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return p0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    .line 493
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 495
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 496
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 497
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private getLunarMaxDayOfMonth(IIZ)I
    .locals 1

    .line 1283
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1286
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getDayLengthOf(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIZ)I

    move-result p0

    return p0
.end method

.method private isNewDate(III)Z
    .locals 2

    .line 561
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    .line 562
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 p1, 0x5

    .line 563
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    .line 742
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    .line 744
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    .line 743
    invoke-interface {v0, p0, v1, v2, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;III)V

    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 8

    .line 508
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 511
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 512
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x4d

    const/16 v5, 0x64

    const/16 v6, 0x79

    if-ge v3, v1, :cond_3

    .line 514
    aget-char v7, v0, v3

    if-eq v7, v4, :cond_2

    if-eq v7, v5, :cond_1

    if-ne v7, v6, :cond_0

    .line 524
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V

    goto :goto_1

    .line 528
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_1
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V

    goto :goto_1

    .line 520
    :cond_2
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    :cond_3
    aget-char v1, v0, v2

    if-ne v1, v6, :cond_4

    .line 533
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearPaddingView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 534
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDayPaddingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 536
    :cond_4
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDayPaddingView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 537
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearPaddingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    :goto_2
    aget-char v1, v0, v2

    const/4 v3, 0x1

    .line 542
    aget-char v0, v0, v3

    if-eq v1, v4, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_5

    goto :goto_3

    :cond_5
    if-ne v0, v5, :cond_6

    const/4 v0, 0x3

    .line 552
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    .line 554
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 548
    :cond_7
    invoke-direct {p0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 545
    :cond_8
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    :goto_3
    return-void
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 567
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 569
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 570
    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    .line 571
    iput p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    .line 572
    iput p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    .line 575
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const p0, 0x2000005

    goto :goto_0

    :cond_0
    const p0, 0x2000006

    .line 762
    :goto_0
    sget p2, Landroidx/picker/R$id;->numberpicker_input:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 763
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private setTextWatcher(I)V
    .locals 13

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    move v2, v1

    move v3, v2

    goto :goto_2

    :cond_0
    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    move v3, v2

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_1
    move v3, v4

    .line 845
    :goto_2
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v5, v1

    .line 846
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v5, v2

    .line 847
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    aput-object v6, v5, v3

    .line 849
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v11, v5, v1

    new-instance v12, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move v8, v1

    invoke-direct/range {v5 .. v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZLandroidx/picker/widget/SeslDatePickerSpinnerLayout$1;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 850
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 851
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v11, v5, v2

    new-instance v12, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move v8, v2

    invoke-direct/range {v5 .. v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZLandroidx/picker/widget/SeslDatePickerSpinnerLayout$1;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 853
    :cond_4
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v11, v5, v2

    new-instance v12, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move v8, v2

    invoke-direct/range {v5 .. v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZLandroidx/picker/widget/SeslDatePickerSpinnerLayout$1;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 855
    :goto_3
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v11, v5, v3

    new-instance v12, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move v8, v3

    invoke-direct/range {v5 .. v10}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZLandroidx/picker/widget/SeslDatePickerSpinnerLayout$1;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v0, :cond_5

    .line 857
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 858
    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 861
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v1

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 862
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v2

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 863
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v3

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private updateModeState(Z)V
    .locals 1

    .line 1178
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    .line 1182
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1183
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1185
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1186
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1188
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1189
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method private updateSpinners(ZZZZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 594
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 595
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 596
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2, v0}, Landroidx/picker/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    const/4 p2, 0x2

    if-eqz p3, :cond_6

    .line 600
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 601
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p3

    const/16 p3, 0xb

    if-nez v2, :cond_1

    .line 605
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 606
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    .line 608
    :cond_1
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 610
    iget-boolean v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v3, :cond_2

    .line 611
    iget v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    .line 614
    :cond_2
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 615
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v6, v2

    move v2, p3

    move p3, v6

    goto :goto_0

    .line 617
    :cond_3
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 619
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    :cond_4
    move v2, p3

    move p3, v0

    .line 626
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 631
    :cond_5
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 632
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, p3}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 633
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 635
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p3

    if-nez p3, :cond_6

    .line 636
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    .line 637
    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroidx/picker/widget/SeslNumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 636
    invoke-static {p3, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 638
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_6
    const/4 p3, 0x5

    if-eqz p4, :cond_d

    .line 643
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 644
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p4

    .line 646
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 647
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, p4

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 651
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 652
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto/16 :goto_2

    .line 654
    :cond_7
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 655
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 657
    iget-boolean v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v3, :cond_8

    .line 658
    iget p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    .line 659
    iget v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    .line 663
    :cond_8
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_a

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 664
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 665
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 666
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 668
    iget-boolean v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v5, :cond_9

    .line 669
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, p4, v2, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v2

    move p4, v3

    goto :goto_2

    :cond_9
    move p4, v3

    move v2, v4

    goto :goto_2

    .line 672
    :cond_a
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_b

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 673
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 675
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 677
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v4, :cond_c

    .line 678
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, p4, v2, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result p4

    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 683
    :cond_b
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 685
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v4, :cond_c

    .line 686
    iget-boolean v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, p4, v2, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v2

    :goto_1
    move p4, v1

    goto :goto_2

    :cond_c
    move p4, v1

    move v2, v3

    .line 692
    :goto_2
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, p4}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 693
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p4, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    :cond_d
    if-nez p1, :cond_e

    return-void

    .line 701
    :cond_e
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 703
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 705
    iget-boolean p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz p4, :cond_f

    .line 706
    iget p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    .line 709
    :cond_f
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 710
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    add-int/2addr p1, v1

    invoke-virtual {p4, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_3

    .line 712
    :cond_10
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p4, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 715
    :goto_3
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 717
    iget-boolean p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz p3, :cond_11

    .line 718
    iget p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    .line 721
    :cond_11
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 723
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 724
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 727
    :cond_12
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz p1, :cond_14

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    if-eqz p0, :cond_14

    .line 728
    array-length p1, p0

    move p2, v0

    :goto_4
    if-ge p2, p1, :cond_14

    aget-object p3, p0, p2

    .line 729
    invoke-virtual {p3}, Landroid/widget/EditText;->hasFocus()Z

    move-result p4

    if-eqz p4, :cond_13

    .line 730
    invoke-virtual {p3, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 731
    invoke-virtual {p3}, Landroid/widget/EditText;->selectAll()V

    goto :goto_5

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_14
    :goto_5
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 1

    .line 481
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 435
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method getDayOfMonth()I
    .locals 1

    .line 388
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 389
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return p0

    .line 392
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getMonth()I
    .locals 1

    .line 379
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 380
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return p0

    .line 383
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getYear()I
    .locals 1

    .line 370
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 371
    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return p0

    .line 374
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method init(III)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    const/4 p1, 0x1

    .line 357
    invoke-direct {p0, p1, p1, p1, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method isEditTextMode()Z
    .locals 0

    .line 1224
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 429
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 441
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 443
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 444
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    .line 443
    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    .line 445
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1292
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1293
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1296
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_1

    .line 1297
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1299
    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_2

    .line 1300
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    .line 454
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    .line 455
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 456
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 457
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 459
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    .line 460
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 p1, 0x0

    move v1, p1

    .line 462
    :goto_0
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 463
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    iget v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    move v1, p1

    .line 470
    :goto_1
    iget v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v1, v2, :cond_1

    .line 471
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method setEditTextMode(Z)V
    .locals 3

    .line 1200
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1204
    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    .line 1205
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1208
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1209
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1210
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    .line 1212
    iget-boolean v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1213
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1215
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1218
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;

    if-eqz v0, :cond_3

    .line 1219
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-interface {v0, p0, p1}, Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Landroidx/picker/widget/SeslDatePicker;Z)V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 421
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 423
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    return-void
.end method

.method setMaxDate(J)V
    .locals 2

    .line 408
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 409
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    .line 412
    invoke-direct {p0, p1, p1, p1, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method setMinDate(J)V
    .locals 2

    .line 396
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 397
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    .line 400
    invoke-direct {p0, p1, p1, p1, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    .line 1234
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    if-nez v0, :cond_0

    .line 1235
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    .line 1237
    :cond_0
    iput-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method setOnSpinnerDateChangedListener(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 1

    .line 1171
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    if-nez v0, :cond_0

    .line 1172
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    .line 1174
    :cond_0
    iput-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    return-void
.end method

.method updateDate(III)V
    .locals 1

    .line 361
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    const/4 p1, 0x1

    .line 365
    invoke-direct {p0, p1, p1, p1, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method updateInputState()V
    .locals 3

    .line 772
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 775
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 777
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 778
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 780
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 783
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method
