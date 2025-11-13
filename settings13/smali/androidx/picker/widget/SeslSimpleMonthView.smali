.class Landroidx/picker/widget/SeslSimpleMonthView;
.super Landroid/view/View;
.source "SeslSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;,
        Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;,
        Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarWidth:I

.field private mContext:Landroid/content/Context;

.field private mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

.field private mDayColorSet:[I

.field private mDayNumberDisabledAlpha:I

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDaySelectedCircleSize:I

.field private mDaySelectedCircleStroke:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mEndDay:I

.field private mEndMonth:I

.field private mEndYear:I

.field private mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

.field private mIsFirstMonth:Z

.field private mIsHcfEnabled:Z

.field private mIsLastMonth:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsNextMonthLeap:Z

.field private mIsPrevMonthLeap:Z

.field private mIsRTL:Z

.field private mLastAccessibilityFocusedView:I

.field private mLockAccessibilityDelegate:Z

.field private mLostAccessibilityFocus:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

.field private mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

.field private mPadding:I

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private final mPrevNextMonthDayNumberAlpha:I

.field private mSaturdayTextColor:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mSelectedDayNumberTextColor:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartYear:I

.field private mSundayTextColor:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

.field private mWeekHeight:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 169
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 99
    iput-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    .line 101
    iput v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 104
    iput v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    const/4 v2, -0x1

    .line 107
    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    const/4 v3, 0x1

    .line 110
    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    .line 113
    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    .line 116
    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    .line 119
    iput v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    const/16 v0, 0x1f

    .line 122
    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    .line 124
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    .line 145
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    .line 146
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 155
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    .line 156
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    .line 157
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    .line 158
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    .line 161
    iput v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    .line 162
    iput-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    .line 174
    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    .line 175
    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v4, Landroidx/appcompat/R$attr;->colorPrimaryDark:I

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 181
    iget p1, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    goto :goto_0

    .line 184
    :cond_0
    iget p1, v2, Landroid/util/TypedValue;->data:I

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    .line 187
    :goto_0
    sget p1, Landroidx/picker/R$color;->sesl_date_picker_sunday_number_text_color_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSundayTextColor:I

    .line 188
    sget p1, Landroidx/picker/R$color;->sesl_date_picker_saturday_text_color_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    .line 190
    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v2, Landroidx/picker/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 192
    sget p2, Landroidx/picker/R$styleable;->DatePicker_dayNumberTextColor:I

    sget p3, Landroidx/picker/R$color;->sesl_date_picker_normal_day_number_text_color_light:I

    .line 193
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 192
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    .line 195
    sget p2, Landroidx/picker/R$styleable;->DatePicker_selectedDayNumberTextColor:I

    sget p3, Landroidx/picker/R$color;->sesl_date_picker_selected_day_number_text_color_light:I

    .line 196
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 195
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    .line 198
    sget p2, Landroidx/picker/R$styleable;->DatePicker_dayNumberDisabledAlpha:I

    sget p3, Landroidx/picker/R$integer;->sesl_day_number_disabled_alpha_light:I

    .line 199
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 198
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    .line 200
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 203
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    .line 205
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_selected_day_circle_stroke:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    .line 207
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 209
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 210
    sget p1, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    .line 213
    new-instance p1, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p1, p0, p0}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;-><init>(Landroidx/picker/widget/SeslSimpleMonthView;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    .line 214
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 215
    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 216
    iput-boolean v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    .line 218
    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_sec_active_themepackage"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 221
    sget p1, Landroidx/picker/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    .line 224
    :cond_1
    sget p1, Landroidx/picker/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    .line 225
    sget p1, Landroidx/picker/R$integer;->sesl_date_picker_abnormal_start_end_date_background_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    .line 229
    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslSimpleMonthView;FF)I
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    return p0
.end method

.method static synthetic access$1002(Landroidx/picker/widget/SeslSimpleMonthView;I)I
    .locals 0

    .line 49
    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    return p1
.end method

