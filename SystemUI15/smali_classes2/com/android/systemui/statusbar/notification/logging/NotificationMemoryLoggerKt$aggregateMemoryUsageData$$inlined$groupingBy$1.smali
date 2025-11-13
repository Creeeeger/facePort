.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/collections/Grouping;


# instance fields
.field public final synthetic $this_groupingBy:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keyOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    new-instance p0, Lkotlin/Pair;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final sourceIterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
