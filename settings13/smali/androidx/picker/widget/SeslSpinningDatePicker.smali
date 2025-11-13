.class public Landroidx/picker/widget/SeslSpinningDatePicker;
.super Landroid/widget/LinearLayout;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSpinningDatePicker$LunarUtils;,
        Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;,
        Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;,
        Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;,
        Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;,
        Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;,
        Landroidx/picker/widget/SeslSpinningDatePicker$OnViewTypeChangedListener;
    }
.end annotation


# static fields
.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mBackgroundBorderlessResId:I

.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mCalendarHeader:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

.field private mCalendarViewLayout:Landroid/widget/LinearLayout;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentViewType:I

.field private mCustomButtonLayout:Landroid/widget/RelativeLayout;

.field private mCustomButtonView:Landroid/view/View;

.field private mDatePickerHeight:I

.field private mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

.field private mDateTimePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;

.field private mDayOfWeekStart:I

.field private mEmptySpaceLeft:Landroid/view/View;

.field private mEmptySpaceRight:Landroid/view/View;

.field private mEndDate:Ljava/util/Calendar;

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mHandler:Landroid/os/Handler;

.field private mIs24HourView:Z

.field private mIsCalledFromDeactivatedDayClick:Z

.field private mIsConfigurationChanged:Z

.field private mIsCustomButtonSeparate:Z

.field private mIsEnabled:Z

.field private mIsFarsiLanguage:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsHeightSetForDialog:Z

.field private mIsInDialog:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsMarginRightShown:Z

.field private mIsRTL:Z

.field private mIsSimplifiedChinese:Z

.field private mIsTibetanLanguage:Z

.field private mIsWeekRangeSet:Z

.field private mLayoutMode:I

.field private mLunarChanged:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarEndDay:I

.field private mLunarEndMonth:I

.field private mLunarEndYear:I

.field private mLunarStartDay:I

.field private mLunarStartMonth:I

.field private mLunarStartYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMeasureSpecHeight:I

.field private mMinDate:Ljava/util/Calendar;

.field private mMode:I

.field private mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mMonthViewColor:Ljava/lang/String;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNumDays:I

.field private mOldCalendarViewPagerWidth:I

.field private mOldSelectedDay:I

.field private mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

.field private mOnViewTypeChangedListener:Landroidx/picker/widget/SeslSpinningDatePicker$OnViewTypeChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerView:Landroid/widget/LinearLayout;

.field private mPickerViewHeight:I

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mStartDate:Ljava/util/Calendar;

.field private mSupportShortSpinnerHeight:Z

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mViewAnimator:Landroid/widget/ViewAnimator;

