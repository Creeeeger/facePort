.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final RESOLUTION:J


# instance fields
.field public final mBGLineColor:I

.field public final mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

.field public mEnd:J

.field public final mLimitColor:I

.field public mNetworkCycleChartData:Lcom/android/settings/datausage/lib/NetworkCycleChartData;

.field public mPolicy:Landroid/net/NetworkPolicy;

.field public final mResources:Landroid/content/res/Resources;

.field public mStart:J

.field public final mWarningColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0605c2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0605c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0605c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mBGLineColor:I

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    const p1, 0x7f0d0889

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/lib/NetworkUsageData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v9, v8, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    cmp-long v11, v9, v3

    if-lez v11, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v11, v8, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    add-long/2addr v6, v11

    iget-wide v11, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    long-to-int v9, v9

    sget-wide v13, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    move-wide v15, v3

    div-long v2, v6, v13

    long-to-int v2, v2

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-wide v2, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v8, v8, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    sub-long/2addr v8, v2

    div-long/2addr v8, v11

    long-to-int v2, v8

    div-long v3, v6, v13

    long-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    move-wide v3, v15

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    iget-object v3, v0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v4, v0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_2

    invoke-virtual {v1, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    add-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    const-string v0, "UsageGraph"

    const-string v1, "addPathAndUpdate"

    invoke-static {v5, v6, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getDensedStatsData(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/lib/NetworkUsageData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v6, v5, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    add-long/2addr v3, v6

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v3

    div-long/2addr v6, v1

    long-to-int v13, v6

    new-instance v6, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    iget-wide v9, v5, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    iget-wide v11, v5, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;-><init>(JJI)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getLabel(IIJ)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, p4, v2}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    iget-object p4, p3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, p1, v0

    iget-object p3, p3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p3, p1, v2

    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p0, p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a04a6

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settings/datausage/lib/NetworkCycleChartData;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/datausage/lib/NetworkCycleChartData;->total:Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v3, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v5, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p1, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    iget-object v2, v1, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v2, v1, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v2, v1, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, v1, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p1, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-float v1, v1

    iput v1, v2, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    int-to-float v0, v0

    iput v0, v2, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    iget-object v1, v2, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v5, v2, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v5}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object v1, v2, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v5, v2, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v5}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    const-string v1, "UsageGraph"

    const-string v2, "setMax"

    invoke-static {v3, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settings/datausage/lib/NetworkCycleChartData;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/settings/datausage/lib/NetworkCycleChartData;->dailyUsage:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settings/datausage/lib/NetworkCycleChartData;

    iget-object v1, v1, Lcom/android/settings/datausage/lib/NetworkCycleChartData;->dailyUsage:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    const/16 v10, 0x10

    invoke-static {v8, v2, v3, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v8, v3, v4, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f140b91

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f140b92

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getDensedStatsData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    iget v11, v2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mDataUsagePercentage:I

    iget-boolean v3, v2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mIsFromMultiNode:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x64

    if-ne v11, v3, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v3, v2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mStartTime:J

    iget-wide v5, v2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mEndTime:J

    const/16 v7, 0x10

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    :goto_2
    iget-wide v2, v2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mStartTime:J

    invoke-static {v8, v2, v3, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "; %s, %d%%"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v5, v6, v5, v6}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    if-nez v2, :cond_7

    iget p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mBGLineColor:I

    iget-object p1, p1, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    iput p0, p1, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    iput p0, p1, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    goto :goto_7

    :cond_7
    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const v11, 0x7f140bc5

    invoke-virtual {p0, v11, v10, v6, v7}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(IIJ)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v1

    goto :goto_5

    :cond_8
    move v10, v4

    :goto_5
    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_9

    sget-wide v8, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    div-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const v4, 0x7f0a0eba

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0ebb

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    iget-wide v0, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    const v2, 0x7f140bc6

    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(IIJ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v5

    goto :goto_6

    :cond_9
    const/16 p0, 0x32

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    :goto_6
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    iput v4, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    iput v10, p0, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    :goto_7
    return-void
.end method
