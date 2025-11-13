.class public Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;
.super Landroidx/preference/Preference;
.source "ChartViewPreference.java"


# instance fields
.field mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

.field private mLabelY:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$dYYDxfgp1k00vuWG0zoSnRM1qNs(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->lambda$updateChartView$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_chart_view_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private static synthetic lambda$updateChartView$0(Ljava/lang/Integer;)I
    .locals 0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 44
    sget v0, Lcom/android/settings/R$id;->chart_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    .line 45
    sget v1, Lcom/android/settings/R$id;->companion_text:I

    .line 46
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setCompanionTextView(Landroid/widget/TextView;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mLabelY:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setLabelY([Ljava/lang/String;)V

    return-void
.end method

.method public setLabelY([Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mLabelY:[Ljava/lang/String;

    return-void
.end method

.method public updateChartView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartViewPreference;->mChartView:Lcom/samsung/android/settings/wifi/develop/utils/ChartView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setLevels([I)V

    .line 54
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
