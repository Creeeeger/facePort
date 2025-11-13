.class Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method private constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 1994
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/picker/widget/SeslDatePicker;Landroidx/picker/widget/SeslDatePicker$1;)V
    .locals 0

    .line 1994
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroidx/picker/widget/SeslDatePicker;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 2005
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$1300(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$1402(Landroidx/picker/widget/SeslDatePicker;Z)Z

    .line 2009
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5000(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$5002(Landroidx/picker/widget/SeslDatePicker;Z)Z

    return-void

    .line 2015
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePicker;->access$1102(Landroidx/picker/widget/SeslDatePicker;I)I

    .line 2017
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v0

    add-int/2addr v0, p1

    .line 2019
    div-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    add-int/2addr v2, v3

    .line 2020
    rem-int/lit8 v0, v0, 0xc

    .line 2021
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2023
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2024
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslDatePicker;->access$4400(Landroidx/picker/widget/SeslDatePicker;I)Landroidx/picker/widget/SeslDatePicker$LunarDate;

    move-result-object v0

    .line 2025
    iget v2, v0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    .line 2026
    iget v3, v0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    .line 2027
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslDatePicker;->access$2000(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v5

    .line 2028
    iget-object v6, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    invoke-static {v6, v0}, Landroidx/picker/widget/SeslDatePicker;->access$3302(Landroidx/picker/widget/SeslDatePicker;Z)Z

    move v0, v3

    move v3, v5

    .line 2034
    :cond_2
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_3

    move v1, v6

    .line 2038
    :cond_3
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 2039
    iget-object v2, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 2040
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 2041
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le v3, v0, :cond_4

    .line 2042
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 2044
    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$100(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 2046
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5100(Landroidx/picker/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x3e8

    .line 2047
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2048
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2049
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePicker;->access$5100(Landroidx/picker/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2051
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5100(Landroidx/picker/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 2052
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2053
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslDatePicker;->access$5100(Landroidx/picker/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2056
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$5200(Landroidx/picker/widget/SeslDatePicker;)Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2057
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2058
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 2059
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v1, p1, -0x1

    .line 2061
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2062
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 2063
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2065
    :cond_6
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p0

    sub-int/2addr p0, v6

    if-eq p1, p0, :cond_7

    add-int/2addr p1, v6

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2066
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 2067
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    return-void
.end method
