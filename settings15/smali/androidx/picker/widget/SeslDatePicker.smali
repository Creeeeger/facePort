.class public Landroidx/picker/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;


# static fields
.field public static final CALENDAR_HEADER_SPINNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final mAnimator:Landroid/widget/ViewAnimator;

.field public final mAntiClockwiseAnim:Landroid/animation/ObjectAnimator;

.field public final mBackgroundBorderlessResId:I

.field public final mBtnFocusChangeListener:Landroidx/picker/widget/SeslDatePicker$1;

.field public final mCalendarHeaderClickListener:Landroidx/picker/widget/SeslDatePicker$5;

.field public final mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field public mCalendarHeaderLayoutHeight:I

.field public final mCalendarHeaderSpinner:Landroid/view/View;

.field public final mCalendarHeaderText:Landroid/widget/TextView;

.field public final mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

.field public final mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

.field public final mCalendarViewMargin:I

.field public final mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

.field public mCalendarViewPagerHeight:I

.field public mCalendarViewPagerWidth:I

.field public mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field public final mClockwiseAnim:Landroid/animation/ObjectAnimator;

.field public mContentFrame:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDate:Ljava/util/Calendar;

.field public mCurrentLocale:Ljava/util/Locale;

.field public mCurrentPosition:I

.field public mCurrentViewType:I

.field public mDatePickerHeight:I

.field public final mDatePickerLayout:Landroid/widget/LinearLayout;

.field public mDayFormatter:Ljava/text/SimpleDateFormat;

.field public final mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field public mDayOfTheWeekLayoutHeight:I

.field public mDayOfTheWeekLayoutWidth:I

.field public final mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

.field public mDayOfWeekStart:I

.field public mDialogPaddingVertical:I

.field public mDialogWindow:Landroid/view/Window;

.field public final mEndDate:Ljava/util/Calendar;

.field public final mFirstBlankSpace:Landroid/view/View;

.field public mFirstBlankSpaceHeight:I

.field public final mFirstDayOfWeek:I

.field public final mHandler:Landroidx/picker/widget/SeslDatePicker$2;

.field public mIsCalledFromDeactivatedDayClick:Z

.field public mIsConfigurationChanged:Z

.field public mIsEnabled:Z

.field public mIsFarsiLanguage:Z

.field public mIsFirstMeasure:Z

.field public final mIsLeapEndMonth:I

.field public final mIsLeapMonth:Z

.field public final mIsLeapStartMonth:I

.field public mIsRTL:Z

.field public final mMaxDate:Ljava/util/Calendar;

.field public mMeasureSpecHeight:I

.field public final mMinDate:Ljava/util/Calendar;

.field public final mMonthBtnKeyListener:Landroidx/picker/widget/SeslDatePicker$4;

.field public final mMonthBtnTouchListener:Landroidx/picker/widget/SeslDatePicker$3;

.field public final mMonthViewColor:Ljava/lang/String;

.field public final mNextButton:Landroid/widget/ImageButton;

.field public mNumDays:I

.field public mOldCalendarViewPagerWidth:I

.field public mOldSelectedDay:I

.field public mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

.field public final mPadding:I

.field public mPositionCount:I

.field public final mPrevButton:Landroid/widget/ImageButton;

.field public final mSecondBlankSpace:Landroid/view/View;

.field public mSecondBlankSpaceHeight:I

.field public final mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

.field public final mStartDate:Ljava/util/Calendar;

.field public final mTempDate:Ljava/util/Calendar;

.field public final mTempMinMaxDate:Ljava/util/Calendar;

.field public mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

