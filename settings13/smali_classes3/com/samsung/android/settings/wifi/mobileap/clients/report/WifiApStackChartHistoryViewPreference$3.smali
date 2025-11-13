.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;
.super Ljava/lang/Object;
.source "WifiApStackChartHistoryViewPreference.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChartDoubleTapped(Landroid/view/MotionEvent;)V
    .locals 0

    .line 605
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChartDoubleTapped  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 623
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChartFling  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChartGestureEnd(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 3

    .line 575
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChartGestureEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->FLING:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    if-ne p2, v0, :cond_2

    .line 577
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXDragIndexEnd:F

    .line 579
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget p2, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXDragIndexEnd:F

    iget p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXDragIndexStart:F

    cmpl-float v0, p2, p1

    const/16 v1, 0x1f4

    if-lez v0, :cond_1

    .line 580
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChartGestureEnd  Left Motion"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->doLeftOperationWeek()V

    .line 582
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {p1, v1, p2}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 583
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 585
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChartGestureEnd  Right Motion"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$fgetmChartDateRangeSelector(Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->doRightOperationWeek()V

    .line 587
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;

    invoke-direct {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/EasingFunctionSineInOut90;-><init>()V

    invoke-virtual {p1, v1, p2}, Lcom/github/mikephil/charting/charts/Chart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingFunction;)V

    .line 589
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChartGestureStart(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 1

    .line 564
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onChartGestureStart  "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->barChartWeekly:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    iput v0, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mxRightVisibleIndex:F

    .line 566
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mXDragIndexStart:F

    return-void
.end method

.method public onChartLongPressed(Landroid/view/MotionEvent;)V
    .locals 0

    .line 598
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChartLongPressed  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChartScale(Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 633
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChartScale  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChartSingleTapped(Landroid/view/MotionEvent;)V
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->mSingleTapEnable:Z

    .line 613
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChartSingleTapped  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChartTranslate(Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 643
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChartTranslate  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
