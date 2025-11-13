.class public final Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHolder:Landroidx/preference/PreferenceViewHolder;

.field public final mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatisticsSummaryFragmentController"

    const-string v1, "CREATE: StatisticsSummaryFragmentController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/StatisticsSummaryController;

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->getInstance()Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;)V

    iget-object p0, p1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final startAnimation(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/StatisticsSummaryFragmentController;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a0406

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f13007a

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f13007b

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f130079

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method
