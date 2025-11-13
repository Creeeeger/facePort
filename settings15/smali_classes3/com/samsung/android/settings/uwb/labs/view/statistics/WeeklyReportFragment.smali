.class public Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d09e1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d09e1

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    const-string p0, "WeeklyReportFragment"

    const-string p1, "CREATE: WeeklyReportFragment"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d09e1

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d09e1

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0a0fae

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    new-instance v2, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    iget-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v2, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    new-instance v2, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    iget-object v3, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v2, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyUsage:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyUsageReport;

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController$1;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->updatePreference()V

    return-void
.end method

.method public final updatePreference()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mStatisticsControl:Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/statistics/WeeklyReportController;->mDataManager:Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/uwb/labs/data/StatisticsDataManager;->getUwbUsage()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WeeklyReportFragment"

    const-string v1, "fail to read database."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->draw()V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragment;->mFragmentController:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyReportFragmentController;->mWeeklyTime:Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    int-to-long v3, v3

    iget-object v5, v0, Lcom/samsung/android/settings/uwb/labs/view/statistics/WeeklyTimeReport;->mDailyRangingCnt:[J

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-le v3, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
