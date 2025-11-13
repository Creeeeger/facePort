.class public final Lcom/android/systemui/recents/OverviewProxyService$5;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetUiHints(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onVoiceSessionHidden()V
    .locals 0

    return-void
.end method

.method public final onVoiceSessionShown()V
    .locals 0

    return-void
.end method

.method public final onVoiceSessionWindowVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$5;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
