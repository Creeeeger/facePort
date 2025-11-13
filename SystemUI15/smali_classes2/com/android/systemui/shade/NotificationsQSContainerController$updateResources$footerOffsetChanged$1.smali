.class final synthetic Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-string v4, "getFooterActionsOffset()I"

    const/4 v5, 0x0

    const-class v2, Lcom/android/systemui/shade/NotificationsQSContainerController;

    const-string v3, "footerActionsOffset"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/NotificationsQSContainerController;

    iget p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->footerActionsOffset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/NotificationsQSContainerController;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->footerActionsOffset:I

    return-void
.end method
