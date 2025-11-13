.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/view/statistics/Chart/WeeklyTimeUsageBarChart$ChartValueSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    return-void
.end method


# virtual methods
.method public final onValueSelected(I)V
    .locals 0

    sput p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportData;->mSelectedDay:I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;->updateInternal$1()V

    return-void
.end method
