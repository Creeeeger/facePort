.class Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableSummarize()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fputmSummarizeEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " mSummarizeEnabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fgetmSummarizeEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SummarizeCoordinator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fgetmSummarizeEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fgetmCommonNotifCollectionLazy(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " update original contents for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateSummarize(Ljava/lang/String;Z)V

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->-$$Nest$fgetmSummarizeController(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Lcom/android/systemui/statusbar/SummarizeController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    invoke-interface {p0}, Lnotification/src/com/android/systemui/BasePromptProcessor;->releaseSummarizer()V

    :cond_2
    return-void
.end method
