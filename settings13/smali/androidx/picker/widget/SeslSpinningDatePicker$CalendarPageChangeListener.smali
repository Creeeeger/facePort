.class Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePicker;


# direct methods
.method private constructor <init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V
    .locals 0

    .line 2015
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/picker/widget/SeslSpinningDatePicker;Landroidx/picker/widget/SeslSpinningDatePicker$1;)V
    .locals 0

    .line 2015
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;-><init>(Landroidx/picker/widget/SeslSpinningDatePicker;)V

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
    .locals 8

    .line 2026
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1200(Landroidx/picker/widget/SeslSpinningDatePicker;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1302(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z

    .line 2030
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5000(Landroidx/picker/widget/SeslSpinningDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2031
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5002(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z

    return-void

    .line 2036
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1002(Landroidx/picker/widget/SeslSpinningDatePicker;I)I

    .line 2038
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinMonth()I

    move-result v0

    add-int/2addr v0, p1

    .line 2040
    div-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-virtual {v3}, Landroidx/picker/widget/SeslSpinningDatePicker;->getMinYear()I

    move-result v3

    add-int/2addr v2, v3

    .line 2041
    rem-int/lit8 v0, v0, 0xc

    .line 2042
    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1400(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2044
    iget-object v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$2100(Landroidx/picker/widget/SeslSpinningDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2045
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$4400(Landroidx/picker/widget/SeslSpinningDatePicker;I)Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;

    move-result-object v0

    .line 2046
    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->year:I

    .line 2047
    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->month:I

    .line 2048
    iget-object v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1800(Landroidx/picker/widget/SeslSpinningDatePicker;)I

    move-result v5

    .line 2049
    iget-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    iget-boolean v0, v0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;->isLeapMonth:Z

    invoke-static {v6, v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1902(Landroidx/picker/widget/SeslSpinningDatePicker;Z)Z

    .line 2050
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$3300(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    move-result-object v0

    iget-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v6}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$2100(Landroidx/picker/widget/SeslSpinningDatePicker;)Z

    move-result v6

    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v7}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1900(Landroidx/picker/widget/SeslSpinningDatePicker;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setLunar(ZZ)V

    move v0, v3

    move v3, v5

    .line 2056
    :cond_2
    iget-object v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_3

    move v1, v6

    .line 2060
    :cond_3
    iget-object v5, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 2061
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 2062
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 2063
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le v3, v0, :cond_4

    .line 2064
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 2066
    :cond_4
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$100(Landroidx/picker/widget/SeslSpinningDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 2068
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5100(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x3e8

    .line 2069
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2070
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2071
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5100(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2073
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5100(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 2074
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2075
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5100(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2078
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$5200(Landroidx/picker/widget/SeslSpinningDatePicker;)Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2079
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2080
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 2081
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v1, p1, -0x1

    .line 2083
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2084
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 2085
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2087
    :cond_6
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePicker$CalendarPageChangeListener;->this$0:Landroidx/picker/widget/SeslSpinningDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslSpinningDatePicker;->access$1100(Landroidx/picker/widget/SeslSpinningDatePicker;)I

    move-result p0

    sub-int/2addr p0, v6

    if-eq p1, p0, :cond_7

    add-int/2addr p1, v6

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2088
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 2089
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslSimpleMonthView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    return-void
.end method
