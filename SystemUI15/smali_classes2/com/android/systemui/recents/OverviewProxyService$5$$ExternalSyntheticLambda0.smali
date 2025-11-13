.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$5;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onHomeRotationEnabled(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onOverviewShown()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    iget-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onTaskbarAutohideSuspend(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$5;

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/32 v2, 0x2000000

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
