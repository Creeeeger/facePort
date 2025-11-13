.class Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/ChartDataUsagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageSummaryNode"
.end annotation


# instance fields
.field public final mDataUsagePercentage:I

.field public final mEndTime:J

.field public mIsFromMultiNode:Z

.field public final mStartTime:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mStartTime:J

    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mEndTime:J

    iput p5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mDataUsagePercentage:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mIsFromMultiNode:Z

    return-void
.end method
