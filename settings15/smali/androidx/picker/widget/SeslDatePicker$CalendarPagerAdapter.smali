.class public final Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;

.field public final views:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final destroyItem(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/picker/widget/SeslDatePicker;->CALENDAR_HEADER_SPINNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final finishUpdate()V
    .locals 1

    sget-object v0, Landroidx/picker/widget/SeslDatePicker;->CALENDAR_HEADER_SPINNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getCount()I
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    return v0
.end method

.method public final getItemPosition()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v15, Landroidx/picker/widget/SeslSimpleMonthView;

    iget-object v13, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroidx/picker/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Landroid/view/View;->setClickable(Z)V

    iput-object v13, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    iput-object v13, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Landroidx/reflect/feature/SeslCscFeatureReflector;->getString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v11, 0x0

    move v3, v11

    :goto_0
    const/4 v6, 0x7

    if-ge v3, v6, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x2

    rem-int/2addr v5, v6

    const/16 v6, 0x52

    if-ne v4, v6, :cond_1

    iget-object v4, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v6, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mSundayTextColor:I

    aput v6, v4, v5

    goto :goto_1

    :cond_1
    const/16 v6, 0x42

    if-ne v4, v6, :cond_2

    iget-object v4, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v6, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    aput v6, v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v6, v15, Landroidx/picker/widget/SeslSimpleMonthView;->mNormalTextColor:I

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v13}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v3, v2, 0xc

    invoke-virtual {v13}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    add-int v5, v4, v3

    rem-int/lit8 v4, v2, 0xc

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v7, 0x5

    if-ne v2, v5, :cond_4

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :goto_2
    move/from16 v16, v2

    goto :goto_3

    :cond_4
    const/4 v2, -0x1

    goto :goto_2

    :goto_3
    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v17

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v20

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v21

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v22

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v23

    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v24

    iget v2, v13, Landroidx/picker/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v2, :cond_5

    :goto_4
    move/from16 v25, v2

    goto :goto_5

    :cond_5
    iget-object v2, v13, Landroidx/picker/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    goto :goto_4

    :goto_5
    iget-object v9, v13, Landroidx/picker/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v10, v13, Landroidx/picker/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v14, v13, Landroidx/picker/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v2, v13, Landroidx/picker/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v18, v2

    const/4 v7, 0x1

    const/16 v8, 0x1f

    const/16 v19, 0x0

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v6, v25

    move/from16 v11, v17

    move/from16 v12, v20

    move-object/from16 v26, v13

    move/from16 v13, v21

    move-object/from16 v27, v15

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-virtual/range {v2 .. v19}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    move-object/from16 v2, v27

    const/4 v3, 0x1

    if-nez v1, :cond_6

    iput-boolean v3, v2, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    :cond_6
    move-object/from16 v4, v26

    iget v5, v4, Landroidx/picker/widget/SeslDatePicker;->mPositionCount:I

    sub-int/2addr v5, v3

    if-ne v1, v5, :cond_7

    iput-boolean v3, v2, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    :cond_7
    const/4 v3, 0x7

    iput v3, v4, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    iget v3, v2, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    iput v3, v4, Landroidx/picker/widget/SeslDatePicker;->mWeekStart:I

    move-object/from16 v3, p1

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final startUpdate()V
    .locals 1

    sget-object v0, Landroidx/picker/widget/SeslDatePicker;->CALENDAR_HEADER_SPINNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
