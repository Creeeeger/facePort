.class public final Lcom/google/android/material/datepicker/MaterialCalendar$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

.field public final synthetic val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic val$monthsPagerAdapter:Lcom/google/android/material/datepicker/MonthsPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->val$monthsPagerAdapter:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    if-gez p2, :cond_0

    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_0
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->val$monthsPagerAdapter:Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iget-object v0, p3, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    iget-object v0, v0, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance v2, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v2, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    iput-object v2, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    iget-object p1, p3, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    iget-object p1, p1, Lcom/google/android/material/datepicker/Month;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getDayCopy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$7;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
