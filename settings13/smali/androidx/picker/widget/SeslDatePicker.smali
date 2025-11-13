.class public Landroidx/picker/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;
.source "SeslDatePicker.java"

# interfaces
.implements Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslDatePicker$LunarDate;,
        Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;,
        Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;,
        Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;,
        Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;,
        Landroidx/picker/widget/SeslDatePicker$SavedState;,
        Landroidx/picker/widget/SeslDatePicker$ValidationCallback;,
        Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;,
        Landroidx/picker/widget/SeslDatePicker$OnViewTypeChangedListener;,
        Landroidx/picker/widget/SeslDatePicker$DateValidator;
    }
.end annotation


# static fields
.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mBackgroundBorderlessResId:I

.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mCalendarHeader:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentViewType:I

.field private mCustomButtonLayout:Landroid/widget/RelativeLayout;

.field private mCustomButtonView:Landroid/view/View;

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

.field private mDayOfWeekStart:I

.field private mDialogPaddingVertical:I

.field private mDialogWindow:Landroid/view/Window;

.field private mEndDate:Ljava/util/Calendar;

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCalledFromDeactivatedDayClick:Z

.field private mIsConfigurationChanged:Z

.field private mIsCustomButtonSeparate:Z

.field private mIsEnabled:Z

.field private mIsFarsiLanguage:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsInDialog:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsRTL:Z

.field private mIsSimplifiedChinese:Z

.field private mIsWeekRangeSet:Z

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

.field private mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

.field private mOnViewTypeChangedListener:Landroidx/picker/widget/SeslDatePicker$OnViewTypeChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

.field private mStartDate:Ljava/util/Calendar;

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

