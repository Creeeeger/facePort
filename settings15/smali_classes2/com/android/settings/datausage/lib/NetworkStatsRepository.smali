.class public final Lcom/android/settings/datausage/lib/NetworkStatsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final AllTimeRange:Landroid/util/Range;

.field public static final Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;


# instance fields
.field public final networkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final template:Landroid/net/NetworkTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Range;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->AllTimeRange:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->template:Landroid/net/NetworkTemplate;

    const-class p2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method


# virtual methods
.method public final queryBuckets(JJ)Ljava/util/List;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->template:Landroid/net/NetworkTemplate;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    const-string p1, "querySummary(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->access$convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkStatsRepository"

    const-string p2, "Exception querySummary"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method

.method public final queryDetailsForDevice()Ljava/util/List;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->template:Landroid/net/NetworkTemplate;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    const-string v0, "queryDetailsForDevice(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->access$convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NetworkStatsRepository"

    const-string v1, "Exception queryDetailsForDevice"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method

.method public final queryDetailsForUidTagState(Landroid/util/Range;II)Ljava/util/List;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    const-string v2, "getLower(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    const-string p1, "getUpper(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v7, 0x0

    move v6, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p0

    const-string p1, "queryDetailsForUidTagState(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->access$convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkStatsRepository"

    const-string p2, "Exception queryDetailsForUidTagState"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
