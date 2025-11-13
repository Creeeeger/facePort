.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-boolean p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$2:Z

    iput-wide p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$2:Z

    iget-wide v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;->f$3:J

    iget-object p0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->animateNavBarLongPress(ZZJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