.field private mWeekStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 491
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .line 505
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 209
    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    const/4 v2, -0x1

    .line 220
    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    .line 227
    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->mOldSelectedDay:I

    .line 228
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    .line 236
    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    .line 239
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    .line 240
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    const/4 v2, 0x0

    .line 241
    iput-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    .line 266
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunarSupported:Z

    .line 267
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    .line 268
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    .line 269
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFromSetLunar:Z

    .line 270
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarChanged:Z

    .line 271
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsCustomButtonSeparate:Z

    .line 289
    iput-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 306
    new-instance v3, Landroidx/picker/widget/SeslDatePicker$1;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslDatePicker$1;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 342
    new-instance v4, Landroidx/picker/widget/SeslDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroidx/picker/widget/SeslDatePicker$2;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroid/os/Looper;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    .line 420
    new-instance v4, Landroidx/picker/widget/SeslDatePicker$3;

    invoke-direct {v4, p0}, Landroidx/picker/widget/SeslDatePicker$3;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 431
    new-instance v4, Landroidx/picker/widget/SeslDatePicker$4;

    invoke-direct {v4, p0}, Landroidx/picker/widget/SeslDatePicker$4;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 445
    new-instance v4, Landroidx/picker/widget/SeslDatePicker$5;

    invoke-direct {v4, p0}, Landroidx/picker/widget/SeslDatePicker$5;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 507
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    .line 508
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 509
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->isRTL()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    .line 510
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    .line 511
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/picker/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v4, :cond_0

    .line 513
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    const-string v6, "EEEEE"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 515
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    const-string v6, "EEE"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 517
    :goto_0
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v4, v5}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 518
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v4, v5}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 519
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v4, v5}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 520
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v4, v5}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 521
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v4, v5}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 523
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 524
    sget-object v5, Landroidx/picker/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 526
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    sget v8, Landroidx/picker/R$styleable;->DatePicker_android_startYear:I

    const/16 v9, 0x76e

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 527
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    sget v8, Landroidx/picker/R$styleable;->DatePicker_android_endYear:I

    const/16 v9, 0x834

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v9, 0xb

    const/16 v10, 0x1f

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 529
    iget-object v7, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 532
    sget v8, Landroidx/picker/R$layout;->sesl_date_picker:I

    .line 531
    invoke-virtual {v7, v8, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 534
    sget v7, Landroidx/picker/R$styleable;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    invoke-virtual {p0, v7}, Landroidx/picker/widget/SeslDatePicker;->setFirstDayOfWeek(I)V

    .line 539
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->getMonthViewColorStringForSpecific()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    .line 543
    iget-object v6, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 545
    new-instance p3, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, p4, p2}, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    .line 546
    sget p3, Landroidx/picker/R$styleable;->DatePicker_headerTextColor:I

    sget p4, Landroidx/picker/R$color;->sesl_date_picker_header_text_color_light:I

    .line 547
    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 546
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 548
    sget p4, Landroidx/picker/R$styleable;->DatePicker_buttonTintColor:I

    sget v5, Landroidx/picker/R$color;->sesl_date_picker_button_tint_color_light:I

    .line 549
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 548
    invoke-virtual {p2, p4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 550
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 552
    new-instance p2, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    iput-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    .line 553
    sget p2, Landroidx/picker/R$id;->sesl_date_picker_calendar:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 554
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p2, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 555
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v5, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;

    invoke-direct {v5, p0, v2}, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePicker$1;)V

    invoke-virtual {p2, v5}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 556
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->seslSetSupportedMouseWheelEvent(Z)V

    .line 557
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->canSupportLayoutDirectionForDatePicker(Z)V

    .line 559
    sget p2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    .line 560
    sget p2, Landroidx/picker/R$id;->sesl_date_picker_calendar_header:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 561
    sget p2, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    .line 562
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, p3, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 564
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, p3, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 566
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_view_animator:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ViewAnimator;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    .line 568
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_spinner_view:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    .line 569
    new-instance v2, Landroidx/picker/widget/SeslDatePicker$6;

    invoke-direct {v2, p0}, Landroidx/picker/widget/SeslDatePicker$6;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    invoke-virtual {p3, p0, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    .line 654
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    .line 655
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v2, Landroidx/picker/widget/SeslDatePicker$7;

    invoke-direct {v2, p0}, Landroidx/picker/widget/SeslDatePicker$7;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 665
    sget p3, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 667
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->checkMaxFontSize()V

    .line 669
    sget p3, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 671
    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewMargin:I

    .line 673
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 675
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_day_of_the_week:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    .line 676
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_layout:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 679
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_layout:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    .line 682
    iget-boolean p3, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p3, :cond_2

    .line 683
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 685
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 687
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v5, Landroidx/picker/R$string;->sesl_date_picker_decrement_month:I

    .line 688
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 689
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v5, Landroidx/picker/R$string;->sesl_date_picker_increment_month:I

    .line 690
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 692
    :cond_2
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 694
    sget p3, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 698
    :goto_1
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 701
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 702
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 703
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 704
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 705
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 706
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 707
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 708
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 709
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 711
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 712
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p4, 0x101045c

    invoke-virtual {p1, p4, p3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 714
    iget p1, p3, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    .line 716
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 718
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    .line 720
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    .line 723
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 724
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 725
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 726
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget p2, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 727
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget p2, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 729
    sget p1, Landroidx/picker/R$id;->sesl_date_picker_between_header_and_weekend:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    .line 730
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    .line 733
    sget p1, Landroidx/picker/R$id;->sesl_date_picker_between_weekend_and_calender:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    .line 734
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    .line 737
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget p3, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr p2, p3

    iget p3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    .line 740
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 742
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 743
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x1010057

    invoke-virtual {p2, p3, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 744
    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsInDialog:Z

    .line 746
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/picker/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 747
    iget-boolean p2, p0, Landroidx/picker/widget/SeslDatePicker;->mIsInDialog:Z

    if-nez p2, :cond_4

    .line 755
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    .line 756
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot get window of this context. context:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslDatePicker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$1102(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    return p0
.end method

.method static synthetic access$1202(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic access$1300(Landroidx/picker/widget/SeslDatePicker;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    return p0
.end method

.method static synthetic access$1402(Landroidx/picker/widget/SeslDatePicker;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslDatePicker;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$1800(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    return p0
.end method

.method static synthetic access$1802(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    return p1
.end method

.method static synthetic access$1900(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return p0
.end method

.method static synthetic access$1902(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return p1
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    return p0
.end method

.method static synthetic access$2002(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    return p1
.end method

.method static synthetic access$2100(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    return p0
.end method

.method static synthetic access$2200(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2300(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2400(Landroidx/picker/widget/SeslDatePicker;Ljava/util/Calendar;III)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    return-void
.end method

.method static synthetic access$2500(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    return p0
.end method

.method static synthetic access$2502(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    return p1
.end method

.method static synthetic access$2600(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    return p0
.end method

.method static synthetic access$2602(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    return p1
.end method

.method static synthetic access$2700(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    return p0
.end method

.method static synthetic access$2702(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    return p1
.end method

.method static synthetic access$2800(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return p0
.end method

.method static synthetic access$2802(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return p1
.end method

.method static synthetic access$2900(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    return p0
.end method

.method static synthetic access$2902(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    return p1
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    return p0
.end method

.method static synthetic access$3002(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    return p1
.end method

.method static synthetic access$3100(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    return p0
.end method

.method static synthetic access$3102(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    return p1
.end method

.method static synthetic access$3200(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return p0
.end method

.method static synthetic access$3202(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return p1
.end method

.method static synthetic access$3302(Landroidx/picker/widget/SeslDatePicker;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$3400(Landroidx/picker/widget/SeslDatePicker;Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$3500(Landroidx/picker/widget/SeslDatePicker;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsWeekRangeSet:Z

    return p0
.end method

.method static synthetic access$3600(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->getDayOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Landroidx/picker/widget/SeslDatePicker;IIII)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslDatePicker;->updateStartEndDateRange(IIII)V

    return-void
.end method

.method static synthetic access$3800(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    return-void
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    return p0
.end method

.method static synthetic access$4100(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Landroidx/picker/widget/SeslDatePicker;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Landroidx/picker/widget/SeslDatePicker;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Landroidx/picker/widget/SeslDatePicker;I)Landroidx/picker/widget/SeslDatePicker$LunarDate;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->getLunarDateByPosition(I)Landroidx/picker/widget/SeslDatePicker$LunarDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Landroidx/picker/widget/SeslDatePicker;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunarSupported:Z

    return p0
.end method

.method static synthetic access$4600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$4700(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$4800(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    return p0
.end method

.method static synthetic access$4802(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic access$4900(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mWeekStart:I

    return p0
.end method

.method static synthetic access$4902(Landroidx/picker/widget/SeslDatePicker;I)I
    .locals 0

    .line 111
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslDatePicker;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Landroidx/picker/widget/SeslDatePicker;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFromSetLunar:Z

    return p0
.end method

.method static synthetic access$5002(Landroidx/picker/widget/SeslDatePicker;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic access$5100(Landroidx/picker/widget/SeslDatePicker;)Landroid/os/Handler;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5200(Landroidx/picker/widget/SeslDatePicker;)Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    return-object p0
.end method

.method static synthetic access$5300(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    return p0
.end method

.method static synthetic access$5400(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    return p0
.end method

.method static synthetic access$5500(Landroidx/picker/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$5600(Landroidx/picker/widget/SeslDatePicker;)I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    return p0
.end method

.method static synthetic access$5900(Landroidx/picker/widget/SeslDatePicker;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslDatePicker;)Landroidx/picker/widget/SeslDatePicker$DateValidator;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslDatePicker;FZ)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslDatePicker;->setPrevButtonProperties(FZ)V

    return-void
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslDatePicker;FZ)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslDatePicker;->setNextButtonProperties(FZ)V

    return-void
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private addCustomButtonInHeader()V
    .locals 3

    .line 2881
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2884
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeCustomViewFromParent()V

    .line 2886
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 2887
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    .line 2888
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2889
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_lunar_calendar_header_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2892
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2893
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2894
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2895
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2897
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addCustomButtonSeparateLayout()V
    .locals 3

    .line 2916
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2920
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 2921
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    .line 2922
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2924
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2928
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2929
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2932
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeCustomViewFromParent()V

    .line 2933
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2936
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2938
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    return-void
.end method

.method private calculateContentHeight()V
    .locals 2

    .line 2171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2172
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    if-le v0, v1, :cond_0

    return-void

    .line 2177
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 2178
    sget v1, Landroidx/picker/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    .line 2181
    :cond_1
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMeasureSpecHeight:I

    .line 2182
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mContentFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 2183
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 2184
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    .line 2185
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogPaddingVertical:I

    sub-int/2addr v0, v1

    .line 2189
    :cond_2
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslDatePicker;->updateViewType(I)V

    return-void
.end method

.method private checkMaxFontSize()V
    .locals 5

    .line 2580
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2581
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_header_month_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2585
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    .line 2586
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v3, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v0, v3

    .line 2585
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private clearCalendar(Ljava/util/Calendar;III)V
    .locals 0

    .line 875
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/4 p0, 0x1

    .line 876
    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 877
    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 878
    invoke-virtual {p1, p0, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;III)Ljava/util/Calendar;
    .locals 6

    .line 1514
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 1515
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    iget-boolean v5, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertLunarToSolar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    .line 1518
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p2, p3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p2

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1519
    invoke-static {p3, p4}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p3

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1520
    invoke-static {p4, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p0

    .line 1518
    invoke-virtual {p1, p2, p3, p0}, Ljava/util/Calendar;->set(III)V

    return-object p1
.end method

.method private convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslDatePicker$LunarDate;)Ljava/util/Calendar;
    .locals 6

    .line 1525
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1526
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    const/4 v3, 0x1

    .line 1527
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1526
    invoke-static {v1, v2, v3, v4, p1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertSolarToLunar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;III)V

    .line 1528
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1529
    invoke-static {v1, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1530
    invoke-static {v2, v3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v2

    .line 1528
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    if-eqz p2, :cond_0

    .line 1532
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->day:I

    .line 1533
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    .line 1534
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    .line 1535
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->isLeapMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    :cond_0
    return-object v0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    .line 797
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 799
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 800
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 801
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private static getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v1, "com.android.calendar"

    .line 3110
    invoke-static {v0, v1}, Landroidx/reflect/feature/SeslFloatingFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3117
    :try_start_0
    sget-object v2, Landroidx/picker/widget/SeslDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

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

    .line 1772
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslSimpleMonthView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1773
    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

    .line 1774
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x7

    rem-int/2addr v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

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

    .line 1244
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexOfleapMonthOfYear(I)I
    .locals 4

    .line 3031
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p0, 0x7f

    return p0

    .line 3035
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v1, v0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getField_START_OF_LUNAR_YEAR(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v0

    .line 3037
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getField_WIDTH_PER_YEAR(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v1

    .line 3039
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getField_INDEX_OF_LEAP_MONTH(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr p1, v0

    mul-int/2addr p1, v1

    .line 3044
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {v0, p0, p1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarTablesReflector;->getLunar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;I)B

    move-result p0

    return p0
.end method

.method private getLunarDateByPosition(I)Landroidx/picker/widget/SeslDatePicker$LunarDate;
    .locals 7

    .line 3001
    new-instance v0, Landroidx/picker/widget/SeslDatePicker$LunarDate;

    invoke-direct {v0}, Landroidx/picker/widget/SeslDatePicker$LunarDate;-><init>()V

    .line 3002
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    .line 3007
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v3, :cond_5

    .line 3008
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 3011
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 3012
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 3014
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    .line 3017
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

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

    .line 3026
    :goto_4
    invoke-virtual {v0, v1, v4, v5, p0}, Landroidx/picker/widget/SeslDatePicker$LunarDate;->set(IIIZ)V

    return-object v0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10

    .line 2234
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    .line 2235
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    const-string v1, "LLLL y"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2237
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2240
    new-instance v3, Ljava/util/Formatter;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v3, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v8, 0x24

    const/4 v1, 0x0

    .line 2244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2245
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2246
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2247
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v6

    .line 2246
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    .line 2247
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMonthViewColorStringForSpecific()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.carrier"

    .line 3176
    invoke-static {v1}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-only"

    .line 3177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "XXXXXBR"

    if-eqz v1, :cond_1

    :try_start_1
    const-string p0, "persist.sys.selected_country_iso"

    .line 3181
    invoke-static {p0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ro.csc.countryiso_code"

    .line 3185
    invoke-static {p0}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getStringProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "AE"

    .line 3189
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    :cond_1
    const-string v1, "XSG"

    .line 3194
    invoke-static {}, Landroidx/reflect/os/SeslSystemPropertiesReflector;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 3198
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3199
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_3

    const/4 v1, 0x0

    .line 3201
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x1a8

    if-ne p0, v1, :cond_3

    return-object v2

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    .line 3209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeslDatePicker"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getTotalMonthCountWithLeap(I)I
    .locals 1

    .line 2994
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2997
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

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

    .line 3153
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isRTL()Z
    .locals 3

    .line 1655
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1658
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 1659
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 1658
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

    .line 3157
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 3158
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

.method private makeMeasureSpec(II)I
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 2129
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 2133
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    .line 2135
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/picker/R$dimen;->sesl_date_picker_dialog_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    int-to-float v2, v2

    .line 2139
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2138
    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    .line 2142
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    .line 2146
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v0, p2, 0x2

    sub-int v0, v2, v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v2, p2

    .line 2147
    iput v2, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_1

    .line 2158
    :cond_3
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

    .line 2155
    :cond_4
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 2150
    :cond_5
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p2, p1, 0x2

    sub-int p2, v2, p2

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v2, p1

    .line 2151
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 2152
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method private onDateChanged()V
    .locals 4

    .line 1036
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1038
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1039
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1041
    iget-boolean v3, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_0

    .line 1042
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1043
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1044
    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 1047
    :cond_0
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v0, v1, v2}, Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;->onDateChanged(Landroidx/picker/widget/SeslDatePicker;III)V

    :cond_1
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2

    .line 2400
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2401
    new-instance v0, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePicker$1;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2403
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2405
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->access$5800(Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2406
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 4

    .line 2413
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2414
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2416
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2417
    new-instance v1, Landroidx/picker/widget/SeslDatePicker$8;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslDatePicker$8;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private removeCustomButtonInHeader()V
    .locals 4

    .line 2901
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2902
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 2903
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x10

    .line 2904
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v2, 0x0

    .line 2905
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2907
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2908
    sget v2, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2909
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2910
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2912
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeCustomViewFromParent()V

    return-void
.end method

.method private removeCustomButtonSeparateLayout()V
    .locals 2

    .line 2942
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeCustomViewFromParent()V

    .line 2943
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2945
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    return-void
.end method

.method private removeCustomViewFromParent()V
    .locals 2

    .line 2870
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2874
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2875
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2876
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 2073
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2074
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 2075
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 2076
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

.method private setNextButtonProperties(FZ)V
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 332
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 333
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 334
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 338
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method private setPrevButtonProperties(FZ)V
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    if-eqz p2, :cond_0

    .line 319
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 320
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 321
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 325
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 5

    .line 2949
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 2955
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    .line 2957
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_8

    .line 2958
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    const/16 v3, 0xc

    if-ne v1, v2, :cond_3

    .line 2959
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2960
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

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

    .line 2970
    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2971
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2972
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v4

    if-gt v4, v3, :cond_7

    if-ge v2, v4, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_2

    .line 2983
    :cond_5
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

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

    .line 2988
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

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

    .line 1780
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1781
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1783
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    .line 1784
    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1785
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1790
    :cond_0
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarChanged:Z

    if-eqz v4, :cond_1

    .line 1791
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1792
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1796
    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v2, v4

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v4, v5

    .line 1798
    iget-boolean v5, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_9

    .line 1799
    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 1801
    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1802
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroidx/picker/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v2

    :goto_1
    add-int/2addr v4, v2

    .line 1805
    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    const/4 v5, 0x3

    if-eq v2, v3, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    iget v6, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    if-ne v0, v6, :cond_5

    iget v6, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    if-eq v6, v3, :cond_8

    :cond_5
    if-eq v2, v1, :cond_6

    if-ne v2, v5, :cond_7

    :cond_6
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    if-eq v0, v3, :cond_8

    :cond_7
    if-nez v2, :cond_9

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    if-eqz v0, :cond_9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 1815
    :cond_9
    iput v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    .line 1816
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    .line 1819
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v4, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 1821
    :cond_a
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1824
    :goto_2
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 1825
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1826
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1827
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1829
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 1830
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1831
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateStartEndDateRange(IIII)V
    .locals 3

    .line 1489
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    sub-int v1, p4, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1490
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    rsub-int/lit8 v1, p1, 0x7

    add-int v2, p4, v1

    invoke-direct {p0, v0, p2, p3, v2}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1492
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1493
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1494
    invoke-direct {p0, v0, p2, p3, p4}, Landroidx/picker/widget/SeslDatePicker;->convertLunarToSolar(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object p2

    .line 1495
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Calendar;

    neg-int p1, p1

    add-int/lit8 p1, p1, 0x1

    const/4 p4, 0x6

    .line 1496
    invoke-virtual {p3, p4, p1}, Ljava/util/Calendar;->add(II)V

    .line 1497
    new-instance p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;

    invoke-direct {p1}, Landroidx/picker/widget/SeslDatePicker$LunarDate;-><init>()V

    .line 1498
    invoke-direct {p0, p3, p1}, Landroidx/picker/widget/SeslDatePicker;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslDatePicker$LunarDate;)Ljava/util/Calendar;

    .line 1499
    iget p3, p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1500
    iget p3, p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1501
    iget p3, p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;->day:I

    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    const/4 p3, 0x0

    .line 1502
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    .line 1503
    invoke-virtual {p2, p4, v1}, Ljava/util/Calendar;->add(II)V

    .line 1504
    invoke-direct {p0, p2, p1}, Landroidx/picker/widget/SeslDatePicker;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslDatePicker$LunarDate;)Ljava/util/Calendar;

    .line 1505
    iget p2, p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1506
    iget p2, p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1507
    iget p1, p1, Landroidx/picker/widget/SeslDatePicker$LunarDate;->day:I

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    .line 1508
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    :cond_0
    return-void
.end method

.method private updateViewType(I)V
    .locals 4

    .line 2200
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2201
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2202
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2203
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2204
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2205
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 2207
    :cond_0
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    const/4 v3, 0x1

    if-ge p1, v0, :cond_1

    .line 2208
    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslDatePicker;->setCurrentViewType(I)V

    .line 2209
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2210
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 2212
    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2213
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2214
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1238
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1239
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->getFormattedCurrentDate()Ljava/lang/String;

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

    .line 1353
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentViewType()I
    .locals 0

    .line 2703
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    return p0
.end method

.method public getDateMode()I
    .locals 0

    .line 2576
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    return p0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1086
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1087
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    return p0

    .line 1090
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 0

    .line 1555
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1342
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    return v0

    .line 1345
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3148
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3137
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1149
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxDay()I
    .locals 1

    .line 1210
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getMaxMonth()I
    .locals 1

    .line 1200
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getMaxYear()I
    .locals 1

    .line 1190
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinDate()J
    .locals 2

    .line 1104
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getMinDay()I
    .locals 1

    .line 1205
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getMinMonth()I
    .locals 1

    .line 1195
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method getMinYear()I
    .locals 1

    .line 1185
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMonth()I
    .locals 1

    .line 1072
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1073
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return p0

    .line 1076
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 0

    .line 1546
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getYear()I
    .locals 1

    .line 1058
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1059
    iget p0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    return p0

    .line 1062
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public init(IIILandroidx/picker/widget/SeslDatePicker$OnDateChangedListener;)V
    .locals 3

    .line 827
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 828
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 829
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 831
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 832
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 833
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 834
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 838
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 842
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v2}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 846
    :cond_2
    iput-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mOnDateChangedListener:Landroidx/picker/widget/SeslDatePicker$OnDateChangedListener;

    .line 848
    invoke-direct {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 850
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    .line 852
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 853
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 855
    iget p4, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez p4, :cond_3

    .line 856
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 860
    :cond_3
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, p4, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 861
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, p4, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 863
    iget-boolean p4, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz p4, :cond_4

    .line 864
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 865
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 866
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 867
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 868
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 869
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    :cond_4
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .line 2724
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1230
    iget-boolean p0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2346
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    if-ne p1, v0, :cond_3

    .line 2347
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_1

    .line 2348
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2351
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2354
    :cond_1
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_2

    return-void

    .line 2357
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2360
    :cond_3
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_7

    .line 2361
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_5

    .line 2362
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_4

    return-void

    .line 2365
    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2368
    :cond_5
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    return-void

    .line 2371
    :cond_6
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1260
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1261
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    .line 1262
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    .line 1266
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 1270
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1271
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 1272
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v0, :cond_0

    .line 1274
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 1276
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 1280
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1281
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1283
    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 1285
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 1287
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    .line 1289
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 1291
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    .line 1293
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    .line 1296
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDatePickerHeight:I

    .line 1299
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_2

    .line 1300
    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    .line 1303
    :cond_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->checkMaxFontSize()V

    return-void
.end method

.method public onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v2, p4

    .line 1666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayClick day : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/picker/widget/SeslDatePicker;->debugLog(Ljava/lang/String;)V

    .line 1668
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    if-nez v1, :cond_0

    .line 1669
    invoke-virtual/range {p1 .. p1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result v1

    iput v1, v0, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

    .line 1672
    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1673
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1675
    iget-boolean v8, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_1

    .line 1676
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1677
    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1681
    :cond_1
    invoke-virtual {v0, v4, v3, v2}, Landroidx/picker/widget/SeslDatePicker;->onDayOfMonthSelected(III)V

    .line 1684
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v9

    sub-int v9, v4, v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    .line 1685
    iget v9, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    const/4 v15, 0x0

    if-eq v9, v8, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v15

    :goto_0
    if-ne v4, v1, :cond_3

    if-ne v3, v6, :cond_3

    .line 1687
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mOldSelectedDay:I

    if-ne v2, v1, :cond_3

    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-nez v1, :cond_3

    if-eqz v8, :cond_4

    .line 1689
    :cond_3
    iput v2, v0, Landroidx/picker/widget/SeslDatePicker;->mOldSelectedDay:I

    .line 1690
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1694
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 1695
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v5

    .line 1701
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1702
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    goto :goto_2

    :cond_6
    const/16 v1, 0x1f

    :goto_2
    move v10, v1

    .line 1708
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_7

    .line 1709
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    iget-boolean v8, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v8, v9}, Landroidx/picker/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    goto :goto_3

    :cond_7
    move-object/from16 v14, p1

    .line 1712
    :goto_3
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1713
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1714
    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1715
    iget-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1716
    iget-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1717
    iget-object v12, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1720
    iget-boolean v12, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v12, :cond_8

    .line 1721
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1722
    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1723
    iget v7, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1724
    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1725
    iget v9, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1726
    iget v11, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

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

    .line 1730
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

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

    .line 1734
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x0

    .line 1735
    iput-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    return-void
.end method

.method onDayOfMonthSelected(III)V
    .locals 4

    .line 1402
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1403
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1404
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1406
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1407
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1408
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1409
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 1413
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x3e8

    .line 1414
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1415
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1417
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 1467
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1468
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1470
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_b

    .line 1471
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1472
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1473
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1474
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    .line 1475
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1476
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1477
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    .line 1478
    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    goto/16 :goto_1

    .line 1461
    :cond_1
    iput-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsWeekRangeSet:Z

    .line 1462
    rem-int/lit8 v0, p3, 0x7

    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 1464
    :goto_0
    invoke-direct {p0, v2, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->updateStartEndDateRange(IIII)V

    goto/16 :goto_1

    .line 1440
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_4

    .line 1441
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1443
    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1446
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_b

    .line 1447
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_5

    .line 1448
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1449
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1450
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1451
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    .line 1453
    :cond_5
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1454
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1455
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    .line 1456
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    goto :goto_1

    .line 1419
    :cond_6
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 1420
    :cond_7
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1422
    :cond_8
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 1425
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_b

    .line 1426
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 1427
    :cond_9
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1428
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1429
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    .line 1430
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    .line 1432
    :cond_a
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1433
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1434
    iput p3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1435
    iget-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    .line 1482
    :cond_b
    :goto_1
    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    if-eqz p1, :cond_c

    .line 1483
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->onValidationChanged(Z)V

    .line 1485
    :cond_c
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    return-void
.end method

.method public onDeactivatedDayClick(Landroidx/picker/widget/SeslSimpleMonthView;IIIZZ)V
    .locals 1

    const/4 p5, 0x1

    .line 1742
    iput-boolean p5, p0, Landroidx/picker/widget/SeslDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    .line 1743
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_3

    .line 1745
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz p6, :cond_0

    sub-int/2addr p2, p5

    goto :goto_0

    :cond_0
    add-int/2addr p2, p5

    .line 1744
    :goto_0
    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslDatePicker;->getLunarDateByPosition(I)Landroidx/picker/widget/SeslDatePicker$LunarDate;

    move-result-object p2

    .line 1746
    iget p3, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    .line 1747
    iget v0, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    .line 1749
    iget-boolean p2, p2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    iput-boolean p2, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    .line 1750
    iget p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz p6, :cond_1

    sub-int/2addr p2, p5

    goto :goto_1

    :cond_1
    add-int/2addr p2, p5

    :goto_1
    iput p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    .line 1751
    iget-object p6, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p6, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1752
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    iget p6, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {p2, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslSimpleMonthView;

    if-nez p2, :cond_2

    goto :goto_2

    .line 1753
    :cond_2
    invoke-virtual {p2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result p5

    :goto_2
    iput p5, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

    .line 1754
    invoke-virtual {p0, p1, p3, v0, p4}, Landroidx/picker/widget/SeslDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    goto :goto_4

    .line 1756
    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result p6

    sub-int p6, p2, p6

    mul-int/lit8 p6, p6, 0xc

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr p6, v0

    .line 1757
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/picker/widget/SeslSimpleMonthView;

    if-nez p6, :cond_4

    move p6, p5

    goto :goto_3

    .line 1758
    :cond_4
    invoke-virtual {p6}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayOfWeekStart()I

    move-result p6

    :goto_3
    iput p6, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

    .line 1759
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    .line 1760
    invoke-direct {p0, p5}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    :goto_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 2379
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeAllCallbacks()V

    .line 2380
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2165
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2166
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->calculateContentHeight()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 2385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2386
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_prev_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    .line 2387
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Landroidx/picker/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 2388
    :cond_0
    sget v0, Landroidx/picker/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    .line 2389
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v2, v3, v4}, Landroidx/picker/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 2083
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMeasureSpecHeight:I

    .line 2084
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslDatePicker;->makeMeasureSpec(II)I

    move-result p1

    .line 2085
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    if-ne v0, v1, :cond_0

    .line 2086
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2089
    iput-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 2090
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    .line 2093
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCustomButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2094
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2098
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2100
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2102
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekView:Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    if-eqz v0, :cond_2

    .line 2107
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->seslSetConfigurationChanged(Z)V

    .line 2109
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2111
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2114
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1383
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 1384
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1386
    check-cast p1, Landroidx/picker/widget/SeslDatePicker$SavedState;

    .line 1388
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1390
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1392
    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1393
    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 1396
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1397
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker$SavedState;->getMaxDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1361
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1363
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1364
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1365
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1367
    iget-boolean v4, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    .line 1368
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1369
    iget v2, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1370
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_0
    move v4, v3

    move v3, v2

    move v2, v0

    .line 1374
    new-instance v10, Landroidx/picker/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 1375
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/picker/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJLandroidx/picker/widget/SeslDatePicker$1;)V

    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 764
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 0

    .line 784
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    if-eqz p0, :cond_0

    .line 785
    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslDatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3163
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 3164
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3165
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 7

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_0

    return-void

    .line 2623
    :cond_0
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v3, p1, :cond_7

    .line 2627
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v1, v2, :cond_4

    if-eq v1, v4, :cond_2

    .line 2655
    iget-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_1

    .line 2656
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 2657
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 2658
    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    goto :goto_1

    .line 2660
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2661
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2662
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    .line 2642
    :cond_2
    iget-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_3

    .line 2643
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2644
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2645
    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_1

    .line 2647
    :cond_3
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2648
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2649
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    .line 2630
    :cond_4
    iget-boolean v1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_5

    .line 2631
    iget v1, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2632
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2633
    iget v4, p0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    goto :goto_1

    .line 2635
    :cond_5
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2636
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2637
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_0
    move v6, v4

    move v4, v3

    move v3, v6

    .line 2667
    :goto_1
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v1, v3, v4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    .line 2668
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2669
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2670
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    .line 2674
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 2675
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2676
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2603
    :cond_6
    iget v3, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v3, p1, :cond_7

    .line 2604
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    .line 2605
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v3, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 2607
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2609
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2610
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v3, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2611
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    .line 2615
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 2616
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2617
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2619
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :goto_2
    move v1, v2

    .line 2683
    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mOnViewTypeChangedListener:Landroidx/picker/widget/SeslDatePicker$OnViewTypeChangedListener;

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    .line 2684
    invoke-interface {p1, p0}, Landroidx/picker/widget/SeslDatePicker$OnViewTypeChangedListener;->onViewTypeChanged(Landroidx/picker/widget/SeslDatePicker;)V

    .line 2688
    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 2689
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2690
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDateMode(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2459
    iput v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    const/4 v2, 0x0

    .line 2460
    iput-boolean v2, v0, Landroidx/picker/widget/SeslDatePicker;->mIsWeekRangeSet:Z

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_0

    goto :goto_2

    .line 2480
    :cond_0
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_1

    .line 2481
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2482
    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2483
    iget v7, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_0

    .line 2485
    :cond_1
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2486
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2487
    iget-object v7, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2489
    :goto_0
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v8, v1, v6, v7}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_2

    .line 2466
    :cond_2
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_3

    .line 2467
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2468
    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2469
    iget v7, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    goto :goto_1

    .line 2471
    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2472
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2473
    iget-object v7, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2475
    :goto_1
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v8, v1, v6, v7}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    .line 2493
    :goto_2
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-ne v1, v5, :cond_4

    .line 2494
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2495
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v5}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2498
    :cond_4
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2499
    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_9

    .line 2503
    iget-boolean v6, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_5

    .line 2504
    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 2505
    iget v7, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 2506
    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    goto :goto_3

    .line 2508
    :cond_5
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2509
    iget-object v7, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2510
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    :goto_3
    move v9, v6

    move/from16 v24, v8

    move v8, v7

    move/from16 v7, v24

    .line 2515
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v6

    if-ne v6, v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 2516
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinDay()I

    move-result v6

    move v11, v6

    goto :goto_4

    :cond_6
    move v11, v5

    .line 2522
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 2523
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxDay()I

    move-result v6

    goto :goto_5

    :cond_7
    const/16 v6, 0x1f

    :goto_5
    move v12, v6

    .line 2531
    iget-boolean v6, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_8

    .line 2532
    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2533
    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2534
    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 2535
    iget v6, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2536
    iget v10, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2537
    iget v13, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v13

    goto :goto_6

    .line 2539
    :cond_8
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2540
    iget-object v10, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 2541
    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 2542
    iget-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2543
    iget-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2544
    iget-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v19, v5

    move v15, v6

    move/from16 v16, v10

    move/from16 v17, v13

    .line 2547
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v10

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v14, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    move/from16 v18, v3

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v22, v3

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    move/from16 v23, v3

    move-object v6, v1

    invoke-virtual/range {v6 .. v23}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    .line 2551
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2555
    :cond_9
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_a

    .line 2556
    invoke-direct {v0, v2}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 2561
    :cond_a
    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDateValidator(Landroidx/picker/widget/SeslDatePicker$DateValidator;)V
    .locals 0

    .line 3221
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    return-void
.end method

.method public setDialogPaddingVertical(I)V
    .locals 0

    .line 2230
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogPaddingVertical:I

    return-void
.end method

.method public setDialogWindow(Landroid/view/Window;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2224
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mDialogWindow:Landroid/view/Window;

    :cond_0
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 1

    .line 2712
    iget v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez v0, :cond_0

    return-void

    .line 2715
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1218
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1221
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1222
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1324
    iput p1, p0, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    return-void

    .line 1322
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1160
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1161
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

    .line 1162
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1166
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1167
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    .line 1171
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1173
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    .line 1175
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1177
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 1179
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 1180
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1115
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1116
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

    .line 1117
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1121
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1122
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    .line 1126
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1128
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    .line 1130
    :cond_2
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1132
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 1134
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 1135
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    .line 2745
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setOnViewTypeChangedListener(Landroidx/picker/widget/SeslDatePicker$OnViewTypeChangedListener;)V
    .locals 0

    .line 812
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mOnViewTypeChangedListener:Landroidx/picker/widget/SeslDatePicker$OnViewTypeChangedListener;

    return-void
.end method

.method public setSeparateLunarButton(Z)V
    .locals 1

    .line 2855
    iget-boolean v0, p0, Landroidx/picker/widget/SeslDatePicker;->mIsCustomButtonSeparate:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2860
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeCustomButtonInHeader()V

    .line 2861
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->addCustomButtonSeparateLayout()V

    goto :goto_0

    .line 2863
    :cond_1
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->removeCustomButtonSeparateLayout()V

    .line 2864
    invoke-direct {p0}, Landroidx/picker/widget/SeslDatePicker;->addCustomButtonInHeader()V

    .line 2866
    :goto_0
    iput-boolean p1, p0, Landroidx/picker/widget/SeslDatePicker;->mIsCustomButtonSeparate:Z

    return-void
.end method

.method public setValidationCallback(Landroidx/picker/widget/SeslDatePicker$ValidationCallback;)V
    .locals 0

    .line 774
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker;->mValidationCallback:Landroidx/picker/widget/SeslDatePicker$ValidationCallback;

    return-void
.end method

.method public updateDate(III)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v12, p3

    .line 889
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 890
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    .line 891
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    if-le v12, v4, :cond_0

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 893
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Landroidx/picker/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 895
    iget-boolean v4, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_1

    .line 896
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 897
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 898
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 902
    :cond_1
    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    if-eq v4, v11, :cond_5

    if-eq v4, v2, :cond_2

    .line 942
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 943
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 945
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_a

    .line 946
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 947
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 948
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 949
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 950
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 951
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_1

    .line 923
    :cond_2
    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_3

    .line 924
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 926
    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 929
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_a

    .line 930
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_4

    .line 931
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 932
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 933
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 935
    :cond_4
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 936
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 937
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_1

    .line 904
    :cond_5
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_7

    .line 905
    :cond_6
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 907
    :cond_7
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->clearCalendar(Ljava/util/Calendar;III)V

    .line 910
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_a

    .line 911
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_9

    .line 912
    :cond_8
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 913
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 914
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    .line 916
    :cond_9
    iput v15, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 917
    iput v14, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 918
    iput v12, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 956
    :cond_a
    :goto_1
    invoke-direct {v0, v11}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 958
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->onDateChanged()V

    .line 960
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v10, v1, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 961
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v7, :cond_11

    .line 964
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v15, :cond_b

    .line 965
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_2

    :cond_b
    move v6, v11

    .line 971
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v15, :cond_c

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    goto :goto_3

    :cond_c
    const/16 v1, 0x1f

    :goto_3
    move/from16 v16, v1

    .line 978
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_d

    .line 979
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    iget-boolean v4, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapMonth:Z

    iget-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v7, v1, v4, v5}, Landroidx/picker/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 983
    :cond_d
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_e

    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsWeekRangeSet:Z

    if-eqz v1, :cond_e

    .line 984
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getDayOffset()I

    move-result v1

    invoke-direct {v0, v1, v15, v14, v12}, Landroidx/picker/widget/SeslDatePicker;->updateStartEndDateRange(IIII)V

    .line 987
    :cond_e
    iget-object v1, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 988
    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 989
    iget-object v5, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 990
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 991
    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 992
    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 995
    iget-boolean v9, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v9, :cond_f

    .line 996
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartYear:I

    .line 997
    iget v2, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 998
    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarStartDay:I

    .line 999
    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1000
    iget v5, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1001
    iget v8, v0, Landroidx/picker/widget/SeslDatePicker;->mLunarEndDay:I

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v8

    goto :goto_4

    :cond_f
    move/from16 v19, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v8

    .line 1005
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mMode:I

    move/from16 v18, v1

    move-object v1, v7

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p1

    move-object/from16 v25, v7

    move/from16 v7, v16

    move-object/from16 v26, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v24

    invoke-virtual/range {v1 .. v18}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    .line 1009
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->invalidate()V

    .line 1011
    iget-boolean v1, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLunar:Z

    if-nez v1, :cond_11

    .line 1012
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v2, v26

    if-ltz v1, :cond_10

    .line 1014
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_10

    .line 1016
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v1, v3, v4}, Landroidx/picker/widget/SeslSimpleMonthView;->setStartDate(Ljava/util/Calendar;I)V

    .line 1017
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v4, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v1, v3, v4}, Landroidx/picker/widget/SeslSimpleMonthView;->setEndDate(Ljava/util/Calendar;I)V

    .line 1020
    :cond_10
    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 1021
    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    if-ge v1, v3, :cond_11

    .line 1022
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_11

    .line 1024
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v1, v2, v3}, Landroidx/picker/widget/SeslSimpleMonthView;->setStartDate(Ljava/util/Calendar;I)V

    .line 1025
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v3, v0, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v1, v2, v3}, Landroidx/picker/widget/SeslSimpleMonthView;->setEndDate(Ljava/util/Calendar;I)V

    .line 1030
    :cond_11
    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker;->mSpinnerLayout:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    if-eqz v0, :cond_12

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1031
    invoke-virtual {v0, v1, v2, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    :cond_12
    return-void
.end method