.method static synthetic access$1102(Landroidx/picker/widget/SeslSimpleMonthView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    return p1
.end method

.method static synthetic access$1200(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    return p0
.end method

.method static synthetic access$1300(Landroidx/picker/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$1400(Landroidx/picker/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    return p0
.end method

.method static synthetic access$1500(Landroidx/picker/widget/SeslSimpleMonthView;IIZ)I
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Landroidx/picker/widget/SeslSimpleMonthView;IIIZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    return p0
.end method

.method static synthetic access$1800(Landroidx/picker/widget/SeslSimpleMonthView;III)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslSimpleMonthView;->onDayClick(III)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    return p0
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    return p0
.end method

.method static synthetic access$2000(Landroidx/picker/widget/SeslSimpleMonthView;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    return p0
.end method

.method static synthetic access$2200(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    return p0
.end method

.method static synthetic access$2300(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    return p0
.end method

.method static synthetic access$2400(Landroidx/picker/widget/SeslSimpleMonthView;)Ldalvik/system/PathClassLoader;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/picker/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    return p0
.end method

.method static synthetic access$2600(Landroidx/picker/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    return p0
.end method

.method static synthetic access$2700(Landroidx/picker/widget/SeslSimpleMonthView;)Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    return p0
.end method

.method static synthetic access$400(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    return p0
.end method

.method static synthetic access$500(Landroidx/picker/widget/SeslSimpleMonthView;)Landroidx/picker/widget/SeslDatePicker$DateValidator;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/picker/widget/SeslSimpleMonthView;)Ljava/util/Calendar;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    return p0
.end method

.method static synthetic access$800(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    return p0
.end method

.method static synthetic access$900(Landroidx/picker/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p0

    return p0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 598
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v8, 0x2

    mul-int/2addr v1, v8

    const/4 v9, 0x3

    div-int/2addr v1, v9

    .line 599
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int/2addr v3, v8

    div-int v10, v2, v3

    .line 600
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v11

    .line 604
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v2, v2

    const v3, 0x402ccccd    # 2.7f

    div-float v12, v2, v3

    .line 611
    iget v13, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    .line 612
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v2, v2

    .line 613
    iget v14, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    .line 614
    iget v15, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    .line 615
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    .line 616
    iget v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    .line 618
    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    iget v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v8, v9, :cond_0

    add-float/2addr v2, v5

    :cond_0
    move v8, v2

    if-eqz v4, :cond_1

    .line 622
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v2, v9, :cond_1

    add-float/2addr v3, v5

    :cond_1
    move/from16 v18, v3

    .line 626
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    .line 627
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v2, v2

    if-eqz v4, :cond_2

    .line 628
    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v4, :cond_2

    add-float/2addr v2, v5

    :cond_2
    move/from16 v19, v2

    mul-int/lit16 v2, v13, 0x2710

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v8, v4

    float-to-int v5, v5

    add-int/2addr v2, v5

    mul-int/lit16 v5, v15, 0x2710

    mul-float v9, v18, v4

    float-to-int v9, v9

    add-int/2addr v5, v9

    mul-int/lit16 v9, v3, 0x2710

    mul-float v4, v4, v19

    float-to-int v4, v4

    add-int/2addr v9, v4

    .line 636
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/16 v21, 0x0

    if-eqz v4, :cond_4

    add-int v4, v2, v14

    move/from16 v22, v1

    add-int v1, v5, v6

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

    cmpl-float v1, v8, v18

    if-nez v1, :cond_5

    if-ne v3, v13, :cond_5

    cmpl-float v1, v19, v8

    if-nez v1, :cond_5

    move v9, v6

    goto :goto_3

    :cond_5
    if-ge v2, v9, :cond_7

    if-ge v9, v5, :cond_7

    if-ne v3, v15, :cond_6

    cmpl-float v1, v19, v18

    if-eqz v1, :cond_7

    .line 651
    :cond_6
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move v9, v1

    :goto_2
    move/from16 v5, v21

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    if-ne v3, v13, :cond_8

    cmpl-float v1, v19, v8

    if-nez v1, :cond_8

    .line 654
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    add-int/2addr v1, v2

    move v9, v1

    :goto_3
    move v5, v14

    goto :goto_4

    :cond_8
    if-ne v3, v15, :cond_9

    cmpl-float v1, v19, v18

    if-nez v1, :cond_9

    move v9, v6

    goto :goto_2

    :cond_9
    const/4 v5, -0x1

    const/4 v9, -0x1

    .line 661
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isHighContrastFontEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    move/from16 v24, v21

    move/from16 v2, v22

    const/4 v1, 0x1

    move/from16 v22, v11

    .line 662
    :goto_5
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    move/from16 v26, v11

    const-string v11, "%d"

    if-gt v1, v4, :cond_1f

    .line 663
    iget-boolean v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v4, :cond_a

    .line 664
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    const/16 v20, 0x1

    add-int/lit8 v4, v4, -0x1

    sub-int v4, v4, v22

    const/16 v17, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    move-object/from16 v27, v11

    .line 665
    iget v11, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    goto :goto_6

    :cond_a
    move-object/from16 v27, v11

    const/16 v20, 0x1

    mul-int/lit8 v4, v22, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    .line 667
    iget v11, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    :goto_6
    add-int/2addr v4, v11

    move v11, v4

    .line 670
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v4, v22, v4

    move/from16 v28, v10

    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v4, v10

    .line 671
    iget-object v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move/from16 v29, v9

    iget-object v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v4, v9, v4

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 673
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v1, v4, :cond_b

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v1, v4, :cond_c

    .line 674
    :cond_b
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 677
    :cond_c
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    if-eqz v4, :cond_d

    .line 678
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 679
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v4, v9, v10, v1}, Ljava/util/Calendar;->set(III)V

    .line 680
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    iget-object v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-interface {v4, v9}, Landroidx/picker/widget/SeslDatePicker$DateValidator;->isValid(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 681
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 685
    :cond_d
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 686
    iget-boolean v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    if-eqz v9, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    if-eq v9, v10, :cond_e

    .line 687
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    iget-object v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 688
    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    :cond_e
    move-object v9, v4

    if-eqz v23, :cond_15

    if-ne v13, v3, :cond_f

    cmpl-float v4, v8, v19

    if-nez v4, :cond_f

    if-ne v14, v1, :cond_f

    .line 695
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v10, 0x2

    if-eq v4, v10, :cond_10

    const/4 v10, 0x3

    if-eq v4, v10, :cond_10

    :cond_f
    if-ne v15, v3, :cond_11

    cmpl-float v4, v18, v19

    if-nez v4, :cond_11

    if-ne v6, v1, :cond_11

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_10

    const/4 v10, 0x3

    if-ne v4, v10, :cond_11

    :cond_10
    int-to-float v4, v11

    int-to-float v10, v2

    sub-float/2addr v10, v12

    move/from16 v30, v5

    .line 699
    iget v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    move/from16 v31, v12

    iget-object v12, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v10, v5, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 702
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_11
    move/from16 v30, v5

    move/from16 v31, v12

    :goto_7
    if-ne v15, v3, :cond_12

    cmpl-float v4, v18, v19

    if-nez v4, :cond_12

    if-ne v6, v1, :cond_12

    .line 705
    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    :cond_12
    if-ne v13, v3, :cond_14

    cmpl-float v4, v8, v19

    if-nez v4, :cond_14

    if-ne v14, v1, :cond_14

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    const/4 v5, 0x3

    if-ne v4, v5, :cond_14

    :cond_13
    int-to-float v4, v11

    int-to-float v5, v2

    sub-float v5, v5, v31

    .line 709
    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v10, v10

    iget-object v12, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_14
    move/from16 v35, v3

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v25, v14

    move/from16 v12, v28

    move/from16 v10, v29

    move/from16 v14, v30

    move v8, v1

    move/from16 v29, v13

    move/from16 v28, v15

    move v13, v2

    goto/16 :goto_b

    :cond_15
    move/from16 v31, v12

    if-ge v5, v1, :cond_17

    move/from16 v10, v29

    if-ge v1, v10, :cond_16

    sub-int v4, v11, v28

    int-to-float v4, v4

    int-to-float v12, v2

    sub-float v12, v12, v31

    move/from16 v29, v1

    .line 715
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    move/from16 v30, v2

    int-to-float v2, v1

    sub-float/2addr v12, v2

    mul-int/lit8 v2, v28, 0x2

    int-to-float v2, v2

    add-float v32, v4, v2

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float v33, v12, v1

    .line 716
    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move/from16 v34, v8

    move/from16 v8, v29

    move-object/from16 v1, p1

    move/from16 v29, v13

    move/from16 v13, v30

    move-object/from16 v30, v2

    move v2, v4

    move/from16 v35, v3

    move v3, v12

    const/4 v12, -0x1

    move/from16 v4, v32

    move/from16 v25, v14

    move v14, v5

    move/from16 v5, v33

    move/from16 v32, v6

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 718
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    :cond_16
    move/from16 v35, v3

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v29, v13

    move/from16 v25, v14

    const/4 v12, -0x1

    move v8, v1

    move v13, v2

    move v14, v5

    goto :goto_8

    :cond_17
    move/from16 v35, v3

    move/from16 v32, v6

    move/from16 v34, v8

    move/from16 v25, v14

    move/from16 v10, v29

    const/4 v12, -0x1

    move v8, v1

    move v14, v5

    move/from16 v29, v13

    move v13, v2

    :goto_8
    if-eq v14, v12, :cond_18

    if-ne v14, v10, :cond_18

    if-ne v8, v14, :cond_18

    int-to-float v1, v11

    int-to-float v2, v13

    sub-float v2, v2, v31

    .line 722
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 724
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v12, v28

    move/from16 v28, v15

    goto/16 :goto_b

    :cond_18
    if-ne v10, v8, :cond_1a

    int-to-float v1, v13

    sub-float v6, v1, v31

    .line 727
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_19

    int-to-float v1, v11

    goto :goto_9

    :cond_19
    sub-int v1, v11, v28

    int-to-float v1, v1

    :goto_9
    move v2, v1

    .line 728
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v6, v3

    move/from16 v5, v28

    int-to-float v4, v5

    add-float/2addr v4, v2

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v28, v3, v1

    .line 729
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v1

    move-object/from16 v1, p1

    move v12, v5

    move/from16 v5, v28

    move/from16 v28, v15

    move v15, v6

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    .line 732
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 733
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_1a
    move/from16 v12, v28

    move/from16 v28, v15

    if-ne v14, v8, :cond_1c

    int-to-float v1, v13

    sub-float v15, v1, v31

    .line 736
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_1b

    sub-int v1, v11, v12

    int-to-float v1, v1

    goto :goto_a

    :cond_1b
    int-to-float v1, v11

    :goto_a
    move v2, v1

    .line 737
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v15, v3

    int-to-float v4, v12

    add-float/2addr v4, v2

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    int-to-float v1, v1

    add-float v5, v3, v1

    .line 738
    iget-object v6, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    .line 741
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 742
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    :cond_1c
    :goto_b
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-nez v1, :cond_1d

    if-ne v8, v10, :cond_1d

    .line 747
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1d
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 749
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v21

    move-object/from16 v15, v27

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v13

    invoke-virtual {v7, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v22, 0x1

    .line 751
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    if-ne v1, v2, :cond_1e

    .line 753
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int v2, v13, v1

    add-int/lit8 v24, v24, 0x1

    move/from16 v22, v21

    goto :goto_c

    :cond_1e
    move/from16 v22, v1

    move v2, v13

    :goto_c
    add-int/lit8 v1, v8, 0x1

    move v9, v10

    move v10, v12

    move v5, v14

    move/from16 v14, v25

    move/from16 v11, v26

    move/from16 v15, v28

    move/from16 v13, v29

    move/from16 v12, v31

    move/from16 v6, v32

    move/from16 v8, v34

    move/from16 v3, v35

    goto/16 :goto_5

    :cond_1f
    move v13, v2

    move v14, v5

    move-object v15, v11

    move/from16 v31, v12

    move v12, v10

    move v10, v9

    .line 762
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-nez v1, :cond_2c

    move/from16 v11, v24

    const/4 v9, 0x1

    :goto_d
    const/4 v1, 0x6

    if-eq v11, v1, :cond_2c

    .line 765
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_20

    .line 766
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int v1, v1, v22

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    mul-int/2addr v1, v12

    .line 767
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v3

    goto :goto_e

    :cond_20
    const/4 v2, 0x1

    mul-int/lit8 v1, v22, 0x2

    add-int/2addr v1, v2

    mul-int/2addr v1, v12

    .line 769
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    :goto_e
    move v6, v1

    .line 771
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v1, v22, v1

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v1, v2

    .line 772
    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 775
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_24

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v10, v1, :cond_24

    .line 778
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    if-lt v9, v1, :cond_23

    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_10

    .line 783
    :cond_21
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    if-ne v9, v1, :cond_24

    int-to-float v1, v13

    sub-float v5, v1, v31

    .line 785
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_22

    int-to-float v1, v6

    goto :goto_f

    :cond_22
    sub-int v1, v6, v12

    int-to-float v1, v1

    :goto_f
    move v2, v1

    .line 786
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v5, v3

    int-to-float v4, v12

    add-float/2addr v4, v2

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v18, v3, v1

    .line 787
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move v8, v5

    move/from16 v5, v18

    move/from16 v30, v14

    move v14, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    .line 790
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_23
    :goto_10
    move/from16 v30, v14

    move v14, v6

    sub-int v6, v14, v12

    int-to-float v2, v6

    int-to-float v1, v13

    sub-float v1, v1, v31

    .line 780
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

    .line 781
    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_24
    move/from16 v30, v14

    move v14, v6

    .line 795
    :goto_11
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_26

    .line 796
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 797
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    const/16 v8, 0xb

    if-le v1, v8, :cond_25

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v21

    .line 803
    :cond_25
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 804
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v9}, Ljava/util/Calendar;->set(III)V

    .line 806
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 807
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_12

    :cond_26
    const/16 v8, 0xb

    .line 811
    :cond_27
    :goto_12
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 812
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    if-eq v2, v3, :cond_28

    .line 813
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    .line 817
    :cond_28
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_2a

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v10, v2, :cond_2a

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    if-le v9, v2, :cond_29

    .line 818
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 819
    :cond_29
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2a
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 821
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v14

    int-to-float v4, v13

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v22, 0x1

    .line 823
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    if-ne v1, v2, :cond_2b

    .line 825
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int/2addr v13, v1

    add-int/lit8 v11, v11, 0x1

    move/from16 v22, v21

    goto :goto_13

    :cond_2b
    move/from16 v22, v1

    :goto_13
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v30

    goto/16 :goto_d

    :cond_2c
    move/from16 v30, v14

    const/16 v8, 0xb

    if-lez v26, :cond_3a

    .line 832
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-nez v1, :cond_3a

    .line 833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 834
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 835
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    move/from16 v9, v26

    neg-int v2, v9

    const/4 v10, 0x5

    .line 836
    invoke-virtual {v1, v10, v2}, Ljava/util/Calendar;->add(II)V

    .line 838
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 839
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_2e

    .line 840
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    .line 841
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-gez v2, :cond_2d

    add-int/lit8 v1, v1, -0x1

    move v2, v8

    .line 846
    :cond_2d
    iget-boolean v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {v0, v2, v1, v3}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v1

    sub-int/2addr v1, v9

    add-int/2addr v1, v4

    goto :goto_14

    :cond_2e
    const/4 v4, 0x1

    :goto_14
    move v11, v1

    move/from16 v13, v21

    :goto_15
    if-ge v13, v9, :cond_3a

    .line 852
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_2f

    .line 853
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v13

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, v4

    mul-int/2addr v1, v12

    .line 854
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    goto :goto_16

    :cond_2f
    mul-int/lit8 v1, v13, 0x2

    add-int/2addr v1, v4

    mul-int/2addr v1, v12

    .line 856
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    :goto_16
    add-int/2addr v1, v2

    move v14, v1

    .line 858
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    const/16 v16, 0x3

    div-int/lit8 v6, v1, 0x3

    .line 859
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int/2addr v1, v13

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v1, v2

    .line 860
    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 861
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 863
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_33

    if-nez v30, :cond_33

    .line 866
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    if-gt v11, v1, :cond_32

    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_18

    .line 871
    :cond_30
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    if-ne v11, v1, :cond_33

    int-to-float v1, v6

    sub-float v5, v1, v31

    .line 873
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_31

    sub-int v1, v14, v12

    int-to-float v1, v1

    goto :goto_17

    :cond_31
    int-to-float v1, v14

    :goto_17
    move v2, v1

    .line 874
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v1

    sub-float v3, v5, v3

    int-to-float v4, v12

    add-float/2addr v4, v2

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v18, v3, v1

    .line 875
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move v8, v5

    move/from16 v5, v18

    move v10, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    .line 878
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_32
    :goto_18
    move v10, v6

    sub-int v1, v14, v12

    int-to-float v2, v1

    int-to-float v1, v10

    sub-float v1, v1, v31

    .line 868
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

    .line 869
    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_33
    move v10, v6

    .line 883
    :goto_19
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_35

    .line 884
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 885
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    if-gez v1, :cond_34

    add-int/lit8 v2, v2, -0x1

    const/16 v1, 0xb

    .line 891
    :cond_34
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 892
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v11}, Ljava/util/Calendar;->set(III)V

    .line 894
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 896
    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    .line 897
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 896
    invoke-virtual {v1, v2, v3, v5}, Ljava/util/Calendar;->set(III)V

    .line 898
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 899
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    :cond_35
    const/4 v4, 0x2

    const/4 v6, 0x5

    .line 903
    :cond_36
    :goto_1a
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 904
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsHcfEnabled:Z

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    if-eq v2, v3, :cond_37

    .line 905
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    .line 909
    :cond_37
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_39

    if-nez v30, :cond_39

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    if-ge v11, v2, :cond_38

    .line 910
    invoke-direct/range {p0 .. p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v2

    if-nez v2, :cond_39

    .line 911
    :cond_38
    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_39
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 913
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v21

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v5, v14

    int-to-float v8, v10

    invoke-virtual {v7, v3, v5, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    move v4, v2

    move v10, v6

    const/16 v8, 0xb

    goto/16 :goto_15

    :cond_3a
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    .line 964
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    add-int/2addr v0, p0

    :cond_0
    sub-int/2addr v0, v1

    return v0
.end method

.method private getDayFromLocation(FF)I
    .locals 3

    .line 976
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    .line 977
    iget-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_0

    .line 978
    iget v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_2

    .line 980
    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    .line 984
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    div-int/2addr p2, v0

    sub-float/2addr p1, v1

    .line 985
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 987
    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 988
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getDaysInMonth(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 534
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 523
    :pswitch_1
    rem-int/lit8 p0, p1, 0x4

    const/16 v0, 0x1c

    if-nez p0, :cond_2

    .line 524
    rem-int/lit8 p0, p1, 0x64

    const/16 v1, 0x1d

    if-nez p0, :cond_1

    .line 525
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

.method private getDaysInMonthLunar(IIZ)I
    .locals 2

    .line 495
    invoke-static {p1, p2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    .line 497
    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string p0, "SeslSimpleMonthView"

    const-string p1, "getDaysInMonthLunar, mSolarLunarConverter is null"

    .line 498
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 502
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {p0, v1, p2, p1, p3}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDayLengthOf(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIZ)I

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 5

    .line 367
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 371
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 372
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 373
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    .line 376
    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 380
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 381
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string v2, "sec-roboto-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 383
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 384
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 387
    new-instance v0, Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mHcfEnabledDayNumberPaint:Landroid/graphics/Paint;

    .line 388
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private isHighContrastFontEnabled()Z
    .locals 0

    .line 1390
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private isNextMonthEndMonth()Z
    .locals 7

    .line 943
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 944
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    .line 945
    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    .line 946
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    .line 949
    :cond_0
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v3, v0

    .line 953
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

    .line 957
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

.method private isPrevMonthStartMonth()Z
    .locals 7

    .line 921
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 922
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    .line 923
    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v3, v3

    .line 924
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    .line 927
    :cond_0
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v0, v3

    .line 931
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

    .line 935
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

.method private isRTL()Z
    .locals 3

    .line 1347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 1349
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1353
    :cond_0
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 1352
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

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 570
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 571
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 575
    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    return p1

    .line 583
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 581
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 578
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 579
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private onDayClick(III)V
    .locals 1

    .line 999
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1000
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1001
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    .line 1005
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p3, p0

    const/4 p0, 0x1

    invoke-virtual {p1, p3, p0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private onDeactivatedDayClick(IIIZ)V
    .locals 9

    .line 1010
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1011
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1012
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_0

    .line 1014
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1016
    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 1017
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1016
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 1018
    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1030
    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    iget-boolean v7, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;->onDeactivatedDayClick(Landroidx/picker/widget/SeslSimpleMonthView;IIIZZ)V

    .line 1035
    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p3, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method clearAccessibilityFocus()V
    .locals 0

    .line 1044
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 292
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

.method getDayOfWeekStart()I
    .locals 1

    .line 1325
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr v0, p0

    return v0
.end method

.method getNumDays()I
    .locals 0

    .line 1329
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    return p0
.end method

.method getWeekStart()I
    .locals 0

    .line 1321
    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->isRTL()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsRTL:Z

    .line 237
    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 239
    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 240
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 241
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    .line 243
    sget v0, Landroidx/picker/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 246
    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 546
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    const v1, 0x8000

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    if-eq v3, v2, :cond_0

    .line 547
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 548
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    if-eq v0, v2, :cond_1

    .line 549
    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 554
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 556
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 540
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSimpleMonthView;->makeMeasureSpec(II)I

    move-result p1

    .line 541
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 590
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result p1

    .line 301
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

    .line 306
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 308
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/Calendar;->set(III)V

    .line 309
    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    iget-object v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/picker/widget/SeslDatePicker$DateValidator;->isValid(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-gtz p1, :cond_7

    .line 315
    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_6

    .line 316
    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    .line 317
    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    move v0, v3

    .line 323
    :goto_0
    iget-boolean v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {p0, v0, v2, v3}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v3

    add-int/2addr v3, p1

    .line 325
    invoke-direct {p0, v2, v0, v3, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 327
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 329
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v1

    .line 330
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 331
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 332
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 331
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 335
    :cond_7
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    if-le p1, v4, :cond_a

    .line 336
    iget-boolean v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    .line 337
    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    .line 338
    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/2addr v5, v1

    add-int/2addr v3, v5

    if-le v3, v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    :cond_8
    sub-int/2addr p1, v4

    .line 343
    invoke-direct {p0, v2, v3, p1, v6}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 345
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 347
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    invoke-virtual {v0, v4, v5, v7}, Ljava/util/Calendar;->set(III)V

    .line 348
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 350
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 349
    invoke-direct {p0, p1, v2, v0, v6}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 354
    :cond_a
    iget v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-direct {p0, v0, v2, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDayClick(III)V

    :goto_1
    return v1
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    .line 276
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setDisableDates(Landroidx/picker/widget/SeslDatePicker$DateValidator;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDateValidator:Landroidx/picker/widget/SeslDatePicker$DateValidator;

    return-void
.end method

.method setEndDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1340
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    const/4 v0, 0x2

    .line 1341
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    const/4 v0, 0x5

    .line 1342
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    .line 1343
    iput p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method setFirstMonth()V
    .locals 1

    const/4 v0, 0x1

    .line 1373
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    return-void
.end method

.method setLastMonth()V
    .locals 1

    const/4 v0, 0x1

    .line 1377
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    return-void
.end method

.method setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 0

    .line 1360
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    .line 1361
    iput-boolean p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    if-eqz p1, :cond_0

    .line 1363
    iget-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 1364
    iput-object p3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 1366
    invoke-static {p3}, Landroidx/reflect/lunarcalendar/SeslFeatureReflector;->getSolarLunarConverter(Ldalvik/system/PathClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p17

    .line 422
    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    .line 423
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 424
    iput v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    :cond_0
    move v3, p1

    .line 427
    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    .line 429
    invoke-static {p2}, Landroidx/picker/widget/SeslSimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, p2

    .line 430
    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    :cond_1
    move/from16 v3, p3

    .line 432
    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    .line 434
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 435
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 436
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 437
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 439
    iput-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    .line 440
    iput-object v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    .line 443
    iget-boolean v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v3, :cond_2

    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 444
    iget-object v7, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v11, 0x1

    iget-boolean v12, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-static/range {v7 .. v12}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertLunarToSolar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    .line 446
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v7, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v3, v7}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v3

    .line 447
    iget-object v7, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v7, v8}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v7

    .line 448
    iget-object v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v8, v9}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v8

    .line 450
    iget-object v9, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v10, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v9, v10, v3, v7, v8}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getWeekday(Ldalvik/system/PathClassLoader;Ljava/lang/Object;III)I

    move-result v3

    add-int/2addr v3, v6

    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 452
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget-boolean v8, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {p0, v3, v7, v8}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    goto :goto_0

    .line 454
    :cond_2
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 455
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v3, v7}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    .line 459
    :goto_0
    invoke-static/range {p4 .. p4}, Landroidx/picker/widget/SeslSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v3, p4

    .line 460
    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    goto :goto_1

    .line 462
    :cond_3
    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    .line 465
    :goto_1
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v3, v7, :cond_4

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v3, v7, :cond_4

    .line 466
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_2

    :cond_4
    move/from16 v1, p5

    .line 469
    :goto_2
    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_5

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 470
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_3

    :cond_5
    move/from16 v2, p6

    :goto_3
    const/16 v3, 0x20

    if-lez v1, :cond_6

    if-ge v2, v3, :cond_6

    .line 474
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    :cond_6
    if-lez v2, :cond_7

    if-ge v2, v3, :cond_7

    if-lt v2, v1, :cond_7

    .line 477
    iput v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    .line 481
    :cond_7
    iget-object v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    move/from16 v1, p9

    .line 483
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    move/from16 v1, p10

    .line 484
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    move/from16 v1, p11

    .line 485
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    move/from16 v1, p12

    .line 486
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    move/from16 v1, p13

    .line 487
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndYear:I

    move/from16 v1, p14

    .line 488
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndMonth:I

    move/from16 v1, p15

    .line 489
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mEndDay:I

    move/from16 v1, p16

    .line 490
    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method setNextMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    .line 1385
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    return-void
.end method

.method setOnDayClickListener(Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    return-void
.end method

.method setOnDeactivatedDayClickListener(Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    return-void
.end method

.method setPrevMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    .line 1381
    iput-boolean v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    return-void
.end method

.method setStartDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1333
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartYear:I

    const/4 v0, 0x2

    .line 1334
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartMonth:I

    const/4 v0, 0x5

    .line 1335
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mStartDay:I

    .line 1336
    iput p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    return-void
.end method

.method setTextColor(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "CscFeature_Calendar_SetColorOfDays"

    const-string v0, "XXXXXXR"

    .line 252
    invoke-static {p1, v0}, Landroidx/reflect/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    iget v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    if-ge v0, v1, :cond_3

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 260
    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v2, v3

    const/16 v3, 0x52

    if-ne v1, v3, :cond_1

    .line 262
    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSundayTextColor:I

    aput v3, v1, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x42

    if-ne v1, v3, :cond_2

    .line 264
    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    aput v3, v1, v2

    goto :goto_1

    .line 266
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
