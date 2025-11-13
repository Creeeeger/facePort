.class public final Lcom/android/systemui/statusbar/SummarizeController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lnotification/src/com/android/systemui/PromptCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/SummarizeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SummarizeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SummarizeController$1;->this$0:Lcom/android/systemui/statusbar/SummarizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/SummarizeController$1;->this$0:Lcom/android/systemui/statusbar/SummarizeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SummarizeController"

    if-nez v0, :cond_0

    const-string p0, "!!!!!!!!!!!!!! SrPromptProcessor onComplete() = entry manager is null retry !!!!!!!!!!!!!!!!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Message;->what:I

    const-string v0, "entry_key"

    invoke-static {v0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "entry_summarized"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mShadeExpansionManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " keep it summarize because of panel state : "

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/SummarizeController;->updateSummarize(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onFailure()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/SummarizeController$1;->this$0:Lcom/android/systemui/statusbar/SummarizeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
