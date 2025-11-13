.class Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;

.field views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/picker/widget/SeslSimpleMonthView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;)V
    .locals 0

    .line 1840
    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 1838
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    .line 1965
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$4200(Landroidx/picker/widget/SeslDatePicker;Ljava/lang/String;)V

    .line 1966
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 1967
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    .line 1987
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    const-string p1, "finishUpdate"

    invoke-static {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->access$4200(Landroidx/picker/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 4

    .line 1850
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1851
    iget-object v1, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroidx/picker/widget/SeslDatePicker;->access$1202(Landroidx/picker/widget/SeslDatePicker;I)I

    .line 1853
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$4100(Landroidx/picker/widget/SeslDatePicker;I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslDatePicker;->access$1202(Landroidx/picker/widget/SeslDatePicker;I)I

    .line 1857
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1862
    new-instance v15, Landroidx/picker/widget/SeslSimpleMonthView;

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$500(Landroidx/picker/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroidx/picker/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 1863
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/picker/widget/SeslDatePicker;->access$4200(Landroidx/picker/widget/SeslDatePicker;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 1864
    invoke-virtual {v15, v13}, Landroid/view/View;->setClickable(Z)V

    .line 1865
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v15, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->setOnDayClickListener(Landroidx/picker/widget/SeslSimpleMonthView$OnDayClickListener;)V

    .line 1867
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v15, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->setOnDeactivatedDayClickListener(Landroidx/picker/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;)V

    .line 1869
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$4300(Landroidx/picker/widget/SeslDatePicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->setTextColor(Ljava/lang/String;)V

    .line 1871
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/2addr v2, v1

    .line 1872
    div-int/lit8 v3, v2, 0xc

    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroidx/picker/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    add-int/2addr v3, v4

    .line 1873
    rem-int/lit8 v2, v2, 0xc

    .line 1877
    iget-object v4, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v4}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 1878
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2, v1}, Landroidx/picker/widget/SeslDatePicker;->access$4400(Landroidx/picker/widget/SeslDatePicker;I)Landroidx/picker/widget/SeslDatePicker$LunarDate;

    move-result-object v2

    .line 1879
    iget v3, v2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->year:I

    .line 1880
    iget v4, v2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->month:I

    .line 1881
    iget-boolean v2, v2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    move v5, v3

    goto :goto_0

    :cond_0
    move v4, v2

    move v5, v3

    move v2, v12

    .line 1886
    :goto_0
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v6, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    .line 1887
    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1888
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v6

    .line 1891
    :goto_1
    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v9}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1893
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1800(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$1900(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1894
    iget-object v3, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslDatePicker;->access$2000(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v6

    .line 1897
    :cond_3
    :goto_2
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v6}, Landroidx/picker/widget/SeslDatePicker;->access$4500(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1898
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v6}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v6

    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v9, v9, Landroidx/picker/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v15, v6, v2, v9}, Landroidx/picker/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 1901
    :cond_4
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$2300(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1902
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v6}, Landroidx/picker/widget/SeslDatePicker;->access$2300(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1903
    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v9}, Landroidx/picker/widget/SeslDatePicker;->access$2300(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1904
    iget-object v10, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v10}, Landroidx/picker/widget/SeslDatePicker;->access$2200(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1905
    iget-object v11, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v11}, Landroidx/picker/widget/SeslDatePicker;->access$2200(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1906
    iget-object v11, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v11}, Landroidx/picker/widget/SeslDatePicker;->access$2200(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1908
    iget-object v11, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v11}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1909
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$2900(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v2

    .line 1910
    iget-object v6, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v6}, Landroidx/picker/widget/SeslDatePicker;->access$3000(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v6

    .line 1911
    iget-object v7, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v7}, Landroidx/picker/widget/SeslDatePicker;->access$3100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v7

    .line 1912
    iget-object v8, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v8}, Landroidx/picker/widget/SeslDatePicker;->access$2500(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v8

    .line 1913
    iget-object v9, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v9}, Landroidx/picker/widget/SeslDatePicker;->access$2600(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v9

    .line 1914
    iget-object v10, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v10}, Landroidx/picker/widget/SeslDatePicker;->access$2700(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v10

    move v11, v2

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    goto :goto_3

    :cond_5
    move v11, v2

    move/from16 v16, v6

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v17, v9

    move/from16 v20, v10

    .line 1917
    :goto_3
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x1f

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    .line 1918
    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$4600(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$4700(Landroidx/picker/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$3200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v14

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    .line 1919
    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$2800(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v18

    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$2100(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v19

    move-object v2, v15

    move/from16 v12, v16

    move/from16 v23, v13

    move/from16 v13, v17

    move-object/from16 v24, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    .line 1917
    invoke-virtual/range {v2 .. v19}, Landroidx/picker/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    if-nez v1, :cond_6

    .line 1923
    invoke-virtual/range {v24 .. v24}, Landroidx/picker/widget/SeslSimpleMonthView;->setFirstMonth()V

    .line 1925
    :cond_6
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 1926
    invoke-virtual/range {v24 .. v24}, Landroidx/picker/widget/SeslSimpleMonthView;->setLastMonth()V

    .line 1929
    :cond_7
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$1700(Landroidx/picker/widget/SeslDatePicker;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    .line 1932
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Landroidx/picker/widget/SeslDatePicker;->access$4400(Landroidx/picker/widget/SeslDatePicker;I)Landroidx/picker/widget/SeslDatePicker$LunarDate;

    move-result-object v2

    .line 1933
    iget-boolean v2, v2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    if-eqz v2, :cond_8

    .line 1934
    invoke-virtual/range {v24 .. v24}, Landroidx/picker/widget/SeslSimpleMonthView;->setPrevMonthLeap()V

    .line 1938
    :cond_8
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$1200(Landroidx/picker/widget/SeslDatePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_9

    .line 1939
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Landroidx/picker/widget/SeslDatePicker;->access$4400(Landroidx/picker/widget/SeslDatePicker;I)Landroidx/picker/widget/SeslDatePicker$LunarDate;

    move-result-object v2

    .line 1940
    iget-boolean v2, v2, Landroidx/picker/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    if-eqz v2, :cond_9

    .line 1941
    invoke-virtual/range {v24 .. v24}, Landroidx/picker/widget/SeslSimpleMonthView;->setNextMonthLeap()V

    .line 1946
    :cond_9
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;)Landroidx/picker/widget/SeslDatePicker$DateValidator;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1947
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1948
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1949
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$300(Landroidx/picker/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    .line 1951
    :goto_4
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslDatePicker;->access$600(Landroidx/picker/widget/SeslDatePicker;)Landroidx/picker/widget/SeslDatePicker$DateValidator;

    move-result-object v2

    move-object/from16 v4, v24

    invoke-virtual {v4, v2}, Landroidx/picker/widget/SeslSimpleMonthView;->setDisableDates(Landroidx/picker/widget/SeslDatePicker$DateValidator;)V

    goto :goto_5

    :cond_b
    move-object/from16 v4, v24

    const/4 v3, 0x0

    .line 1955
    :goto_5
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroidx/picker/widget/SeslSimpleMonthView;->getNumDays()I

    move-result v5

    invoke-static {v2, v5}, Landroidx/picker/widget/SeslDatePicker;->access$4802(Landroidx/picker/widget/SeslDatePicker;I)I

    .line 1956
    iget-object v2, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroidx/picker/widget/SeslSimpleMonthView;->getWeekStart()I

    move-result v5

    invoke-static {v2, v5}, Landroidx/picker/widget/SeslDatePicker;->access$4902(Landroidx/picker/widget/SeslDatePicker;I)I

    .line 1957
    move-object/from16 v2, p1

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1958
    iget-object v0, v0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1972
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

.method public saveState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    .line 1982
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroidx/picker/widget/SeslDatePicker;

    const-string p1, "startUpdate"

    invoke-static {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->access$4200(Landroidx/picker/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method
