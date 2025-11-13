.class Landroidx/picker/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDate:Ljava/util/Calendar;

.field public final mCurrentLocale:Ljava/util/Locale;

.field public mDatePicker:Landroidx/picker/widget/SeslDatePicker;

.field public final mDayPaddingView:Landroid/view/View;

.field public final mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

.field public final mDaySpinnerInput:Landroid/widget/EditText;

.field public final mEditorActionListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$4;

.field public mIsEditTextMode:Z

.field public final mIsLeapMonth:Z

.field public mMaxDate:Ljava/util/Calendar;

.field public mMinDate:Ljava/util/Calendar;

.field public final mModeChangeListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

.field public final mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field public final mMonthSpinnerInput:Landroid/widget/EditText;

.field public mMonths:[Ljava/lang/String;

.field public mNumberOfMonths:I

.field public mOnSpinnerDateChangedListener:Landroidx/picker/widget/SeslDatePicker$6;

.field public final mPickerTexts:[Landroid/widget/EditText;

.field public mShortMonths:[Ljava/lang/String;

.field public final mSpinners:Landroid/widget/LinearLayout;

.field public mTempDate:Ljava/util/Calendar;

.field public mToast:Landroid/widget/Toast;

.field public final mToastText:Ljava/lang/String;

.field public final mYearPaddingView:Landroid/view/View;

.field public final mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

.field public final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    new-instance p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {p3, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    const/4 p4, 0x3

    new-array v0, p4, [Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$4;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$4;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$4;

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0ad4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    const v1, 0x7f0a0def

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0df1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDayPaddingView:Landroid/view/View;

    const v3, 0x7f0a0df5

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearPaddingView:Landroid/view/View;

    const v3, 0x7f0a0df0

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    const v4, 0x7f0a0ac2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    sget-object v5, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    iget-object v6, v3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v7, v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    iput-object v5, v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_0
    iget-object v5, v3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object v0, v5, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    iput-object p3, v5, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    invoke-virtual {v3}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const v6, 0x7f0a0df2

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-virtual {v6}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    invoke-virtual {v6, v5}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v6, p2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    sub-int/2addr v8, v2

    invoke-virtual {v6, v8}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v8, v6, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v9, v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_1
    iget-object v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v7, v6, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v8, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v9, "inputType=month_edittext"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v7, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {v7, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    iget-object v8, v6, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object v7, v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTalkbackFormatter:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    :goto_2
    iget-object v7, v6, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object v0, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    iput-object p3, v7, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    const v7, 0x7f0a0df4

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    iget-object v4, v7, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object v0, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;

    iput-object p3, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    const/4 p3, 0x4

    invoke-virtual {v7, p3}, Landroidx/picker/widget/SeslNumberPicker;->setMaxInputLength(I)V

    invoke-virtual {v7}, Landroidx/picker/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const-string p3, "sec"

    invoke-static {p3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    const/16 v0, 0x258

    invoke-static {p3, v0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, p3}, Landroidx/picker/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f142b2a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setSpinnersTextSize()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f142b15

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f142b18

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f142b1d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroidx/picker/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, p3, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    invoke-virtual {p0, v2, v2, v2, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p1

    array-length p3, p1

    move v0, p2

    :goto_3
    const/16 v1, 0x4d

    const/16 v3, 0x79

    const/16 v4, 0x64

    if-ge v0, p3, :cond_6

    aget-char v6, p1, v0

    if-eq v6, v1, :cond_5

    if-eq v6, v4, :cond_4

    if-ne v6, v3, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {v1, p3, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {v1, p3, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {v1, p3, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    aget-char p3, p1, p2

    if-ne p3, v3, :cond_7

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearPaddingView:Landroid/view/View;

    invoke-virtual {p3, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDayPaddingView:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_7
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDayPaddingView:Landroid/view/View;

    invoke-virtual {p3, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearPaddingView:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_5
    aget-char p3, p1, p2

    aget-char p1, p1, v2

    if-eq p3, v1, :cond_b

    if-eq p3, v4, :cond_a

    if-eq p3, v3, :cond_8

    goto :goto_6

    :cond_8
    if-ne p1, v4, :cond_9

    invoke-virtual {p0, p4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    :goto_6
    return-void
.end method

.method public static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method

.method public static setImeOptions(Landroidx/picker/widget/SeslNumberPicker;II)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-ge p2, p1, :cond_0

    const p1, 0x2000005

    goto :goto_0

    :cond_0
    const p1, 0x2000006

    :goto_0
    const p2, 0x7f0a0ac2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setSpinnersTextSize()V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final setCurrentLocale(Ljava/util/Locale;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonths:[Ljava/lang/String;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    :goto_1
    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    move p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setDate(III)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setEditTextMode(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setEnabled(Z)V

    return-void
.end method

.method public final setMaxDate(J)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public final setMinDate(J)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public final setSpinnersTextSize()V
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0b00c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "my"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f0b00c5

    if-nez v5, :cond_2

    const-string v5, "ml"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ar"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "ga"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_1
    const-string v0, "hu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, -0x4

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v4}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_2
    const-string v0, "ko"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ja"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setTextSize(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v1, 0x3e5

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPicker;->setDateUnit(I)V

    :cond_6
    return-void
.end method

.method public final setTextWatcher(I)V
    .locals 10

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v4, -0x1

    move v5, v4

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v1

    move v5, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_1
    move v5, v1

    move v6, v2

    goto :goto_0

    :cond_2
    move v5, v1

    move v4, v2

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v1

    move v4, v2

    move v5, v3

    :goto_1
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v8, v8, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v8, v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    aput-object v8, v7, v4

    iget-object v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v8, v8, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v8, v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    aput-object v8, v7, v5

    iget-object v8, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v8, v8, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v8, v8, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    aput-object v8, v7, v6

    aget-object v7, v7, v4

    new-instance v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v9, 0x4

    invoke-direct {v8, p0, v9, v4, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v7, v7, v5

    new-instance v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v2, v5, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v7, v7, v5

    new-instance v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v0, v5, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_2
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v7, v7, v6

    new-instance v8, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v2, v6, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$4;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v4

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v5

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v6

    new-instance v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final updateDate(III)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public final updateInputState()V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateSpinners(ZZZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v0, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    :cond_0
    const/4 p2, 0x2

    if-eqz p3, :cond_5

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p3

    if-nez v2, :cond_1

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    if-ne p3, v2, :cond_2

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p3, v2, :cond_3

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_4
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, p3}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v3, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v2, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    add-int/2addr v2, v1

    invoke-static {p3, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2, p3}, Landroidx/picker/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_5
    const/4 p3, 0x5

    if-eqz p4, :cond_9

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p4

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, p4

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_3

    :cond_6
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_7

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    goto :goto_3

    :cond_7
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_8

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne v2, p4, :cond_8

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :goto_2
    move p4, v1

    goto :goto_3

    :cond_8
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    goto :goto_2

    :goto_3
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, p4}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p4, v2}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    :cond_9
    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    add-int/2addr p1, v1

    invoke-virtual {p4, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_4

    :cond_b
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p4, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    :goto_4
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_c
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz p1, :cond_e

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    if-eqz p0, :cond_e

    array-length p1, p0

    move p2, v0

    :goto_5
    if-ge p2, p1, :cond_e

    aget-object p3, p0, p2

    invoke-virtual {p3}, Landroid/widget/EditText;->hasFocus()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p3, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p3}, Landroid/widget/EditText;->selectAll()V

    goto :goto_6

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void
.end method

.method public final usingNumericMonths()Z
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method