.field public mWeekStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/picker/widget/SeslDatePicker;->CALENDAR_HEADER_SPINNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const/4 v6, 0x2

    const-string v7, "SeslDatePicker"

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v8, 0x0

    iput-boolean v8, v1, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    const/4 v9, 0x1

    iput-boolean v9, v1, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    iput-boolean v9, v1, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    const/4 v0, -0x1

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mOldSelectedDay:I

    iput v8, v1, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    iput v8, v1, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    const/4 v10, 0x0

    iput-object v10, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    new-instance v0, Landroidx/picker/widget/SeslDatePicker$1;

    invoke-direct {v0, v1, v8}, Landroidx/picker/widget/SeslDatePicker$1;-><init>(Landroidx/picker/widget/SeslDatePicker;I)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroidx/picker/widget/SeslDatePicker$1;

    new-instance v0, Landroidx/picker/widget/SeslDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Landroidx/picker/widget/SeslDatePicker$2;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroid/os/Looper;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    new-instance v0, Landroidx/picker/widget/SeslDatePicker$3;

    invoke-direct {v0, v1}, Landroidx/picker/widget/SeslDatePicker$3;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroidx/picker/widget/SeslDatePicker$3;

    new-instance v0, Landroidx/picker/widget/SeslDatePicker$4;

    invoke-direct {v0, v1}, Landroidx/picker/widget/SeslDatePicker$4;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroidx/picker/widget/SeslDatePicker$4;

    new-instance v0, Landroidx/picker/widget/SeslDatePicker$5;

    invoke-direct {v0, v1}, Landroidx/picker/widget/SeslDatePicker$5;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroidx/picker/widget/SeslDatePicker$5;

    iput-object v2, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v11, "fa"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/picker/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v11, "EEEEE"

    iget-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v11, "EEE"

    iget-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :goto_0
    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v11, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v0, v11}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v11, v1, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v11, v12}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, v1, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v11, v12}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    iput-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    iget-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v12, v13}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    iput-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v12, v13}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    iput-object v12, v1, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget-object v13, Landroidx/picker/R$styleable;->DatePicker:[I

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    const/16 v15, 0x76e

    invoke-virtual {v14, v8, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v0, v15, v8, v9}, Ljava/util/Calendar;->set(III)V

    const/16 v0, 0x834

    invoke-virtual {v14, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/16 v15, 0xb

    const/16 v10, 0x1f

    invoke-virtual {v11, v0, v15, v10}, Ljava/util/Calendar;->set(III)V

    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v10, 0x7f0d0ad2

    invoke-virtual {v0, v10, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {v14, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v10, 0x7

    if-eqz v0, :cond_2

    if-lt v0, v9, :cond_1

    if-gt v0, v10, :cond_1

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, 0x3

    :try_start_0
    const-string v0, "ro.carrier"

    invoke-static {v0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "wifi-only"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "XXXXXBR"

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, "persist.sys.selected_country_iso"

    invoke-static {v0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    const-string v15, "AE"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_4
    const-string v0, "XSG"

    invoke-static {}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    :goto_3
    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v11, :cond_5

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v15, 0x1a8

    if-ne v0, v15, :cond_5

    goto :goto_5

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "msg : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_5
    iput-object v14, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v13, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :try_start_2
    new-instance v0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    iget-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v3}, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    const v4, 0x7f06082a

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const v5, 0x7f060827

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v11, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-direct {v3, v1}, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v3, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    const v10, 0x7f0a0de4

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager;

    iput-object v10, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v10, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance v3, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;

    invoke-direct {v3, v1}, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    invoke-virtual {v10, v3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iput-boolean v9, v10, Landroidx/viewpager/widget/ViewPager;->mIsMouseWheelEventSupport:Z

    iput-boolean v9, v10, Landroidx/viewpager/widget/ViewPager;->mSupportLayoutDirectionForDatePicker:Z

    const v3, 0x7f070fb0

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    const v3, 0x7f0a0de5

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0deb

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f0a0de9

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderSpinner:Landroid/view/View;

    const v11, 0x7f0a0dea

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v4, v13}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v4, v13}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    const v4, 0x7f0a0df6

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    iput-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    const v4, 0x7f0a0df3

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iput-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    new-instance v13, Landroidx/picker/widget/SeslDatePicker$6;

    invoke-direct {v13, v1}, Landroidx/picker/widget/SeslDatePicker$6;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iget-object v14, v4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    if-nez v14, :cond_7

    iput-object v1, v4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    :cond_7
    iput-object v13, v4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroidx/picker/widget/SeslDatePicker$6;

    iput v8, v1, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    iget-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroidx/picker/widget/SeslDatePicker$5;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroidx/picker/widget/SeslDatePicker$1;

    invoke-direct {v4, v1, v9}, Landroidx/picker/widget/SeslDatePicker$1;-><init>(Landroidx/picker/widget/SeslDatePicker;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v4, 0x7f070fa4

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    const v4, 0x7f070fb1

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    const v13, 0x7f070fae

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewMargin:I

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    const v4, 0x7f0a0ded

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v1, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0a0dee

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0de6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-boolean v0, v1, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    const v4, 0x7f0a0de8

    const v13, 0x7f0a0de7

    if-eqz v0, :cond_8

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    iput-object v14, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v15, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const v8, 0x7f142b16

    invoke-virtual {v15, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const v8, 0x7f142b17

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    :goto_6
    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v8, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroidx/picker/widget/SeslDatePicker$3;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v8, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroidx/picker/widget/SeslDatePicker$3;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v8, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroidx/picker/widget/SeslDatePicker$4;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v8, v1, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroidx/picker/widget/SeslDatePicker$4;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v8, v1, Landroidx/picker/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroidx/picker/widget/SeslDatePicker$1;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v8, v1, Landroidx/picker/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroidx/picker/widget/SeslDatePicker$1;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x101045c

    invoke-virtual {v2, v5, v0, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    const v0, 0x7f070fa7

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    const v0, 0x7f070fad

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    iget v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    const v0, 0x7f0a0de2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    const v0, 0x7f070fb8

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    const v0, 0x7f0a0de3

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    const v0, 0x7f070fb9

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    iget v2, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v3, v1, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v0, v1, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    invoke-virtual {v1, v9}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    const-string v2, "rotation"

    invoke-static {v10, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mClockwiseAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroidx/picker/widget/SeslDatePicker;->CALENDAR_HEADER_SPINNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v6, [F

    fill-array-data v0, :array_1

    invoke-static {v10, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mAntiClockwiseAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010057

    invoke-virtual {v2, v3, v0, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_9

    move v8, v9

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    iget-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez v8, :cond_a

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    goto :goto_8

    :cond_a
    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get window of this context. context:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_8
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method

.method public static access$000(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 11

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL y"

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/Formatter;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v4, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/16 p1, 0xfa

    if-gt v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    const v9, 0x10024

    move-wide v5, v7

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    const/16 v9, 0x24

    move-wide v5, v7

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static access$500(Landroidx/picker/widget/SeslDatePicker;FZ)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static access$600(Landroidx/picker/widget/SeslDatePicker;FZ)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static clearCalendar(Ljava/util/Calendar;III)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

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

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final getMaxYear()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public final getMinMonth()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public final getMinYear()I
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public final init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v0, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v0, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    :cond_1
    iput-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    iget p4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_2
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-static {p4, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-static {p0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    return-void
.end method

.method public final isEditTextMode()Z
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    return p0
.end method

.method public final isRTL()Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public final isSimplifiedChinese()Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSystemAnimationsRemoved()Z
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final manageCalendarHeaderLayoutClick(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslDatePicker;->setCalendarHeaderPadding(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderSpinner:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroidx/picker/widget/SeslDatePicker$5;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->setCalendarHeaderPadding(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderSpinner:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0de8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isSystemAnimationsRemoved()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isSystemAnimationsRemoved()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0a0de7

    if-ne p1, v0, :cond_b

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_8

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isSystemAnimationsRemoved()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_8
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isSystemAnimationsRemoved()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    const v0, 0x7f070fa7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    const v0, 0x7f070fad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    const v0, 0x7f070fa4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    const v0, 0x7f070fb8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    const v0, 0x7f070fb9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    :cond_2
    return-void
.end method

.method public final onDateChanged()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

    invoke-interface {p0, v0, v1, v2}, Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;->onDateChanged(III)V

    :cond_0
    return-void
.end method

.method public final onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v2, p4

    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    const/4 v5, 0x1

    if-nez v1, :cond_0

    iget v1, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v5, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v7, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v10, 0x3e8

    iput v10, v8, Landroid/os/Message;->what:I

    iget-object v10, v0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-static {v8, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-static {v8, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v10

    sub-int v10, v4, v10

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v10, v8

    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    const/4 v14, 0x0

    if-eq v8, v10, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v14

    :goto_0
    if-ne v4, v1, :cond_2

    if-ne v3, v6, :cond_2

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mOldSelectedDay:I

    if-ne v2, v1, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    iput v2, v0, Landroidx/picker/widget/SeslDatePicker;->mOldSelectedDay:I

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_5
    const/16 v1, 0x1f

    goto :goto_2

    :goto_3
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v16

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v19

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v20

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v21

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v1, :cond_6

    :goto_4
    move v5, v1

    goto :goto_5

    :cond_6
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    goto :goto_4

    :goto_5
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move v7, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v16

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v21

    invoke-virtual/range {v1 .. v18}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogWindow:Landroid/view/Window;

    if-eqz p1, :cond_1

    const p2, 0x7f0a046c

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    :cond_1
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mMeasureSpecHeight:I

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogWindow:Landroid/view/Window;

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogPaddingVertical:I

    sub-int/2addr p1, p2

    :cond_2
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isEditTextMode()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroidx/picker/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    if-ge p1, p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setCurrentViewType(I)V

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->manageCalendarHeaderLayoutClick(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslDatePicker;->manageCalendarHeaderLayoutClick(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3}, Landroidx/picker/widget/SeslDatePicker;->manageCalendarHeaderLayoutClick(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0de8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {p1, p0}, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    iput-boolean v1, p1, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_1
    const v0, 0x7f0a0de7

    if-ne p1, v0, :cond_3

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez p1, :cond_2

    new-instance p1, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {p1, p0}, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    iput-boolean v2, p1, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-virtual {p0, p1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return v1
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMeasureSpecHeight:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070fb5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    :cond_1
    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_4

    if-ne v3, v6, :cond_3

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    iput v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v5, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {v3, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v5, p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    if-ne v0, v3, :cond_6

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v5, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v5, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mIsChangedConfiguration:Z

    :cond_7
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    check-cast p1, Landroidx/picker/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget v1, p1, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    iget v2, p1, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    iget v3, p1, Landroidx/picker/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-wide v1, p1, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMinDate:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-wide v0, p1, Landroidx/picker/widget/SeslDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    new-instance v9, Landroidx/picker/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/picker/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-object v9
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public final removeAllCallbacks()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslDatePicker$8;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslDatePicker$8;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setCalendarHeaderPadding(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070fa8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070fa9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderTextSpinnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public final setCurrentViewType(I)V
    .locals 6

    const/16 v0, 0x3e8

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderSpinner:Landroid/view/View;

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v2, v3, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v2, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setEditTextMode()V
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public final setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method public final setMinDate(J)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method public final updateDate(III)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v12, p3

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v1, v10, v14}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    if-le v12, v2, :cond_0

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-static {v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-static {v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0, v11}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v6, v1, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v15, :cond_1

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move/from16 v16, v1

    goto :goto_1

    :cond_1
    move/from16 v16, v11

    :goto_1
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v15, :cond_2

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_2
    move/from16 v20, v1

    goto :goto_3

    :cond_2
    const/16 v1, 0x1f

    goto :goto_2

    :goto_3
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v21

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v22

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v23

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v24

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v25

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v26

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v1, :cond_3

    :goto_4
    move v5, v1

    goto :goto_5

    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    goto :goto_4

    :goto_5
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v19

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p1

    move-object/from16 v27, v6

    move/from16 v6, v16

    move/from16 v7, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    invoke-virtual/range {v1 .. v18}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->invalidate()V

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v3, v27

    if-ltz v1, :cond_4

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_4

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    iput v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    iput v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    goto :goto_6

    :cond_4
    const/4 v6, 0x2

    const/4 v7, 0x5

    :goto_6
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/2addr v1, v2

    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_5

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    iput v4, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    iput v4, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    :cond_5
    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    if-eqz v0, :cond_6

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    :cond_6
    return-void
.end method

.method public final updateSimpleMonthView(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isSystemAnimationsRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e8

    iput v0, p1, Landroid/os/Message;->what:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroidx/picker/widget/SeslDatePicker$2;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
