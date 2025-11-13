.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    return-void
.end method


# virtual methods
.method public final onUpdatedState(II)V
    .locals 1

    const-string p2, "StatisticsSummaryFragmentController"

    const-string v0, "onUpdatedState in StatisticsSummaryFragmentController"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;

    iget-object v0, p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
