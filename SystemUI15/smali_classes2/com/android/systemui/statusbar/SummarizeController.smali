.class public final Lcom/android/systemui/statusbar/SummarizeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCommonNotifCollectionLazy:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public final mEmailAppList:Ljava/util/List;

.field public final mNotificationSummaryStringSet:Ljava/util/Map;

.field public final mPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

.field public final mShadeExpansionManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mSrResponseCallback:Lcom/android/systemui/statusbar/SummarizeController$1;

.field public final mSummarizeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeExpansionStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mEmailAppList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/SummarizeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SummarizeController$1;-><init>(Lcom/android/systemui/statusbar/SummarizeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mSrResponseCallback:Lcom/android/systemui/statusbar/SummarizeController$1;

    new-instance v0, Lcom/android/systemui/statusbar/SummarizeController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SummarizeController$2;-><init>(Lcom/android/systemui/statusbar/SummarizeController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/SummarizeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/SummarizeController;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isEnableSummarize()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SummarizeController;->mSummarizeEnabled:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/SummarizeController;->mShadeExpansionManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUPPORT_NOTIFICATION_SUMMARIZE_GAUSS:Z

    if-eqz p2, :cond_0

    new-instance p2, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;

    invoke-direct {p2, p1}, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/SummarizeController;->mPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    goto :goto_0

    :cond_0
    new-instance p2, Lnotification/src/com/android/systemui/SrPromptProcessor;

    invoke-direct {p2, p1}, Lnotification/src/com/android/systemui/SrPromptProcessor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/SummarizeController;->mPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    :goto_0
    return-void
.end method


# virtual methods
.method public final updateSummarize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mSummarizeEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/SummarizeController;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateSummarize(Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    :goto_0
    return-void
.end method
