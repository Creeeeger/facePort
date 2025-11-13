.class public final Landroidx/picker/widget/SeslSimpleMonthView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

.field public final mAbnormalStartEndDateBackgroundAlpha:I

.field public final mCalendar:Ljava/util/Calendar;

.field public mCalendarWidth:I

.field public final mContext:Landroid/content/Context;

.field public final mDayColorSet:[I

.field public final mDayNumberDisabledAlpha:I

.field public mDayNumberPaint:Landroid/graphics/Paint;

.field public mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field public mDayOfWeekStart:I

.field public mDaySelectedCircleSize:I

.field public final mDaySelectedCircleStroke:I

.field public mEnabledDayEnd:I

.field public mEnabledDayStart:I

.field public mEndDay:I

.field public mEndMonth:I

.field public mEndYear:I

.field public mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

.field public mIsFirstMonth:Z

.field public mIsHcfEnabled:Z

.field public mIsLastMonth:Z

.field public mIsLeapEndMonth:I

.field public final mIsLeapMonth:Z

.field public mIsLeapStartMonth:I

.field public final mIsLunar:Z

.field public final mIsNextMonthLeap:Z

.field public final mIsPrevMonthLeap:Z

.field public mIsRTL:Z

.field public mLastAccessibilityFocusedView:I

.field public final mLockAccessibilityDelegate:Z

.field public mLostAccessibilityFocus:Z

.field public mMaxDate:Ljava/util/Calendar;

.field public mMinDate:Ljava/util/Calendar;

.field public mMiniDayNumberTextSize:I

.field public mMode:I

.field public mMonth:I

.field public final mNormalTextColor:I

.field public mNumCells:I

.field public mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

.field public mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

.field public final mPadding:I

.field public final mPathClassLoader:Ldalvik/system/PathClassLoader;

.field public final mPrevNextMonthDayNumberAlpha:I

.field public final mSaturdayTextColor:I

.field public mSelectedDay:I

.field public final mSelectedDayColor:I

.field public final mSelectedDayNumberTextColor:I

.field public final mSolarLunarConverter:Ljava/lang/Object;

.field public mStartDay:I

.field public mStartMonth:I

.field public mStartYear:I

.field public final mSundayTextColor:I

.field public final mTempDate:Ljava/util/Calendar;

.field public final mTodayDate:Ljava/util/Calendar;

.field public mTodayDateMarkPaint:Landroid/graphics/Paint;

.field public final mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

.field public mWeekHeight:I

.field public mWeekStart:I

.field public mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x7

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    const/4 v3, -0x1

    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    const/4 v4, 0x1

    iput v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    iput v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    iput v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    const/16 v1, 0x1f

    iput v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDate:Ljava/util/Calendar;

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroidx/picker/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f040155

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    goto :goto_0

    :cond_0
    iget v3, v3, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    :goto_0
    const v3, 0x7f060833

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSundayTextColor:I

    const v3, 0x7f06082f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    sget-object v3, Landroidx/picker/R$styleable;->DatePicker:[I

    const v5, 0x101035c

    invoke-virtual {p1, v0, v3, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x7f06082c

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    const v2, 0x7f060832

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f070fb2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const v0, 0x7f070fbc

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const v0, 0x7f070fbd

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    const v0, 0x7f070fb3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    const v0, 0x7f070fb1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    const v0, 0x7f070fb0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    new-instance v0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v0, p0, p0}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;-><init>(Landroidx/picker/widget/SeslSimpleMonthView;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b00ca

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    const p1, 0x7f0b00c4

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->initView()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static getDaysInMonth(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    rem-int/lit8 p0, p1, 0x4

    const/16 v0, 0x1c

    if-nez p0, :cond_2

    rem-int/lit8 p0, p1, 0x64

    const/16 v1, 0x1d

    if-nez p0, :cond_1

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isRTL()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method


# virtual methods
.method public final clearAccessibilityFocus()V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final findDayOffset()I
    .locals 1

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    if-ge v0, p0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public final getDayFromLocation(FF)I
    .locals 3

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_2

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    div-int/2addr p2, v0

    sub-float/2addr p1, v1

    const/high16 v0, 0x40e00000    # 7.0f

    mul-float/2addr p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p2, p1

    return p2

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getDaysInMonthLunar(IIZ)I
    .locals 4

    invoke-static {p1, p2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string p0, "SeslSimpleMonthView"

    const-string p1, "getDaysInMonthLunar, mSolarLunarConverter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const-string v2, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    const-string v3, "getDayLengthOf"

    invoke-static {p0, v2, v3, v0}, Landroidx/reflect/SeslPathClassReflector;->getMethod(Ldalvik/system/PathClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " InvocationTargetException"

    invoke-static {p0, p3, v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " IllegalArgumentException"

    invoke-static {p0, p3, v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " IllegalAccessException"

    invoke-static {p0, p3, v0, p2, p1}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_1
    const/16 p0, 0x1e

    :goto_2
    return p0
.end method

.method public final initView()V
    .locals 8

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "sec"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const/16 v7, 0x190

    invoke-static {v5, v7, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    const/16 v3, 0x258

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public final isNextMonthEndMonth()Z
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v3, v0

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_2

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_3

    cmpl-float v6, v3, v5

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    if-eqz v6, :cond_3

    :cond_2
    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_4

    const/high16 v0, 0x41400000    # 12.0f

    add-float/2addr v3, v0

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_4

    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    if-ne v0, v3, :cond_6

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_7

    :cond_6
    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    if-nez p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public final isPrevMonthStartMonth()Z
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v3, v3

    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    :cond_0
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    cmpg-float v6, v0, v5

    if-ltz v6, :cond_3

    cmpl-float v6, v0, v5

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-eqz v6, :cond_3

    :cond_2
    add-int/2addr v4, v2

    if-ne v3, v4, :cond_4

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v0, v3

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    if-ne v0, v3, :cond_6

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    add-int/2addr v5, v2

    if-eq v4, v5, :cond_7

    :cond_6
    add-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    if-nez v0, :cond_8

    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public final isTodayDate(III)Z
    .locals 9

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v5, :cond_1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    const-string v8, "convertSolarToLunar"

    invoke-static {v4, v7, v8, v6}, Landroidx/reflect/SeslPathClassReflector;->getMethod(Ldalvik/system/PathClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " InvocationTargetException"

    invoke-static {v4, v3, v5, v2, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalArgumentException"

    invoke-static {v4, v3, v5, v2, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalAccessException"

    invoke-static {v4, v3, v5, v2, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v3, p0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v3

    :cond_1
    if-ne v0, p1, :cond_2

    if-ne v2, p2, :cond_2

    if-ne v3, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroidx/picker/widget/SeslSimpleMonthView;->isRTL()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070fb2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const v0, 0x7f070fbc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const v0, 0x7f070fb3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method public final onDeactivatedDayClick(IIZI)V
    .locals 5

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p4}, Ljava/util/Calendar;->set(III)V

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_0
    iget-object p3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->playSoundEffect(I)V

    iget-object p3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    check-cast p3, Landroidx/picker/widget/SeslDatePicker;

    iput-boolean v1, p3, Landroidx/picker/widget/SeslDatePicker;->mIsCalledFromDeactivatedDayClick:Z

    invoke-virtual {p3}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p3}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    sub-int v2, p2, v2

    add-int/2addr v2, v0

    iget-object v0, p3, Landroidx/picker/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslSimpleMonthView;

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v0, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    :goto_0
    iput v2, p3, Landroidx/picker/widget/SeslDatePicker;->mDayOfWeekStart:I

    invoke-virtual {p3, p0, p1, p2, p4}, Landroidx/picker/widget/SeslDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    invoke-virtual {p3, v1}, Landroidx/picker/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p4, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v8, 0x2

    mul-int/2addr v1, v8

    const/4 v9, 0x3

    div-int/2addr v1, v9

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    div-int/lit8 v10, v2, 0xe

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v11

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v2, v2

    const v3, 0x402ccccd    # 2.7f

    div-float v12, v2, v3

    iget v13, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v2, v2

    iget v14, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    iget v15, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    iget v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v5, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    iget v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v9, v5, :cond_0

    add-float v2, v2, v16

    :cond_0
    move v9, v2

    if-eqz v4, :cond_1

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v2, v5, :cond_1

    add-float v3, v3, v16

    :cond_1
    move/from16 v18, v3

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v2, v2

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v4, :cond_2

    add-float v2, v2, v16

    :cond_2
    move/from16 v16, v2

    mul-int/lit16 v2, v13, 0x2710

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v8, v9, v4

    float-to-int v8, v8

    add-int/2addr v2, v8

    mul-int/lit16 v8, v15, 0x2710

    mul-float v5, v18, v4

    float-to-int v5, v5

    add-int/2addr v8, v5

    mul-int/lit16 v5, v3, 0x2710

    mul-float v4, v4, v16

    float-to-int v4, v4

    add-int/2addr v5, v4

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/16 v21, 0x0

    if-eqz v4, :cond_4

    add-int v4, v2, v14

    move/from16 v22, v1

    add-int v1, v8, v6

    if-le v4, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move/from16 v1, v21

    :goto_0
    move/from16 v23, v1

    goto :goto_1

    :cond_4
    move/from16 v22, v1

    move/from16 v23, v21

    :goto_1
    if-nez v23, :cond_9

    if-ne v13, v15, :cond_5

    cmpl-float v1, v9, v18

    if-nez v1, :cond_5

    if-ne v3, v13, :cond_5

    cmpl-float v1, v16, v9

    if-nez v1, :cond_5

    move v8, v6

    :goto_2
    move v5, v14

    goto :goto_6

    :cond_5
    if-ge v2, v5, :cond_6

    if-ge v5, v8, :cond_6

    if-ne v3, v15, :cond_7

    cmpl-float v1, v16, v18

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    :goto_3
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move v8, v1

    :goto_4
    move/from16 v5, v21

    goto :goto_6

    :goto_5
    if-ne v3, v13, :cond_8

    cmpl-float v1, v16, v9

    if-nez v1, :cond_8

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    add-int/2addr v1, v2

    move v8, v1

    goto :goto_2

    :cond_8
    if-ne v3, v15, :cond_9

    cmpl-float v1, v16, v18

    if-nez v1, :cond_9

    move v8, v6

    goto :goto_4

    :cond_9
    const/4 v5, -0x1

    const/4 v8, -0x1

    :goto_6
    invoke-static/range {p0 .. p0}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    move/from16 v24, v21

    move/from16 v2, v22

    const/4 v1, 0x1

    move/from16 v22, v11

    :goto_7
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    move/from16 v26, v11

    const-string v11, "%d"

    move-object/from16 v27, v11

    if-gt v1, v4, :cond_20

    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v4, :cond_a

    rsub-int/lit8 v4, v22, 0x6

    const/16 v19, 0x2

    mul-int/lit8 v4, v4, 0x2

    const/16 v20, 0x1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    iget v11, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    :goto_8
    add-int/2addr v4, v11

    move v11, v4

    goto :goto_9

    :cond_a
    const/16 v20, 0x1

    mul-int/lit8 v4, v22, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    iget v11, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    goto :goto_8

    :goto_9
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v4, v22, v4

    const/16 v28, 0x7

    rem-int/lit8 v4, v4, 0x7

    move/from16 v29, v10

    iget-object v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move/from16 v30, v8

    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v4, v8, v4

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v1, v4, :cond_b

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v1, v4, :cond_c

    :cond_b
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_c
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v4, v8, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->isTodayDate(III)Z

    move-result v4

    if-eqz v4, :cond_d

    int-to-float v4, v11

    int-to-float v8, v2

    sub-float/2addr v8, v12

    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    move/from16 v31, v5

    iget v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    sub-int/2addr v10, v5

    int-to-float v5, v10

    iget-object v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v8, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_d
    move/from16 v31, v5

    :goto_a
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-boolean v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    iget v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    if-eq v5, v8, :cond_e

    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    :cond_e
    move-object v8, v4

    if-eqz v23, :cond_16

    if-ne v13, v3, :cond_f

    cmpl-float v4, v9, v16

    if-nez v4, :cond_f

    if-ne v14, v1, :cond_f

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_11

    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    :cond_f
    if-ne v15, v3, :cond_10

    cmpl-float v4, v18, v16

    if-nez v4, :cond_10

    if-ne v6, v1, :cond_10

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_11

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    goto :goto_b

    :cond_10
    move/from16 v32, v12

    goto :goto_c

    :cond_11
    :goto_b
    int-to-float v4, v11

    int-to-float v5, v2

    sub-float/2addr v5, v12

    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v10, v10

    move/from16 v32, v12

    iget-object v12, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_c
    if-ne v15, v3, :cond_13

    cmpl-float v4, v18, v16

    if-nez v4, :cond_13

    if-ne v6, v1, :cond_13

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    goto :goto_d

    :cond_12
    const/4 v5, 0x1

    goto :goto_f

    :cond_13
    :goto_d
    if-ne v13, v3, :cond_14

    cmpl-float v4, v9, v16

    if-nez v4, :cond_14

    if-ne v14, v1, :cond_14

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    const/4 v10, 0x3

    if-ne v4, v10, :cond_14

    goto :goto_f

    :cond_14
    :goto_e
    move/from16 v36, v3

    move/from16 v25, v6

    move/from16 v35, v9

    move/from16 v20, v14

    move/from16 v12, v29

    move/from16 v10, v30

    move/from16 v14, v31

    move v9, v1

    move/from16 v30, v13

    move/from16 v29, v15

    move v13, v2

    goto/16 :goto_15

    :cond_15
    :goto_f
    int-to-float v4, v11

    int-to-float v10, v2

    sub-float v10, v10, v32

    iget v12, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v12, v12

    iget-object v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v10, v12, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_16
    move/from16 v32, v12

    move/from16 v5, v31

    if-ge v5, v1, :cond_18

    move/from16 v10, v30

    if-ge v1, v10, :cond_17

    sub-int v4, v11, v29

    int-to-float v4, v4

    int-to-float v12, v2

    sub-float v12, v12, v32

    move/from16 v30, v1

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    move/from16 v31, v2

    int-to-float v2, v1

    sub-float/2addr v12, v2

    mul-int/lit8 v2, v29, 0x2

    int-to-float v2, v2

    add-float v33, v4, v2

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v34, v12, v1

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move/from16 v35, v9

    move/from16 v9, v30

    move-object/from16 v1, p1

    move/from16 v30, v13

    move/from16 v13, v31

    move-object/from16 v31, v2

    move v2, v4

    move/from16 v36, v3

    move v3, v12

    const/4 v12, -0x1

    move/from16 v4, v33

    move/from16 v20, v14

    move v14, v5

    move/from16 v5, v34

    move/from16 v25, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_10

    :cond_17
    move/from16 v36, v3

    move/from16 v25, v6

    move/from16 v35, v9

    move/from16 v30, v13

    move/from16 v20, v14

    const/4 v12, -0x1

    move v9, v1

    move v13, v2

    move v14, v5

    goto :goto_10

    :cond_18
    move/from16 v36, v3

    move/from16 v25, v6

    move/from16 v35, v9

    move/from16 v20, v14

    move/from16 v10, v30

    const/4 v12, -0x1

    move v9, v1

    move v14, v5

    move/from16 v30, v13

    move v13, v2

    :goto_10
    if-eq v14, v12, :cond_19

    if-ne v14, v10, :cond_19

    if-ne v9, v14, :cond_19

    int-to-float v1, v11

    int-to-float v2, v13

    sub-float v2, v2, v32

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v12, v29

    move/from16 v29, v15

    goto/16 :goto_15

    :cond_19
    if-ne v10, v9, :cond_1b

    int-to-float v1, v13

    sub-float v6, v1, v32

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_1a

    int-to-float v1, v11

    :goto_11
    move v2, v1

    goto :goto_12

    :cond_1a
    sub-int v1, v11, v29

    int-to-float v1, v1

    goto :goto_11

    :goto_12
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v6, v3

    move/from16 v5, v29

    int-to-float v4, v5

    add-float/2addr v4, v2

    const/16 v19, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v29, v3, v1

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    move v12, v5

    move/from16 v5, v29

    move/from16 v29, v15

    move v15, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_15

    :cond_1b
    move/from16 v12, v29

    move/from16 v29, v15

    if-ne v14, v9, :cond_1d

    int-to-float v1, v13

    sub-float v15, v1, v32

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_1c

    sub-int v1, v11, v12

    int-to-float v1, v1

    :goto_13
    move v2, v1

    goto :goto_14

    :cond_1c
    int-to-float v1, v11

    goto :goto_13

    :goto_14
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v15, v3

    int-to-float v4, v12

    add-float/2addr v4, v2

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    int-to-float v1, v1

    add-float v5, v3, v1

    iget-object v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1d
    :goto_15
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-nez v1, :cond_1e

    if-ne v9, v10, :cond_1e

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v15, v27

    invoke-static {v15, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v13

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v22, 0x1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1f

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int v2, v13, v1

    add-int/lit8 v24, v24, 0x1

    move/from16 v22, v21

    goto :goto_16

    :cond_1f
    move/from16 v22, v1

    move v2, v13

    :goto_16
    add-int/lit8 v1, v9, 0x1

    move v8, v10

    move v10, v12

    move v5, v14

    move/from16 v14, v20

    move/from16 v6, v25

    move/from16 v11, v26

    move/from16 v15, v29

    move/from16 v13, v30

    move/from16 v12, v32

    move/from16 v9, v35

    move/from16 v3, v36

    goto/16 :goto_7

    :cond_20
    move v13, v2

    move v14, v5

    move/from16 v32, v12

    move-object/from16 v15, v27

    move v12, v10

    move v10, v8

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    const/16 v8, 0xb

    if-nez v1, :cond_2f

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    add-int/lit8 v2, v1, 0x1

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    if-le v2, v8, :cond_21

    add-int/lit8 v2, v3, 0x1

    move v4, v2

    move/from16 v2, v21

    goto :goto_17

    :cond_21
    move v4, v3

    :goto_17
    iget-boolean v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v5, :cond_23

    iget-boolean v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    add-int/2addr v2, v1

    if-le v2, v8, :cond_22

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move/from16 v11, v21

    goto :goto_18

    :cond_22
    move v11, v2

    move v6, v3

    goto :goto_18

    :cond_23
    const/4 v9, 0x1

    move v11, v2

    move v6, v4

    :goto_18
    move v5, v9

    move/from16 v4, v24

    :goto_19
    const/4 v1, 0x6

    if-eq v4, v1, :cond_2f

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_24

    rsub-int/lit8 v1, v22, 0x6

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, v9

    mul-int/2addr v1, v12

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    :goto_1a
    add-int/2addr v1, v2

    move v3, v1

    goto :goto_1b

    :cond_24
    mul-int/lit8 v1, v22, 0x2

    add-int/2addr v1, v9

    mul-int/2addr v1, v12

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    goto :goto_1a

    :goto_1b
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v1, v22, v1

    const/4 v2, 0x7

    rem-int/2addr v1, v2

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v8, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_28

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    add-int/2addr v1, v9

    if-ne v10, v1, :cond_28

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    if-lt v5, v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_25
    move/from16 v24, v4

    move v9, v5

    move/from16 v31, v14

    move-object/from16 v27, v15

    move v14, v3

    move v15, v6

    goto :goto_1e

    :cond_26
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    if-ne v5, v1, :cond_28

    int-to-float v1, v13

    sub-float v8, v1, v32

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_27

    int-to-float v1, v3

    :goto_1c
    move v2, v1

    goto :goto_1d

    :cond_27
    sub-int v1, v3, v12

    int-to-float v1, v1

    goto :goto_1c

    :goto_1d
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v9, v1

    sub-float v9, v8, v9

    move/from16 v18, v3

    int-to-float v3, v12

    add-float v20, v2, v3

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    int-to-float v1, v1

    add-float v23, v9, v1

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v31, v14

    move/from16 v14, v18

    move-object/from16 v18, v3

    move v3, v9

    move/from16 v24, v4

    move/from16 v4, v20

    move v9, v5

    move/from16 v5, v23

    move-object/from16 v27, v15

    move v15, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1f

    :cond_28
    move/from16 v24, v4

    move v9, v5

    move/from16 v31, v14

    move-object/from16 v27, v15

    move v14, v3

    move v15, v6

    goto :goto_1f

    :goto_1e
    sub-int v3, v14, v12

    int-to-float v2, v3

    int-to-float v1, v13

    sub-float v1, v1, v32

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    mul-int/lit8 v1, v12, 0x2

    int-to-float v1, v1

    add-float v5, v2, v1

    const/4 v1, 0x2

    mul-int/2addr v3, v1

    int-to-float v1, v3

    add-float v6, v4, v1

    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1f
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_29

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v15, v11, v9}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_29
    invoke-virtual {v0, v15, v11, v9}, Landroidx/picker/widget/SeslSimpleMonthView;->isTodayDate(III)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v14

    int-to-float v2, v13

    sub-float v2, v2, v32

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2a
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    if-eq v2, v3, :cond_2b

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    :cond_2b
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_2d

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v10, v2, :cond_2d

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    if-le v9, v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2c
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v8, v27

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v14

    int-to-float v4, v13

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v22, 0x1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2e

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int/2addr v13, v1

    add-int/lit8 v4, v24, 0x1

    move/from16 v22, v21

    goto :goto_20

    :cond_2e
    move/from16 v22, v1

    move/from16 v4, v24

    :goto_20
    add-int/lit8 v5, v9, 0x1

    move v6, v15

    move/from16 v14, v31

    const/4 v9, 0x1

    move-object v15, v8

    const/16 v8, 0xb

    goto/16 :goto_19

    :cond_2f
    move/from16 v31, v14

    move-object v8, v15

    if-lez v26, :cond_3e

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-nez v1, :cond_3e

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    move/from16 v9, v26

    neg-int v2, v9

    const/4 v10, 0x5

    invoke-virtual {v1, v10, v2}, Ljava/util/Calendar;->add(II)V

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    sub-int/2addr v2, v4

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    if-gez v2, :cond_30

    add-int/lit8 v3, v3, -0x1

    const/16 v2, 0xb

    :cond_30
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_32

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-gez v2, :cond_31

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    const/16 v2, 0xb

    goto :goto_21

    :cond_31
    move v3, v1

    :goto_21
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-virtual {v0, v2, v3, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v1

    sub-int/2addr v1, v9

    add-int/2addr v1, v4

    :goto_22
    move v11, v2

    move v13, v3

    goto :goto_23

    :cond_32
    const/4 v4, 0x1

    goto :goto_22

    :goto_23
    move v14, v1

    move/from16 v15, v21

    :goto_24
    if-ge v15, v9, :cond_3e

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_33

    rsub-int/lit8 v1, v15, 0x6

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, v4

    mul-int/2addr v1, v12

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    :goto_25
    add-int/2addr v1, v2

    move v6, v1

    goto :goto_26

    :cond_33
    mul-int/lit8 v1, v15, 0x2

    add-int/2addr v1, v4

    mul-int/2addr v1, v12

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    goto :goto_25

    :goto_26
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    const/16 v16, 0x3

    div-int/lit8 v5, v1, 0x3

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int/2addr v1, v15

    const/16 v17, 0x7

    rem-int/lit8 v1, v1, 0x7

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_37

    if-nez v31, :cond_37

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    if-gt v14, v1, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v1

    if-nez v1, :cond_35

    :cond_34
    move v10, v5

    move/from16 v26, v9

    move/from16 v20, v15

    move v15, v6

    goto :goto_29

    :cond_35
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    if-ne v14, v1, :cond_37

    int-to-float v1, v5

    sub-float v4, v1, v32

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_36

    sub-int v1, v6, v12

    int-to-float v1, v1

    :goto_27
    move v2, v1

    goto :goto_28

    :cond_36
    int-to-float v1, v6

    goto :goto_27

    :goto_28
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v4, v3

    int-to-float v10, v12

    add-float/2addr v10, v2

    const/16 v19, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v20, v3, v1

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v26, v9

    move v9, v4

    move v4, v10

    move v10, v5

    move/from16 v5, v20

    move/from16 v20, v15

    move v15, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v15

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2a

    :cond_37
    move v10, v5

    move/from16 v26, v9

    move/from16 v20, v15

    move v15, v6

    goto :goto_2a

    :goto_29
    sub-int v6, v15, v12

    int-to-float v2, v6

    int-to-float v1, v10

    sub-float v1, v1, v32

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    mul-int/lit8 v1, v12, 0x2

    int-to-float v1, v1

    add-float v5, v2, v1

    const/4 v1, 0x2

    mul-int/2addr v3, v1

    int-to-float v1, v3

    add-float v6, v4, v1

    iget-object v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2a
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_38

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v13, v11, v14}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v2, v4, v6}, Ljava/util/Calendar;->set(III)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2b

    :cond_38
    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x5

    :cond_39
    :goto_2b
    invoke-virtual {v0, v13, v11, v14}, Landroidx/picker/widget/SeslSimpleMonthView;->isTodayDate(III)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v1, v15

    int-to-float v2, v10

    sub-float v2, v2, v32

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    iget v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTodayDateMarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3a
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-boolean v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    if-eq v2, v4, :cond_3b

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    :cond_3b
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_3d

    if-nez v31, :cond_3d

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    if-ge v14, v2, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_3c
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v15

    int-to-float v6, v10

    invoke-virtual {v7, v2, v4, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v20, 0x1

    move v4, v3

    move v10, v9

    move/from16 v9, v26

    goto/16 :goto_24

    :cond_3e
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    const v1, 0x8000

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    if-eq v3, v2, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iput v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {v2, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result p1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x5

    if-gtz p1, :cond_6

    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_5

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iget-boolean v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-virtual {p0, v2, v0, v3}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v2, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v1

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_1

    :cond_6
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v5, 0x0

    if-le p1, v4, :cond_9

    iget-boolean v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v6, :cond_8

    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/2addr v6, v1

    add-int/2addr v3, v6

    if-le v3, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    :cond_7
    sub-int/2addr p1, v4

    invoke-virtual {p0, v0, v3, v5, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Calendar;->set(III)V

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int/2addr p1, v4

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v5, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_1

    :cond_9
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    if-eqz v3, :cond_a

    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    check-cast v3, Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v3, p0, v0, v2, p1}, Landroidx/picker/widget/SeslDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    :cond_a
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :goto_1
    return v1
.end method

.method public final setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public final setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p17

    iput v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    iget v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    iput v6, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    :cond_0
    move/from16 v5, p1

    iput v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    if-ltz v0, :cond_1

    const/16 v5, 0xb

    if-gt v0, v5, :cond_1

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    :cond_1
    move/from16 v0, p3

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    iput-object v3, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    iput-object v4, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    iget-boolean v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v8, 0x7

    if-eqz v0, :cond_3

    iget-object v10, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v10, :cond_3

    iget-object v9, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget v11, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v12, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v13, 0x1

    iget-boolean v14, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-static/range {v9 .. v14}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertLunarToSolar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v9, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v0, v9}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v0

    iget-object v9, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v10, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v9, v10}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v9

    iget-object v10, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v11, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v10, v11}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v10

    iget-object v11, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v12, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    aput-object v14, v13, v7

    aput-object v14, v13, v6

    const-string v14, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    const-string v15, "getWeekday"

    invoke-static {v11, v14, v15, v13}, Landroidx/reflect/SeslPathClassReflector;->getMethod(Ldalvik/system/PathClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v0, v9, v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v9, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v11, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " InvocationTargetException"

    invoke-static {v11, v0, v12, v9, v10}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " IllegalArgumentException"

    invoke-static {v11, v0, v12, v9, v10}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " IllegalAccessException"

    invoke-static {v11, v0, v12, v9, v10}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    instance-of v9, v0, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    add-int/2addr v15, v7

    iput v15, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v9, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget-boolean v10, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-virtual {v1, v0, v9, v10}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    goto :goto_3

    :cond_3
    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v9, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v0, v9}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    :goto_3
    if-lt v2, v7, :cond_4

    if-gt v2, v8, :cond_4

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    goto :goto_4

    :cond_4
    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    :goto_4
    iget v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_5

    :cond_5
    move/from16 v0, p5

    :goto_5
    iget v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    iget v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_6

    :cond_6
    move/from16 v2, p6

    :goto_6
    const/16 v3, 0x20

    if-lez v0, :cond_7

    if-ge v2, v3, :cond_7

    iput v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    :cond_7
    if-lez v2, :cond_8

    if-ge v2, v3, :cond_8

    if-lt v2, v0, :cond_8

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    :cond_8
    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    move/from16 v2, p9

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    move/from16 v2, p10

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    move/from16 v2, p11

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    move/from16 v2, p12

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    move/from16 v2, p13

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    move/from16 v2, p14

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    move/from16 v2, p15

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    move/from16 v2, p16

    iput v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method
