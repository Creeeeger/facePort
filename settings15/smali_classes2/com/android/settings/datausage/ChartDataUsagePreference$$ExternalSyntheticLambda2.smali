.class public final synthetic Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/ChartDataUsagePreference;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/datausage/ChartDataUsagePreference;

    iget-object p0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/util/List;

    sget v2, Lcom/android/settings/datausage/ChartDataUsagePreference;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->min()Ljava/util/OptionalLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v3

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v5

    new-instance v1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;-><init>(JJI)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    iput-boolean v0, v1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->mIsFromMultiNode:Z

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
