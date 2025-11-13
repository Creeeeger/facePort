.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroidx/preference/Preference;
.source "ChartDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;
    }
.end annotation


# static fields
.field private static final RESOLUTION:J


# instance fields
.field private final mBGLineColor:I

.field private mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

.field private mEnd:J

.field private final mLimitColor:I

.field private mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mResources:Landroid/content/res/Resources;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mStart:J

.field private final mWarningColor:I


# direct methods
.method public static synthetic $r8$lambda$GMP3n4vNvB92WaNiW7mDWOTnfG8(Lcom/android/settings/datausage/ChartDataUsagePreference;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->lambda$getDensedStatsData$0(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 55
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

    .line 73
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_data_usage_graph_limit_line_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_data_usage_graph_warning_line_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_data_usage_graph_bottom_line_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mBGLineColor:I

    .line 80
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    .line 85
    sget p1, Lcom/android/settings/R$layout;->data_usage_graph:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 287
    iget p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mBGLineColor:I

    invoke-virtual {p1, p0, p0}, Lcom/android/settings/widget/UsageView;->setDividerColors(II)V

    return-void

    .line 292
    :cond_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 293
    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const/4 v7, 0x2

    .line 294
    sget v8, Lcom/android/settings/R$string;->data_usage_sweep_limit:I

    invoke-direct {p0, v1, v2, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 297
    :goto_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 298
    sget-wide v3, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    .line 299
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    int-to-float p3, p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, v1

    .line 301
    invoke-virtual {p1, p3, v1}, Lcom/android/settings/widget/UsageView;->setSideLabelWeights(FF)V

    .line 302
    iget v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const/4 p3, 0x1

    .line 303
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    sget p2, Lcom/android/settings/R$string;->data_usage_sweep_warning:I

    invoke-direct {p0, v1, v2, p2, v6}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p3

    goto :goto_1

    :cond_2
    const/16 p0, 0x32

    .line 307
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/UsageView;->setDividerLoc(I)V

    .line 311
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p1, v6, v5}, Lcom/android/settings/widget/UsageView;->setDividerColors(II)V

    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 322
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object p3, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p1, p2, v2

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 324
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, p0, p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDensedStatsData$0(Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 8

    .line 222
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/stream/LongStream;->min()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v3

    .line 224
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v5

    .line 227
    new-instance v0, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    .line 228
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;JJI)V

    .line 229
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_0

    .line 230
    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->setFromMultiNode(Z)V

    .line 233
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setupContentDescription(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    const v8, 0x10010

    invoke-static {v6, v0, v1, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v6, v1, v2, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->data_usage_chart_brief_content_description:I

    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const/4 v11, 0x1

    aput-object v1, v4, v11

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    .line 159
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 170
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getDensedStatsData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 171
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    .line 172
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getDataUsagePercentage()I

    move-result v12

    .line 173
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->isFromMultiNode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-ne v12, v0, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getStartTime()J

    move-result-wide v1

    .line 177
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getEndTime()J

    move-result-wide v3

    const v5, 0x10010

    move-object v0, v6

    .line 176
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 174
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getStartTime()J

    move-result-wide v0

    invoke-static {v6, v0, v1, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    :goto_2
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p2, v0, v10

    .line 179
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v11

    const-string p2, ";%s %d%%"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 160
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->data_usage_chart_no_data_content_description:I

    .line 161
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toInt(J)I
    .locals 2

    const-wide/32 v0, 0xea60

    .line 278
    div-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/widget/UsageView;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/net/NetworkCycleData;

    .line 127
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-lez v9, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v9

    .line 134
    invoke-virtual {v5}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v11

    add-long/2addr v3, v11

    .line 136
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 137
    iget-wide v11, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v11, v7, v11

    invoke-direct {p0, v11, v12}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    :cond_2
    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    sget-wide v6, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    div-long v11, v3, v6

    long-to-int v8, v11

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    iget-wide v11, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v9, v11

    invoke-direct {p0, v9, v10}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v5

    div-long v6, v3, v6

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 142
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-le p0, v6, :cond_4

    .line 143
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    :cond_4
    return-void
.end method

.method getDensedStatsData(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda0;-><init>()V

    .line 195
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    .line 194
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 200
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/net/NetworkCycleData;

    .line 201
    invoke-virtual {v9}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v10

    add-long/2addr v7, v10

    cmp-long v10, v1, v4

    if-lez v10, :cond_0

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v7

    .line 204
    div-long/2addr v10, v1

    long-to-int v6, v10

    .line 209
    :cond_0
    new-instance v14, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {v9}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v12

    .line 210
    invoke-virtual {v9}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v15

    move-object v10, v14

    move-object/from16 v11, p0

    move-object v9, v14

    move-wide v14, v15

    move/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;JJI)V

    .line 211
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda1;-><init>()V

    .line 217
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v2, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/datausage/ChartDataUsagePreference;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 236
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda3;-><init>()V

    .line 237
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 238
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getInspectEnd()J
    .locals 2

    .line 337
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v0

    .line 112
    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz p0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 113
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/datausage/ChartDataUsagePreference;->RESOLUTION:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 90
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 91
    sget v0, Lcom/android/settings/R$id;->data_usage:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/android/settings/widget/UsageView;->clearPaths()V

    .line 98
    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/widget/UsageView;->configureGraph(II)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData;->getUsageBuckets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData;->getUsageBuckets()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setupContentDescription(Lcom/android/settings/widget/UsageView;Ljava/util/List;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/widget/UsageView;Landroid/net/NetworkPolicy;I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    .line 349
    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    .line 350
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V
    .locals 2

    .line 341
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetworkCycleChartData:Lcom/android/settingslib/net/NetworkCycleChartData;

    .line 342
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    .line 343
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    .line 344
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 329
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
