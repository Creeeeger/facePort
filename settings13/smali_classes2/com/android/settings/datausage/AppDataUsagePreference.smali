.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "AppDataUsagePreference.java"


# instance fields
.field private mDetail:Lcom/android/settingslib/net/UidDetail;

.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I


# direct methods
.method public static synthetic $r8$lambda$VBkfVasu_8co3sC4iruVEptpGY0(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference;->lambda$new$1(Lcom/android/settingslib/net/UidDetailProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qKnBUtUREIbJDCHSh9K-OO2R-Aw(Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V
    .locals 4

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 54
    sget v0, Lcom/android/settings/R$layout;->sec_preference_app_icon:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 56
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    .line 57
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    .line 59
    iget-boolean v0, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 60
    sget p1, Lcom/android/settings/R$string;->data_usage_app_restricted:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    iget p1, p2, Lcom/android/settingslib/AppItem;->key:I

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz p1, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    goto :goto_1

    .line 74
    :cond_2
    sget p1, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 75
    new-instance p1, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 81
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppDataUsagePreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    .line 77
    new-instance p1, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAppInfo()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 87
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 91
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/16 v0, 0x8

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    :goto_0
    iget v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    int-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
