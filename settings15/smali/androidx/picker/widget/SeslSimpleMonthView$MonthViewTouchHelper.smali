.class public final Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mTempCalendar:Ljava/util/Calendar;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Landroidx/picker/widget/SeslSimpleMonthView;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslSimpleMonthView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final getItemDescription(I)Ljava/lang/CharSequence;
    .locals 10

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    iget v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v3, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/Calendar;->set(III)V

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 p0, 0x16

    invoke-static {v0, v2, v3, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    iget-boolean v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-eqz v0, :cond_5

    iget p0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-gtz p1, :cond_2

    xor-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    iget-boolean v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-gez v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    move v0, v4

    :cond_0
    invoke-virtual {v1, v0, p0, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v4

    add-int/2addr p1, v4

    :cond_1
    :goto_0
    move v6, p0

    move v8, p1

    move v7, v0

    move v9, v2

    goto :goto_1

    :cond_2
    iget v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    if-le p1, v5, :cond_1

    iget-boolean v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/lit8 v6, v2, 0x1

    add-int/2addr v0, v6

    if-le v0, v4, :cond_3

    add-int/lit8 p0, p0, 0x1

    move v0, v3

    :cond_3
    sub-int/2addr p1, v5

    goto :goto_0

    :goto_1
    iget-object v4, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v5, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static/range {v4 .. v9}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->convertLunarToSolar(Ldalvik/system/PathClassLoader;Ljava/lang/Object;IIIZ)V

    iget-object p0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object p1, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getYear(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p0

    iget-object p1, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getMonth(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result p1

    iget-object v0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iget-object v2, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroidx/reflect/lunarcalendar/SeslSolarLunarConverterReflector;->getDay(Ldalvik/system/PathClassLoader;Ljava/lang/Object;)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Ljava/util/Calendar;->set(III)V

    iget-object p0, v1, Landroidx/picker/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/util/Calendar;

    aput-object v1, v0, v3

    const-class v1, Landroid/content/Context;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    const-string v3, "buildLunarDateString"

    invoke-static {p0, v1, v3, v0}, Landroidx/reflect/SeslPathClassReflector;->getMethod(Ldalvik/system/PathClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " InvocationTargetException"

    invoke-static {p0, v2, v3, v1, p1}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IllegalArgumentException"

    invoke-static {p0, v2, v3, v1, p1}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IllegalAccessException"

    invoke-static {p0, v2, v3, v1, p1}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_2
    move-object p0, v0

    :goto_3
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_4
    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result p1

    iget-boolean p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt p1, p2, :cond_1

    :cond_0
    iget-boolean p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le p1, p2, :cond_2

    :cond_1
    const/high16 p0, -0x80000000

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p2

    add-int/2addr p2, p1

    iget p0, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    add-int/lit8 p2, p2, 0x6

    rem-int/lit8 p0, p2, 0x7

    sub-int/2addr p2, p0

    :cond_3
    return p2
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2a

    if-gt v1, v2, :cond_4

    sub-int v2, v1, v0

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    rem-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v2, v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ne p2, v0, :cond_a

    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p2

    sub-int/2addr p1, p2

    iget-boolean p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt p1, p2, :cond_1

    :cond_0
    iget-boolean p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le p1, p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p2, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x5

    if-gtz p1, :cond_5

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v1, :cond_4

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    xor-int/lit8 v3, v1, 0x1

    sub-int/2addr p2, v3

    if-gez p2, :cond_3

    iget v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    sub-int/2addr v2, v0

    add-int/2addr v1, p1

    invoke-virtual {p0, v2, p2, v0, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {p0, p2, v2, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v2, p2, v0, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v0

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_0

    :cond_5
    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    if-le p1, v4, :cond_8

    iget-boolean v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v5, :cond_7

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    add-int/2addr p2, v0

    if-le p2, v2, :cond_6

    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    add-int/2addr p2, v0

    sub-int/2addr p1, v4

    invoke-virtual {p0, p2, v1, v1, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_0

    :cond_6
    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    sub-int/2addr p1, v4

    invoke-virtual {p0, v2, p2, v1, p1}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v5, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget v6, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    iget v4, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int/2addr p1, v4

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIZI)V

    goto :goto_0

    :cond_8
    iget p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mYear:I

    iget v2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mMonth:I

    iget-object v3, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;

    check-cast v1, Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1, p0, p2, v2, p1}, Landroidx/picker/widget/SeslDatePicker;->onDayClick(Landroidx/picker/widget/SeslSimpleMonthView;III)V

    :cond_9
    iget-object p2, p0, Landroidx/picker/widget/SeslSimpleMonthView;->mTouchHelper:Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_0

    iput p1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    iput v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mLastAccessibilityFocusedView:I

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mLostAccessibilityFocus:Z

    :cond_1
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    add-int/2addr v1, p1

    const/4 v2, 0x7

    rem-int/2addr v1, v2

    if-nez v1, :cond_2

    move v1, v2

    :cond_2
    sub-int v4, p1, v1

    add-int/2addr v4, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    invoke-virtual {p0, v4}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142b1c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10

    iget-object v0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mPadding:I

    iget-object v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekHeight:I

    iget v5, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    const/4 v6, 0x7

    div-int/2addr v5, v6

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v8

    add-int/2addr v8, v7

    div-int/lit8 v7, v8, 0x7

    rem-int/2addr v8, v6

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_0

    iget v2, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mCalendarWidth:I

    add-int/2addr v4, v7

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v7, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    add-int/2addr v5, v8

    add-int/2addr v4, v7

    invoke-virtual {v1, v8, v7, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v9, :cond_2

    iget v1, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v3, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mWeekStart:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    rem-int/2addr v1, v6

    if-nez v1, :cond_1

    move v1, v6

    :cond_1
    sub-int v3, p1, v1

    add-int/2addr v3, v2

    sub-int/2addr v6, v1

    add-int/2addr v6, p1

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v6}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f142b1c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Landroidx/picker/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget p0, v0, Landroidx/picker/widget/SeslSimpleMonthView;->mSelectedDay:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-ne p1, p0, :cond_3

    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_3
    return-void
.end method
