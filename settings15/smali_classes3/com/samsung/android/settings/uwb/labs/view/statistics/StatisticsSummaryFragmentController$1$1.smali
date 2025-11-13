.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;->this$1:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;

    iput p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;->val$state:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;->this$1:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    iget p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;->val$state:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->startAnimation(I)V

    return-void
.end method
