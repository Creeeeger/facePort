.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final blacklist AM:I = 0x0

.field private static final blacklist ATTRS_DISABLED_ALPHA:[I

.field private static final blacklist ATTRS_TEXT_COLOR:[I

.field private static final blacklist DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final blacklist FROM_EXTERNAL_API:I = 0x0

.field private static final blacklist FROM_INPUT_PICKER:I = 0x2

.field private static final blacklist FROM_RADIAL_PICKER:I = 0x1

.field private static final blacklist HOURS_IN_HALF_DAY:I = 0xc

.field private static final blacklist HOUR_INDEX:I = 0x0

.field private static final blacklist MINUTE_INDEX:I = 0x1

.field private static final blacklist PM:I = 0x1


# instance fields
.field private blacklist mAllowAutoAdvance:Z

.field private final blacklist mAmLabel:Landroid/widget/RadioButton;

.field private final blacklist mAmPmLayout:Landroid/view/View;

.field private final blacklist mClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mCommitHour:Ljava/lang/Runnable;

.field private final blacklist mCommitMinute:Ljava/lang/Runnable;

.field private blacklist mCurrentHour:I

.field private blacklist mCurrentMinute:I

.field private final blacklist mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private final blacklist mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private blacklist mHourFormatShowLeadingZero:Z

.field private blacklist mHourFormatStartsAtZero:Z

.field private final blacklist mHourView:Lcom/android/internal/widget/NumericTextView;

.field private blacklist mIs24Hour:Z

.field private blacklist mIsAmPmAtLeft:Z

.field private blacklist mIsAmPmAtTop:Z

.field private blacklist mIsEnabled:Z

.field private blacklist mLastAnnouncedIsHour:Z

.field private blacklist mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final blacklist mMinuteView:Lcom/android/internal/widget/NumericTextView;

.field private final blacklist mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final blacklist mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final blacklist mPmLabel:Landroid/widget/RadioButton;

.field private blacklist mRadialPickerModeEnabled:Z

.field private final blacklist mRadialTimePickerHeader:Landroid/view/View;

.field private final blacklist mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final blacklist mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

.field private final blacklist mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private final blacklist mSelectHours:Ljava/lang/String;

.field private final blacklist mSelectMinutes:Ljava/lang/String;

.field private final blacklist mSeparatorView:Landroid/widget/TextView;

.field private final blacklist mTempCalendar:Ljava/util/Calendar;

.field private final blacklist mTextInputPickerHeader:Landroid/view/View;

.field private final blacklist mTextInputPickerModeEnabledDescription:Ljava/lang/String;

.field private final blacklist mTextInputPickerView:Landroid/widget/TextInputTimePickerView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowAutoAdvance(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCommitHour(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCommitMinute(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHourView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectMinutes(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLocalizedHour(Landroid/widget/TimePickerClockDelegate;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleRadialPickerMode(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtryVibrate(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0x1010098

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    const v0, 0x1010033

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    new-instance v7, Landroid/widget/TimePickerClockDelegate$2;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    new-instance v7, Landroid/widget/TimePickerClockDelegate$3;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    new-instance v7, Landroid/widget/TimePickerClockDelegate$4;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    new-instance v7, Landroid/widget/TimePickerClockDelegate$5;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    new-instance v7, Landroid/widget/TimePickerClockDelegate$6;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    new-instance v7, Landroid/widget/TimePickerClockDelegate$7;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$7;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v7, Landroid/widget/TimePickerClockDelegate$8;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$8;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v7, v2, v8, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iget-object v9, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040d78

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    const v11, 0x1040d7d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    const v12, 0x10901b4

    const/16 v13, 0xc

    invoke-virtual {v7, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v14, p1

    invoke-virtual {v8, v12, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    const v13, 0x1020653

    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    new-instance v5, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate-IA;)V

    invoke-virtual {v13, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v5, 0x1020358

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NumericTextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v13}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v13}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v5, v13}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    new-instance v13, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v13, v1, v10}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v13}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v5, 0x10205ab

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    const v5, 0x1020410

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NumericTextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    new-instance v10, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v10, v1, v11}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    const/16 v10, 0x3b

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    const v5, 0x10201f4

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v10, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v10, v6}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate-IA;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static/range {p2 .. p2}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v11, 0x10201f2

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    const/4 v11, 0x0

    aget-object v13, v5, v11

    invoke-static {v13}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v11, 0x10204ab

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    aget-object v13, v5, v11

    invoke-static {v13}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    move-object/from16 v16, v5

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v1, v13, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v5

    :goto_0
    const/16 v1, 0xb

    if-nez v10, :cond_1

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :cond_1
    const v5, 0x1020375

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    if-eqz v10, :cond_2

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    const v5, 0x10204d1

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadialTimePickerView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v5, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {v5, v11}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    const v5, 0x1020382

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextInputTimePickerView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {v5, v11}, Landroid/widget/TextInputTimePickerView;->setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V

    nop

    const v5, 0x1020663

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance v11, Landroid/widget/TimePickerClockDelegate$1;

    invoke-direct {v11, v0}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x1040f3a

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x1040f3b

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v11, 0xc

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-boolean v11, v0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    const/4 v13, 0x0

    invoke-direct {v0, v1, v5, v11, v13}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    return-void
.end method

.method private blacklist applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6

    if-eqz p1, :cond_4

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v1, v4}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    move-result v5

    move v3, v5

    :goto_0
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    filled-new-array {v0}, [I

    move-result-object v0

    new-array v2, v2, [I

    filled-new-array {v0, v2}, [[I

    move-result-object v0

    filled-new-array {v1, v3}, [I

    move-result-object v2

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_2
    return-object p1
.end method

.method private static blacklist ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private blacklist getCurrentItemShowing()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private static blacklist getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    if-nez v1, :cond_1

    goto :goto_1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :sswitch_2
    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string v2, ":"

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x27 -> :sswitch_1
        0x48 -> :sswitch_0
        0x4b -> :sswitch_0
        0x68 -> :sswitch_0
        0x6b -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getLocalizedHour(I)I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    rem-int/lit8 p1, p1, 0xc

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    move p1, v0

    :cond_2
    return p1
.end method

.method private blacklist initialize(IIZI)V
    .locals 0

    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method private static blacklist lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5

    array-length v0, p1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist multiplyAlphaComponent(IF)I
    .locals 4

    const v0, 0xffffff

    and-int/2addr v0, p1

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method static final blacklist obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onTimeChanged()V
    .locals 4

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private blacklist setAmOrPm(I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private blacklist setAmPmStart(Z)V
    .locals 7

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    if-ne v2, p1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    goto :goto_5

    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-nez v4, :cond_5

    move v4, p1

    goto :goto_2

    :cond_5
    xor-int/lit8 v4, p1, 0x1

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_3
    if-eqz p1, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :goto_4
    iput-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    nop

    :cond_8
    :goto_5
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist setCurrentItemShowing(IZZ)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    return-void
.end method

.method private blacklist setHourInternal(IIZZ)V
    .locals 3

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, p1, p3}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    if-eqz p4, :cond_4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    :cond_4
    return-void
.end method

.method private blacklist setMinuteInternal(IIZ)V
    .locals 1

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    if-eqz p3, :cond_3

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    :cond_3
    return-void
.end method

.method private blacklist toggleRadialPickerMode()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x1080179

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x10801c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    :goto_0
    return-void
.end method

.method private blacklist tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private blacklist tryVibrate()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    return-void
.end method

.method private blacklist updateAmPmLabelStates(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private blacklist updateHeaderAmPm()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmStart(Z)V

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    :goto_1
    return-void
.end method

.method private blacklist updateHeaderHour(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private blacklist updateHeaderMinute(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private blacklist updateHeaderSeparator()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v2, v1}, Landroid/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateHourFormat()V
    .locals 10

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

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

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x48

    const/16 v6, 0x4b

    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v5, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v6, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v3, v7

    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_3

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    const/4 v4, 0x1

    if-eq v3, v6, :cond_5

    if-ne v3, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v4

    :goto_4
    iput-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v4, v5

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x17

    goto :goto_5

    :cond_6
    const/16 v5, 0xb

    :goto_5
    add-int/2addr v5, v4

    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-boolean v7, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    const/16 v9, 0xa

    if-ge v8, v9, :cond_7

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    mul-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextInputTimePickerView;->setHourFormat(I)V

    return-void
.end method

.method private blacklist updateRadialPicker(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private blacklist updateTextInputPicker()V
    .locals 6

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget v3, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    return-void
.end method

.method private blacklist updateUI(I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public blacklist getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getHour()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    :cond_1
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public blacklist getHourView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public blacklist getMinute()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public blacklist getMinuteView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public blacklist getPmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public blacklist is24Hour()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public blacklist onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x40

    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    instance-of v0, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    new-instance v6, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public blacklist setDate(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    invoke-direct {p0, p2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public blacklist setHour(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    return-void
.end method

.method public blacklist setIs24Hour(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    :cond_0
    return-void
.end method

.method public blacklist setMinute(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    return-void
.end method

.method public blacklist validateInput()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
