.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    return-void
.end method


# virtual methods
.method public final onNothingSelected()V
    .locals 0

    return-void
.end method

.method public final onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue()V

    iget-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->callbackListener:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$ChartValueSelectedListener;

    iget p1, p1, Lcom/github/mikephil/charting/data/Entry;->x:F

    float-to-int p1, p1

    invoke-interface {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$ChartValueSelectedListener;->onValueSelected(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart;->mXAxisRendererMonthly:Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedInfoLoaded:Z

    sget p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportData;->mSelectedDay:I

    int-to-float p1, p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyXAxisRenderer;->mSelectedLabel:I

    :cond_0
    return-void
.end method
