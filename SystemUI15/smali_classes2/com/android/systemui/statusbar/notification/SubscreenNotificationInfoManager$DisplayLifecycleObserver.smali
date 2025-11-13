.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    const-string v2, "SubscreenNotificationDetailAdapter"

    if-eqz v1, :cond_0

    const-string v1, "needToUnlock"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "ignoreKeyguardState"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "showRemoteInput"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setReplyWordList()V

    :cond_2
    return-void
.end method