.field private mWeekStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 500
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 507
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 515
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v5, 0x0

    .line 201
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsConfigurationChanged:Z

    const/4 v6, 0x1

    .line 204
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFirstMeasure:Z

    .line 207
    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsEnabled:Z

    const/4 v7, -0x1

    .line 218
    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    .line 225
    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOldSelectedDay:I

    .line 226
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPadding:I

    .line 234
    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mBackgroundBorderlessResId:I

    .line 237
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    .line 238
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstDayOfWeek:I

    const/4 v8, 0x0

    .line 242
    iput-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthViewColor:Ljava/lang/String;

    .line 268
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunarSupported:Z

    .line 269
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    .line 270
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    .line 271
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFromSetLunar:Z

    .line 272
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarChanged:Z

    .line 273
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsCustomButtonSeparate:Z

    .line 293
    iput-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 308
    new-instance v9, Landroidx/picker/widget/SeslSpinningDatePicker$1;

    invoke-direct {v9, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    iput-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 343
    new-instance v10, Landroidx/picker/widget/SeslSpinningDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Landroidx/picker/widget/SeslSpinningDatePicker$2;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;Landroid/os/Looper;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    .line 415
    new-instance v10, Landroidx/picker/widget/SeslSpinningDatePicker$3;

    invoke-direct {v10, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$3;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 425
    new-instance v10, Landroidx/picker/widget/SeslSpinningDatePicker$4;

    invoke-direct {v10, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$4;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 438
    new-instance v10, Landroidx/picker/widget/SeslSpinningDatePicker$5;

    invoke-direct {v10, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$5;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 445
    new-instance v10, Landroidx/picker/widget/SeslSpinningDatePicker$6;

    invoke-direct {v10, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$6;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    .line 517
    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    .line 518
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 519
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isRTL()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    .line 520
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isTibetanLanguage()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsTibetanLanguage:Z

    .line 521
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isFarsiLanguage()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFarsiLanguage:Z

    .line 522
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isSimplifiedChinese()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v10, :cond_0

    .line 524
    new-instance v10, Ljava/text/SimpleDateFormat;

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    const-string v12, "EEEEE"

    invoke-direct {v10, v12, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 526
    :cond_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    const-string v12, "EEE"

    invoke-direct {v10, v12, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 528
    :goto_0
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v10, v11}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 529
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v10, v11}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 530
    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v10, v11}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 531
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v10, v11}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 532
    iget-object v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v10, v11}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 535
    sget-object v11, Landroidx/picker/R$styleable;->DatePicker:[I

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 536
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    sget v14, Landroidx/picker/R$styleable;->DatePicker_android_startYear:I

    const/16 v15, 0x76e

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 537
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    sget v14, Landroidx/picker/R$styleable;->DatePicker_android_endYear:I

    const/16 v15, 0x834

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    const/16 v15, 0xb

    const/16 v7, 0x1f

    invoke-virtual {v13, v14, v15, v7}, Ljava/util/Calendar;->set(III)V

    .line 539
    sget v7, Landroidx/picker/R$styleable;->DatePicker_pickerLayoutMode:I

    invoke-virtual {v12, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLayoutMode:I

    .line 541
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v7, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 542
    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLayoutMode:I

    if-ne v13, v6, :cond_1

    .line 544
    sget v13, Landroidx/picker/R$layout;->sesl_spinning_date_picker_phone:I

    .line 543
    invoke-virtual {v7, v13, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 547
    sget v13, Landroidx/picker/R$layout;->sesl_spinning_date_picker_multipane:I

    .line 546
    invoke-virtual {v7, v13, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 550
    :cond_2
    sget v13, Landroidx/picker/R$layout;->sesl_spinning_date_picker:I

    .line 549
    invoke-virtual {v7, v13, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 552
    :goto_1
    sget v13, Landroidx/picker/R$layout;->sesl_spinning_date_picker_calendar:I

    invoke-virtual {v7, v13, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    .line 554
    sget v7, Landroidx/picker/R$styleable;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v12, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-eqz v7, :cond_3

    .line 556
    invoke-virtual {v0, v7}, Landroidx/picker/widget/SeslSpinningDatePicker;->setFirstDayOfWeek(I)V

    .line 559
    :cond_3
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 561
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMonthViewColorStringForSpecific()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthViewColor:Ljava/lang/String;

    .line 563
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2, v11, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 564
    new-instance v3, Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v4, v2}, Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;

    .line 565
    sget v3, Landroidx/picker/R$styleable;->DatePicker_dayNumberTextColor:I

    sget v4, Landroidx/picker/R$color;->sesl_date_picker_normal_day_number_text_color_light:I

    .line 566
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 565
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 567
    sget v4, Landroidx/picker/R$styleable;->DatePicker_buttonTintColor:I

    sget v7, Landroidx/picker/R$color;->sesl_date_picker_button_tint_color_light:I

    .line 568
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 567
    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 569
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 571
    new-instance v2, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-direct {v2, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    .line 572
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v7, Landroidx/picker/R$id;->sesl_date_picker_calendar:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 573
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-virtual {v2, v7}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 574
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v7, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;

    invoke-direct {v7, v0, v8}, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;Landroidx/picker/widget/SeslSpinningDatePicker$1;)V

    invoke-virtual {v2, v7}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 575
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v6}, Landroidx/viewpager/widget/ViewPager;->seslSetSupportedMouseWheelEvent(Z)V

    .line 577
    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPadding:I

    .line 578
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v7, Landroidx/picker/R$id;->sesl_date_picker_calendar_header:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 579
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v7, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    .line 580
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 582
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 584
    sget v2, Landroidx/picker/R$id;->sesl_spinning_date_picker_view:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    .line 585
    sget v2, Landroidx/picker/R$id;->sesl_spinning_date_time_picker_empty_view_left:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEmptySpaceLeft:Landroid/view/View;

    .line 586
    sget v2, Landroidx/picker/R$id;->sesl_spinning_date_picker_margin_view_center:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEmptySpaceRight:Landroid/view/View;

    .line 587
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsMarginRightShown:Z

    .line 589
    sget v2, Landroidx/picker/R$id;->sesl_spinning_date_picker_spinner_view:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    .line 590
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    invoke-virtual {v2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V

    .line 591
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setMinValue(Ljava/util/Calendar;)V

    .line 592
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setMaxValue(Ljava/util/Calendar;)V

    .line 593
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setValue(Ljava/util/Calendar;)V

    .line 594
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    new-instance v3, Landroidx/picker/widget/SeslSpinningDatePicker$7;

    invoke-direct {v3, v0}, Landroidx/picker/widget/SeslSpinningDatePicker$7;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    invoke-virtual {v2, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setOnValueChangedListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;)V

    .line 664
    sget v2, Landroidx/picker/R$id;->sesl_spinning_date_picker_view_animator:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    .line 665
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v8, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6, v8}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iput v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    .line 669
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 672
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->checkMaxFontSize()V

    .line 674
    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    .line 675
    sget v3, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    .line 676
    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 677
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/picker/R$id;->sesl_date_picker_day_of_the_week:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    .line 678
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 680
    sget v2, Landroidx/picker/R$id;->sesl_spinning_date_time_picker_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDateTimePickerLayout:Landroid/widget/LinearLayout;

    .line 681
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    .line 682
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_4

    .line 683
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 684
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 685
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    sget v8, Landroidx/picker/R$string;->sesl_date_picker_decrement_month:I

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    sget v8, Landroidx/picker/R$string;->sesl_date_picker_increment_month:I

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 688
    :cond_4
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 689
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 692
    :goto_2
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 695
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 696
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 697
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 698
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 699
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 700
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 701
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 702
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 703
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 705
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x101045c

    invoke-virtual {v1, v3, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 707
    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mBackgroundBorderlessResId:I

    .line 709
    sget v1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 710
    sget v1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerHeight:I

    .line 711
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOldCalendarViewPagerWidth:I

    .line 713
    sget v1, Landroidx/picker/R$dimen;->sesl_spinning_date_picker_height:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerViewHeight:I

    .line 716
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 717
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 718
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 719
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget v2, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 720
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget v2, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 722
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v2, Landroidx/picker/R$id;->sesl_date_picker_between_header_and_weekend:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpace:Landroid/view/View;

    .line 723
    sget v1, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpaceHeight:I

    .line 725
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    sget v2, Landroidx/picker/R$id;->sesl_date_picker_between_weekend_and_calender:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSecondBlankSpace:Landroid/view/View;

    .line 726
    sget v1, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSecondBlankSpaceHeight:I

    .line 728
    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    .line 731
    invoke-direct {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateSimpleMonthView(Z)V

    .line 733
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 734
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010057

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 735
    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_5

    move v5, v6

    :cond_5
    iput-boolean v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsInDialog:Z

    .line 737
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 738
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsInDialog:Z

    if-nez v2, :cond_6

    .line 745
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    .line 746
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get window of this context. context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslSpinningDatePicker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslSpinningDatePicker;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$1002(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPositionCount:I

    return p0
.end method

.method static synthetic access$1102(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslSpinningDatePicker;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    return p0
.end method

.method static synthetic access$1302(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$1400(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1402(Landroidx/picker/widget/SeslSpinningDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1500(Landroidx/picker/widget/SeslSpinningDatePicker;Ljava/util/Calendar;III)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    return p0
.end method

.method static synthetic access$1602(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    return p1
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    return p0
.end method

.method static synthetic access$1702(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    return p1
.end method

.method static synthetic access$1800(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    return p0
.end method

.method static synthetic access$1802(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    return p1
.end method

.method static synthetic access$1900(Landroidx/picker/widget/SeslSpinningDatePicker;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    return p0
.end method

.method static synthetic access$1902(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslSpinningDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/picker/widget/SeslSpinningDatePicker;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$2200(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    return p0
.end method

.method static synthetic access$2300(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2400(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    return p0
.end method

.method static synthetic access$2402(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    return p1
.end method

.method static synthetic access$2500(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    return p0
.end method

.method static synthetic access$2502(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    return p1
.end method

.method static synthetic access$2600(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    return p0
.end method

.method static synthetic access$2602(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    return p1
.end method

.method static synthetic access$2700(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    return p0
.end method

.method static synthetic access$2702(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    return p1
.end method

.method static synthetic access$2800(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    return p0
.end method

.method static synthetic access$2902(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    return p1
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    return p0
.end method

.method static synthetic access$3002(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    return p1
.end method

.method static synthetic access$3100(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    return p0
.end method

.method static synthetic access$3102(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    return p1
.end method

.method static synthetic access$3200(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    return p0
.end method

.method static synthetic access$3202(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    return p1
.end method

.method static synthetic access$3300(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    return-object p0
.end method

.method static synthetic access$3400(Landroidx/picker/widget/SeslSpinningDatePicker;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$3500(Landroidx/picker/widget/SeslSpinningDatePicker;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsWeekRangeSet:Z

    return p0
.end method

.method static synthetic access$3600(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getDayOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Landroidx/picker/widget/SeslSpinningDatePicker;IIII)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateStartEndDateRange(IIII)V

    return-void
.end method

.method static synthetic access$3800(Landroidx/picker/widget/SeslSpinningDatePicker;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDateChanged()V

    return-void
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    return p0
.end method

.method static synthetic access$4100(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Landroidx/picker/widget/SeslSpinningDatePicker;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMonthViewColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Landroidx/picker/widget/SeslSpinningDatePicker;I)Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getLunarDateByPosition(I)Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Landroidx/picker/widget/SeslSpinningDatePicker;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunarSupported:Z

    return p0
.end method

.method static synthetic access$4600(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$4700(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$4800(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNumDays:I

    return p0
.end method

.method static synthetic access$4802(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic access$4900(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mWeekStart:I

    return p0
.end method

.method static synthetic access$4902(Landroidx/picker/widget/SeslSpinningDatePicker;I)I
    .locals 0

    .line 107
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/content/Context;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Landroidx/picker/widget/SeslSpinningDatePicker;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFromSetLunar:Z

    return p0
.end method

.method static synthetic access$5002(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic access$5100(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/os/Handler;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5200(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    return-object p0
.end method

.method static synthetic access$5300(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    return p0
.end method

.method static synthetic access$5400(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    return p0
.end method

.method static synthetic access$5500(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$5600(Landroidx/picker/widget/SeslSpinningDatePicker;)I
    .locals 0

    .line 107
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPadding:I

    return p0
.end method

.method static synthetic access$5900(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslSpinningDatePicker;FZ)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslSpinningDatePicker;->setPrevButtonProperties(FZ)V

    return-void
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslSpinningDatePicker;FZ)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslSpinningDatePicker;->setNextButtonProperties(FZ)V

    return-void
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private addCustomButtonInHeader()V
    .locals 3

    .line 2808
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2811
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeCustomViewFromParent()V

    .line 2813
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 2814
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    .line 2815
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2816
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_lunar_calendar_header_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2819
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2820
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2821
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2822
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2824
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addCustomButtonSeparateLayout()V
    .locals 3

    .line 2843
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2847
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 2848
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    .line 2849
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2851
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2855
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2856
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2859
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeCustomViewFromParent()V

    .line 2860
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2863
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2865
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    return-void
.end method

.method private calculateContentHeight()V
    .locals 2

    .line 2196
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    if-le v0, v1, :cond_0

    return-void

    .line 2201
    :cond_0
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMeasureSpecHeight:I

    .line 2202
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 2203
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2206
    :cond_1
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateViewType(I)V

    return-void
.end method

.method private checkMaxFontSize()V
    .locals 5

    .line 2575
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2576
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_header_month_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2579
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    .line 2580
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v3, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2579
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private clearCalendar(Ljava/util/Calendar;III)V
    .locals 0

    const/4 p0, 0x1

    .line 928
    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 929
    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 930
    invoke-virtual {p1, p0, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;III)Ljava/util/Calendar;
    .locals 6

    .line 1094
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 1095
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    iget-boolean v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertLunarToSolar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    .line 1098
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p2, p3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p2

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1099
    invoke-static {p3, p4}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p3

    iget-object p4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1100
    invoke-static {p4, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p0

    .line 1098
    invoke-virtual {p1, p2, p3, p0}, Ljava/util/Calendar;->set(III)V

    return-object p1
.end method

.method private convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;
    .locals 6

    .line 1105
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1106
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    const/4 v3, 0x1

    .line 1107
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1106
    invoke-static {v1, v2, v3, v4, p1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertSolarToLunar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;III)V

    .line 1108
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1109
    invoke-static {v1, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1110
    invoke-static {v2, v3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v2

    .line 1108
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    if-eqz p2, :cond_0

    .line 1112
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    .line 1113
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    .line 1114
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    .line 1115
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->isLeapMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    :cond_0
    return-object v0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    .line 846
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 848
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 849
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p1, 0xb

    const/16 p2, 0xc

    .line 851
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 852
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 853
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 854
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v1, "com.android.calendar"

    .line 3031
    invoke-static {v0, v1}, Landroidx/reflect/feature/SeslFloatingFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3034
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3038
    :try_start_0
    sget-object v2, Landroidx/picker/widget/SeslSpinningDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v1, v0

    :catch_0
    return-object v1
.end method

.method private getDayOffset()I
    .locals 3

    .line 1810
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslSimpleMonthView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1811
    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfWeekStart:I

    .line 1812
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x7

    rem-int/2addr v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfWeekStart:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method private getFormattedCurrentDate()Ljava/lang/String;
    .locals 3

    .line 1358
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexOfleapMonthOfYear(I)I
    .locals 4

    .line 2955
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p0, 0x7f

    return p0

    .line 2959
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v1, v0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getField_START_OF_LUNAR_YEAR(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v0

    .line 2960
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getField_WIDTH_PER_YEAR(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v1

    .line 2961
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getField_INDEX_OF_LEAP_MONTH(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr p1, v0

    mul-int/2addr p1, v1

    .line 2965
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {v0, p0, p1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getLunar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;I)B

    move-result p0

    return p0
.end method

.method private getLunarDateByPosition(I)Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;
    .locals 7

    .line 2927
    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    invoke-direct {v0}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;-><init>()V

    .line 2928
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v1

    .line 2933
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxYear()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v3, :cond_5

    .line 2934
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 2937
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 2938
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 2940
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    .line 2943
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result p0

    const/16 v1, 0xd

    const/16 v3, 0xc

    if-le p0, v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    if-ge p1, p0, :cond_2

    move v6, p1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, p1, -0x1

    :goto_3
    if-ne v3, v1, :cond_3

    if-ne p0, p1, :cond_3

    move v4, v5

    :cond_3
    move v1, v2

    move p0, v4

    move v4, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move p0, v4

    .line 2950
    :goto_4
    invoke-virtual {v0, v1, v4, v5, p0}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->set(IIIZ)V

    return-object v0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10

    .line 2236
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    .line 2237
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    const-string v1, "LLLL y"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2238
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2239
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsTibetanLanguage:Z

    if-eqz v0, :cond_1

    .line 2240
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 2241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "y LLLL"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2242
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2244
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2245
    new-instance v3, Ljava/util/Formatter;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v3, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v8, 0x24

    const/4 v1, 0x0

    .line 2249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2250
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2251
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v6

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMonthViewColorStringForSpecific()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.carrier"

    .line 3141
    invoke-static {v1}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-only"

    .line 3142
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "XXXXXBR"

    if-eqz v1, :cond_1

    :try_start_1
    const-string p0, "persist.sys.selected_country_iso"

    .line 3146
    invoke-static {p0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ro.csc.countryiso_code"

    .line 3150
    invoke-static {p0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "AE"

    .line 3154
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    :cond_1
    const-string v1, "XSG"

    .line 3159
    invoke-static {}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 3163
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3164
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_3

    const/4 v1, 0x0

    .line 3166
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x1a8

    if-ne p0, v1, :cond_3

    return-object v2

    :catch_0
    move-exception p0

    .line 3174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeslSpinningDatePicker"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getTotalMonthCountWithLeap(I)I
    .locals 1

    .line 2920
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2923
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result p0

    sub-int/2addr p1, p0

    aget p0, v0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isFarsiLanguage()Z
    .locals 1

    .line 3074
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isRTL()Z
    .locals 3

    .line 1699
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1702
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

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

.method private isSimplifiedChinese()Z
    .locals 2

    .line 3078
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 3079
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

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

.method private isTibetanLanguage()Z
    .locals 1

    .line 3083
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3084
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 2146
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/high16 v2, -0x80000000

    const/16 v3, 0x258

    if-ne v0, v2, :cond_2

    if-lt v1, v3, :cond_1

    .line 2151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/picker/R$dimen;->sesl_date_picker_dialog_min_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    int-to-float v5, v1

    .line 2154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 2153
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    .line 2157
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    if-ne v0, v5, :cond_4

    if-lt v1, v3, :cond_3

    .line 2161
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLayoutMode:I

    if-nez p2, :cond_3

    .line 2162
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v0, p2, 0x2

    sub-int v0, v4, v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v4, p2

    .line 2163
    iput v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_2

    .line 2165
    :cond_3
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p2}, Landroid/widget/ViewAnimator;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    .line 2166
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p2}, Landroid/widget/ViewAnimator;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_2

    .line 2183
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2180
    :cond_5
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_6
    if-lt v1, v3, :cond_7

    .line 2170
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLayoutMode:I

    if-nez p1, :cond_7

    .line 2171
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p2, p1, 0x2

    sub-int p2, v4, p2

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v4, p1

    .line 2172
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_1

    .line 2174
    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    .line 2175
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 2177
    :goto_1
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2
    return p1
.end method

.method private onDateChanged()V
    .locals 0

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2

    .line 2395
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2396
    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;Landroidx/picker/widget/SeslSpinningDatePicker$1;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2398
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2400
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;->access$5800(Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2401
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 4

    .line 2408
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2409
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2411
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2412
    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePicker$10;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslSpinningDatePicker$10;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private removeCustomButtonInHeader()V
    .locals 4

    .line 2828
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2829
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 2830
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x10

    .line 2831
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v2, 0x0

    .line 2832
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2834
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2835
    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2836
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2837
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2839
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeCustomViewFromParent()V

    return-void
.end method

.method private removeCustomButtonSeparateLayout()V
    .locals 2

    .line 2869
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeCustomViewFromParent()V

    .line 2870
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2872
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    return-void
.end method

.method private removeCustomViewFromParent()V
    .locals 2

    .line 2797
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2801
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2802
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2803
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 2095
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2096
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 2097
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 2098
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setNextButtonProperties(FZ)V
    .locals 1

    .line 331
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 333
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 334
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 335
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 339
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method private setPrevButtonProperties(FZ)V
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 320
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 321
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 322
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 326
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 5

    .line 2876
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 2882
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxYear()I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTotalMonthCountWithLeap:[I

    .line 2884
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_8

    .line 2885
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v2

    const/16 v3, 0xc

    if-ne v1, v2, :cond_3

    .line 2886
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2887
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v4

    if-gt v4, v3, :cond_2

    if-ge v4, v2, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 v2, v2, 0xd

    goto :goto_2

    :cond_2
    :goto_1
    rsub-int/lit8 v2, v2, 0xc

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2897
    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxYear()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2898
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2899
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v4

    if-gt v4, v3, :cond_7

    if-ge v2, v4, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_2

    .line 2910
    :cond_5
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v2

    if-le v2, v3, :cond_6

    goto :goto_3

    :cond_6
    const/16 v3, 0xd

    :goto_3
    move v2, v3

    :cond_7
    :goto_4
    add-int/2addr v0, v2

    .line 2915
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v3

    sub-int v3, v1, v3

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method private updateSimpleMonthView(Z)V
    .locals 7

    .line 1818
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1819
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1821
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    .line 1822
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 1823
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 1828
    :cond_0
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarChanged:Z

    if-eqz v4, :cond_1

    .line 1829
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1830
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1834
    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v2, v4

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v4, v5

    .line 1836
    iget-boolean v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_9

    .line 1837
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 1839
    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v5

    if-ne v2, v5, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v2

    :goto_1
    add-int/2addr v4, v2

    .line 1842
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    const/4 v5, 0x3

    if-eq v2, v3, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    iget v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    if-ne v0, v6, :cond_5

    iget v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    if-eq v6, v3, :cond_8

    :cond_5
    if-eq v2, v1, :cond_6

    if-ne v2, v5, :cond_7

    :cond_6
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    if-eq v0, v3, :cond_8

    :cond_7
    if-nez v2, :cond_9

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    if-eqz v0, :cond_9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 1852
    :cond_9
    iput v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    .line 1853
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1855
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 1856
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1857
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1858
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1860
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 1861
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1862
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateStartEndDateRange(IIII)V
    .locals 3

    .line 1069
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    sub-int v1, p4, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1070
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    rsub-int/lit8 v1, p1, 0x7

    add-int v2, p4, v1

    invoke-direct {p0, v0, p2, p3, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1072
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1073
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1074
    invoke-direct {p0, v0, p2, p3, p4}, Landroidx/picker/widget/SeslSpinningDatePicker;->convertLunarToSolar(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object p2

    .line 1075
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Calendar;

    neg-int p1, p1

    add-int/lit8 p1, p1, 0x1

    const/4 p4, 0x6

    .line 1076
    invoke-virtual {p3, p4, p1}, Ljava/util/Calendar;->add(II)V

    .line 1077
    new-instance p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    invoke-direct {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;-><init>()V

    .line 1078
    invoke-direct {p0, p3, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    .line 1079
    iget p3, p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 1080
    iget p3, p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 1081
    iget p3, p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    const/4 p3, 0x0

    .line 1082
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    .line 1083
    invoke-virtual {p2, p4, v1}, Ljava/util/Calendar;->add(II)V

    .line 1084
    invoke-direct {p0, p2, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    .line 1085
    iget p2, p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 1086
    iget p2, p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 1087
    iget p1, p1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->day:I

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    .line 1088
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    :cond_0
    return-void
.end method

.method private updateViewType(I)V
    .locals 1

    .line 2216
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSupportShortSpinnerHeight:Z

    if-nez v0, :cond_2

    .line 2217
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2218
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2220
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->setCurrentViewType(I)V

    .line 2221
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 2222
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V

    goto :goto_0

    .line 2225
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    if-eqz p1, :cond_2

    .line 2226
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    invoke-virtual {p1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V

    goto :goto_0

    .line 2229
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->getOnSpinnerDateClickListener()Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2230
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOnSpinnerDateClickListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    invoke-virtual {p1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1352
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1353
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1463
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentViewType()I
    .locals 0

    .line 2696
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    return p0
.end method

.method public getDateMode()I
    .locals 0

    .line 2571
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1171
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1172
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    return p0

    .line 1175
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 0

    .line 1601
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1452
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    return v0

    .line 1455
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3069
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3058
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1248
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 0

    .line 1253
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMaxDay()I
    .locals 1

    .line 1323
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMaxMonth()I
    .locals 1

    .line 1313
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMaxYear()I
    .locals 1

    .line 1303
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinDate()J
    .locals 2

    .line 1189
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 0

    .line 1194
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMinDay()I
    .locals 1

    .line 1318
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinMonth()I
    .locals 1

    .line 1308
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinYear()I
    .locals 1

    .line 1298
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonth()I
    .locals 1

    .line 1157
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1158
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    return p0

    .line 1161
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 0

    .line 1583
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 0

    .line 1592
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 815
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->getWrapSelectorWheel()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 1143
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1144
    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    return p0

    .line 1147
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1344
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsEnabled:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2345
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    if-ne p1, v0, :cond_3

    .line 2346
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_1

    .line 2347
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2350
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2352
    :cond_1
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_2

    return-void

    .line 2355
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2357
    :cond_3
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_7

    .line 2358
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_5

    .line 2359
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_4

    return-void

    .line 2362
    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2364
    :cond_5
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    return-void

    .line 2367
    :cond_6
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1373
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1374
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    .line 1375
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isFarsiLanguage()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFarsiLanguage:Z

    .line 1376
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isTibetanLanguage()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsTibetanLanguage:Z

    .line 1379
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 1383
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 1385
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v0, :cond_0

    .line 1387
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 1389
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 1393
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1394
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDateTimePickerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1396
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFirstMeasure:Z

    .line 1398
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 1399
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerHeight:I

    .line 1400
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 1401
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpaceHeight:I

    .line 1402
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSecondBlankSpaceHeight:I

    .line 1404
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSupportShortSpinnerHeight:Z

    if-eqz v0, :cond_2

    const/4 p1, -0x2

    goto :goto_2

    .line 1405
    :cond_2
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsHeightSetForDialog:Z

    if-eqz v0, :cond_3

    sget v0, Landroidx/picker/R$dimen;->sesl_spinning_date_picker_height_dialog:I

    goto :goto_1

    .line 1406
    :cond_3
    sget v0, Landroidx/picker/R$dimen;->sesl_spinning_date_picker_height:I

    .line 1405
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_2
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerViewHeight:I

    .line 1407
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerHeight:I

    .line 1409
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_4

    .line 1410
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsConfigurationChanged:Z

    .line 1413
    :cond_4
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->checkMaxFontSize()V

    return-void
.end method

.method public onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v2, p4

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayClick day : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->debugLog(Ljava/lang/String;)V

    .line 1710
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    if-nez v1, :cond_0

    .line 1711
    invoke-virtual/range {p1 .. p1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfWeekStart:I

    .line 1714
    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1715
    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1717
    iget-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_1

    .line 1718
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 1719
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 1722
    :cond_1
    invoke-virtual {v0, v4, v3, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDayOfMonthSelected(III)V

    .line 1725
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v9

    sub-int v9, v4, v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    .line 1726
    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    const/4 v15, 0x0

    if-eq v9, v8, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v15

    :goto_0
    if-ne v4, v1, :cond_3

    if-ne v3, v6, :cond_3

    .line 1728
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOldSelectedDay:I

    if-ne v2, v1, :cond_3

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-nez v1, :cond_3

    if-eqz v8, :cond_4

    .line 1729
    :cond_3
    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOldSelectedDay:I

    .line 1730
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1734
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 1735
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v5

    .line 1741
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1742
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxDay()I

    move-result v1

    goto :goto_2

    :cond_6
    const/16 v1, 0x1f

    :goto_2
    move v10, v1

    .line 1748
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_7

    .line 1749
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    iget-boolean v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v8, v9}, Landroidx/picker/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    goto :goto_3

    :cond_7
    move-object/from16 v14, p1

    .line 1752
    :goto_3
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1753
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1754
    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1755
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1756
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1757
    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1760
    iget-boolean v12, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v12, :cond_8

    .line 1761
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 1762
    iget v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 1763
    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    .line 1764
    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 1765
    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 1766
    iget v11, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    move v12, v5

    move/from16 v16, v7

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_4

    :cond_8
    move/from16 v19, v5

    move/from16 v20, v7

    move v12, v8

    move/from16 v16, v9

    :goto_4
    move/from16 v21, v11

    move v11, v1

    .line 1769
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    move/from16 v18, v1

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

    .line 1771
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x0

    .line 1772
    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->setCurrentViewType(I)V

    .line 1773
    iput-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    return-void
.end method

.method public onDayOfMonthSelected(III)V
    .locals 4

    .line 1514
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1515
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1516
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1518
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1519
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 1520
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 1521
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    .line 1525
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x3e8

    .line 1526
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1527
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1529
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 1559
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1560
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1562
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_5

    .line 1563
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 1564
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 1565
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    .line 1566
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    .line 1567
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 1568
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 1569
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    .line 1570
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    goto :goto_1

    .line 1553
    :cond_1
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsWeekRangeSet:Z

    .line 1554
    rem-int/lit8 v0, p3, 0x7

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfWeekStart:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 1556
    :goto_0
    invoke-direct {p0, v2, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateStartEndDateRange(IIII)V

    goto :goto_1

    .line 1542
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1544
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_5

    .line 1545
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 1546
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 1547
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    .line 1548
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    goto :goto_1

    .line 1531
    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1533
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_5

    .line 1534
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 1535
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 1536
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    .line 1537
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    .line 1574
    :cond_5
    :goto_1
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    if-eqz v0, :cond_6

    .line 1575
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->onValidationChanged(Z)V

    .line 1577
    :cond_6
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->updateDate(III)V

    .line 1578
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDateChanged()V

    return-void
.end method

.method public onDeactivatedDayClick(Landroidx/picker/widget/SeslSimpleMonthView;IIIZZ)V
    .locals 3

    const/4 p5, 0x1

    .line 1780
    iput-boolean p5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    .line 1781
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_3

    .line 1782
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    if-eqz p6, :cond_0

    sub-int/2addr p2, p5

    goto :goto_0

    :cond_0
    add-int/2addr p2, p5

    :goto_0
    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslSpinningDatePicker;->getLunarDateByPosition(I)Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    move-result-object p2

    .line 1783
    iget p3, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    .line 1784
    iget v0, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    .line 1786
    iget-boolean p2, p2, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    iput-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapMonth:Z

    .line 1787
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    invoke-virtual {v1, v2, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setLunar(ZZ)V

    .line 1788
    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    if-eqz p6, :cond_1

    sub-int/2addr p2, p5

    goto :goto_1

    :cond_1
    add-int/2addr p2, p5

    :goto_1
    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    .line 1789
    iget-object p6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p6, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1790
    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    iget-object p2, p2, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget p6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    invoke-virtual {p2, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslSimpleMonthView;

    if-nez p2, :cond_2

    goto :goto_2

    .line 1791
    :cond_2
    invoke-virtual {p2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result p5

    :goto_2
    iput p5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfWeekStart:I

    .line 1792
    invoke-virtual {p0, p1, p3, v0, p4}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    goto :goto_4

    .line 1794
    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result p6

    sub-int p6, p2, p6

    mul-int/lit8 p6, p6, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr p6, v0

    .line 1795
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/picker/widget/SeslSimpleMonthView;

    if-nez p6, :cond_4

    move p6, p5

    goto :goto_3

    .line 1796
    :cond_4
    invoke-virtual {p6}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result p6

    :goto_3
    iput p6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfWeekStart:I

    .line 1797
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    .line 1798
    invoke-direct {p0, p5}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateSimpleMonthView(Z)V

    :goto_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 2374
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeAllCallbacks()V

    .line 2375
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2190
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2191
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->calculateContentHeight()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 2380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2381
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    .line 2382
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Landroidx/picker/widget/SeslSpinningDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 2383
    :cond_0
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPositionCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    .line 2384
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v2, v3, v4}, Landroidx/picker/widget/SeslSpinningDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 2106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMeasureSpecHeight:I

    .line 2107
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->makeMeasureSpec(II)I

    move-result p1

    .line 2108
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFirstMeasure:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOldCalendarViewPagerWidth:I

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    if-ne v0, v1, :cond_0

    .line 2109
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2112
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsFirstMeasure:Z

    .line 2113
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOldCalendarViewPagerWidth:I

    .line 2116
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2117
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2120
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2121
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2122
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslSpinningDatePicker$DayOfTheWeekView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2123
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerWidth:I

    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2124
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerViewHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2125
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsConfigurationChanged:Z

    if-eqz v0, :cond_2

    .line 2126
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->seslSetConfigurationChanged(Z)V

    .line 2128
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2129
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2131
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1494
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 1495
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1497
    check-cast p1, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;

    .line 1499
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getSelectedDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1500
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setValue(Ljava/util/Calendar;)V

    .line 1502
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getSelectedYear()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 1504
    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getSelectedMonth()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 1505
    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getSelectedDay()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    .line 1508
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1509
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;->getMaxDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .line 1471
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1473
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1474
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1475
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1477
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    .line 1478
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 1479
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 1480
    iget v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    :cond_0
    move v4, v3

    move v3, v2

    move v2, v0

    const/4 v9, -0x1

    .line 1486
    new-instance v11, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroidx/picker/widget/SeslSpinningDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILandroidx/picker/widget/SeslSpinningDatePicker$1;)V

    return-object v11
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 790
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method onValidationChanged(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 9

    const/16 v0, 0x3e8

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    return-void

    .line 2597
    :cond_0
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    if-eq v4, p1, :cond_7

    .line 2598
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2600
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2602
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2603
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2604
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2605
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2606
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    .line 2608
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2611
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 2612
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2613
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    move v2, v3

    goto/16 :goto_3

    .line 2617
    :cond_1
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    if-eq v4, p1, :cond_7

    .line 2621
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq v4, v3, :cond_5

    if-eq v4, v6, :cond_3

    .line 2648
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_2

    .line 2649
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 2650
    iget v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 2651
    iget v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    goto :goto_2

    .line 2653
    :cond_2
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2654
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2655
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_1

    .line 2636
    :cond_3
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_4

    .line 2637
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 2638
    iget v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 2639
    iget v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    goto :goto_2

    .line 2641
    :cond_4
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2642
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2643
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_1

    .line 2624
    :cond_5
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_6

    .line 2625
    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 2626
    iget v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 2627
    iget v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    goto :goto_2

    .line 2629
    :cond_6
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2630
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2631
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_1
    move v8, v6

    move v6, v5

    move v5, v8

    .line 2659
    :goto_2
    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v7, v4, v5, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->updateDate(III)V

    .line 2660
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2661
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2662
    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2663
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2664
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    .line 2668
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 2669
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2670
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2677
    :cond_7
    :goto_3
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOnViewTypeChangedListener:Landroidx/picker/widget/SeslSpinningDatePicker$OnViewTypeChangedListener;

    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    .line 2678
    invoke-interface {p1, p0}, Landroidx/picker/widget/SeslSpinningDatePicker$OnViewTypeChangedListener;->onViewTypeChanged(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    .line 2681
    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 2682
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2683
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDateMode(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2454
    iput v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    const/4 v2, 0x0

    .line 2455
    iput-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsWeekRangeSet:Z

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_0

    goto :goto_2

    .line 2475
    :cond_0
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_1

    .line 2476
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 2477
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 2478
    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    goto :goto_0

    .line 2480
    :cond_1
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2481
    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2482
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2484
    :goto_0
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v8, v1, v6, v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->updateDate(III)V

    goto :goto_2

    .line 2461
    :cond_2
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_3

    .line 2462
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 2463
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 2464
    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    goto :goto_1

    .line 2466
    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2467
    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2468
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2470
    :goto_1
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v8, v1, v6, v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->updateDate(III)V

    .line 2488
    :goto_2
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentViewType:I

    if-nez v1, :cond_4

    .line 2489
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2490
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2493
    :cond_4
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2494
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentPosition:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_9

    .line 2498
    iget-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_5

    .line 2499
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentYear:I

    .line 2500
    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentMonth:I

    .line 2501
    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarCurrentDay:I

    goto :goto_3

    .line 2503
    :cond_5
    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2504
    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2505
    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    :goto_3
    move v9, v6

    move/from16 v24, v8

    move v8, v7

    move/from16 v7, v24

    .line 2510
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v6

    if-ne v6, v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 2511
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinDay()I

    move-result v6

    move v11, v6

    goto :goto_4

    :cond_6
    move v11, v5

    .line 2517
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxMonth()I

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxYear()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 2518
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMaxDay()I

    move-result v6

    goto :goto_5

    :cond_7
    const/16 v6, 0x1f

    :goto_5
    move v12, v6

    .line 2526
    iget-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_8

    .line 2527
    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartYear:I

    .line 2528
    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartMonth:I

    .line 2529
    iget v5, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarStartDay:I

    .line 2530
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndYear:I

    .line 2531
    iget v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndMonth:I

    .line 2532
    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mLunarEndDay:I

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v13

    goto :goto_6

    .line 2534
    :cond_8
    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2535
    iget-object v10, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 2536
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 2537
    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2538
    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2539
    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v19, v5

    move v15, v6

    move/from16 v16, v10

    move/from16 v17, v13

    .line 2542
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getFirstDayOfWeek()I

    move-result v10

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapStartMonth:I

    move/from16 v18, v3

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLeapEndMonth:I

    move/from16 v22, v3

    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMode:I

    move/from16 v23, v3

    move-object v6, v1

    invoke-virtual/range {v6 .. v23}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    .line 2546
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2550
    :cond_9
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_a

    .line 2551
    invoke-direct {v0, v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->updateSimpleMonthView(Z)V

    .line 2556
    :cond_a
    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1331
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1334
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1335
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setEnabled(Z)V

    .line 1336
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1434
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mFirstDayOfWeek:I

    return-void

    .line 1432
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGravity(I)V
    .locals 1

    .line 3093
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3094
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3095
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIs24HourView:Z

    .line 765
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mEmptySpaceLeft:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsMarginRightShown:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1264
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1265
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1266
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1267
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1268
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1269
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1273
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1274
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->setTotalMonthCountWithLeap()V

    .line 1278
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1280
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDateChanged()V

    .line 1282
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1284
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setMaxValue(Ljava/util/Calendar;)V

    .line 1286
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1287
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroidx/picker/widget/SeslSpinningDatePicker$9;

    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslSpinningDatePicker$9;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1205
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1206
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1207
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1208
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1209
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1210
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1214
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1215
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->setTotalMonthCountWithLeap()V

    .line 1219
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1221
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setValue(Ljava/util/Calendar;)V

    .line 1222
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->onDateChanged()V

    .line 1224
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1226
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setMinValue(Ljava/util/Calendar;)V

    .line 1228
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1229
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroidx/picker/widget/SeslSpinningDatePicker$8;

    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslSpinningDatePicker$8;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnViewTypeChangedListener(Landroidx/picker/widget/SeslSpinningDatePicker$OnViewTypeChangedListener;)V
    .locals 0

    .line 864
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mOnViewTypeChangedListener:Landroidx/picker/widget/SeslSpinningDatePicker$OnViewTypeChangedListener;

    return-void
.end method

.method public setSeparateLunarButton(Z)V
    .locals 1

    .line 2782
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsCustomButtonSeparate:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2787
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeCustomButtonInHeader()V

    .line 2788
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->addCustomButtonSeparateLayout()V

    goto :goto_0

    .line 2790
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->removeCustomButtonSeparateLayout()V

    .line 2791
    invoke-direct {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->addCustomButtonInHeader()V

    .line 2793
    :goto_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mIsCustomButtonSeparate:Z

    return-void
.end method

.method public setViewAnimatorForCalendarView(Landroid/widget/ViewAnimator;)V
    .locals 4

    .line 781
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 782
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mViewAnimator:Landroid/widget/ViewAnimator;

    .line 783
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mCalendarViewLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v1, v0}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 836
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker;->mDatePickerSpinner:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setWrapSelectorWheel(Z)V

    return-void
.end method
