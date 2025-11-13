.class public final Lcom/android/settings/network/telephony/DataUsagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0016\u0010\u0014\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u00170\u0015H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u0002J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\nH\u0016J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u000e\u0010\u001e\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u001fR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/android/settings/network/telephony/DataUsagePreferenceController;",
        "Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "key",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "networkTemplate",
        "Landroid/net/NetworkTemplate;",
        "preference",
        "Landroidx/preference/Preference;",
        "createNetworkCycleDataRepository",
        "Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "",
        "subId",
        "getDataUsageSummaryAndEnabled",
        "Lkotlin/Pair;",
        "Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;",
        "",
        "getNetworkTemplate",
        "handlePreferenceTreeClick",
        "init",
        "onViewCreated",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "update",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private networkTemplate:Landroid/net/NetworkTemplate;

.field private preference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDataUsageSummaryAndEnabled(Lcom/android/settings/network/telephony/DataUsagePreferenceController;)Lkotlin/Pair;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->getDataUsageSummaryAndEnabled()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworkTemplate(Lcom/android/settings/network/telephony/DataUsagePreferenceController;)Landroid/net/NetworkTemplate;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNetworkTemplate$p(Lcom/android/settings/network/telephony/DataUsagePreferenceController;Landroid/net/NetworkTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->networkTemplate:Landroid/net/NetworkTemplate;

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/settings/network/telephony/DataUsagePreferenceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getDataUsageSummaryAndEnabled()Lkotlin/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->createNetworkCycleDataRepository()Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->getCycles()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->queryUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "mContext"

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/android/settings/datausage/lib/NetworkUsageData;->formatUsage(Landroid/content/Context;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v14, 0x10010

    iget-wide v10, v1, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    iget-wide v12, v1, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    invoke-static/range {v9 .. v14}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    const-string v6, "formatDateRange(...)"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v6, 0x7f140bcc

    invoke-virtual {v7, v8, v6, p0}, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;->format(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object p0

    iget-wide v6, v1, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    cmp-long v1, v6, v4

    if-gtz v1, :cond_3

    sget-object v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    sget-object v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->AllTimeRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->queryUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_4
    sget-object v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    sget-object v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->AllTimeRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->queryUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/lib/NetworkUsageData;->formatUsage(Landroid/content/Context;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    const v7, 0x7f140bd6

    invoke-virtual {v1, p0, v7, v6}, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;->format(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object p0

    iget-wide v0, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 2

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;

    iget v1, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;-><init>(Lcom/android/settings/network/telephony/DataUsagePreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$2;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$2;-><init>(Lcom/android/settings/network/telephony/DataUsagePreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/settings/network/telephony/DataUsagePreferenceController$update$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->preference:Landroidx/preference/Preference;

    const-string v2, "preference"

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz p0, :cond_5

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;->displayText:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final createNetworkCycleDataRepository()Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->networkTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->networkTemplate:Landroid/net/NetworkTemplate;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MOBILE_DATA_USAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->networkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.SUB_ID"

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public final init(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->preference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->getPlaceholder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/telephony/DataUsagePreferenceController$onViewCreated$1;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/settings/network/telephony/DataUsagePreferenceController$onViewCreated$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/telephony/DataUsagePreferenceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_0
    const-string p0, "preference"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
