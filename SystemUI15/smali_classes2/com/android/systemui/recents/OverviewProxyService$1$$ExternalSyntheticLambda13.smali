.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;JFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-wide p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$1:J

    iput p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$2:F

    iput-boolean p5, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-wide v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$1:J

    iget v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$2:F

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;->f$3:Z

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v5, v3, p0, v1, v2}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->setOverrideHomeButtonLongPress(FZJ)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
