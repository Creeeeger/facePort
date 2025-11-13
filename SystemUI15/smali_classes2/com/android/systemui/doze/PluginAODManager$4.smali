.class public final Lcom/android/systemui/doze/PluginAODManager$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotificationInfoUpdated() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PluginAODManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v3, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/systemui/doze/PluginAODManager;->mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    iget-object v0, v3, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->isMusicFaceWidgetOn()Z

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v10, "]"

    const-string v11, "["

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v12, v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v13, v3, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v3, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v13}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object v14, v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v13

    if-nez v13, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onNotificationInfoUpdated : can not find "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    const/4 v14, 0x2

    goto :goto_1

    :cond_3
    move v14, v6

    :goto_1
    const/16 v16, 0x1

    if-eqz v6, :cond_4

    move-object v15, v5

    check-cast v15, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-boolean v15, v15, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-eqz v15, :cond_4

    move/from16 v15, v16

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_5

    const/4 v14, 0x3

    :cond_5
    if-eqz v15, :cond_6

    iget-object v15, v3, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    check-cast v15, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    invoke-virtual {v15, v13}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v15

    if-nez v15, :cond_6

    move/from16 v15, v16

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_7

    const/4 v14, 0x4

    :cond_7
    if-eqz v6, :cond_8

    if-nez v15, :cond_8

    move-object/from16 v16, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "$"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    move-object/from16 v16, v5

    :goto_4
    if-eqz v15, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v10, :cond_a

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v10, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_0
    iget-object v0, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onNotificationInfoUpdated$ don\'t show - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz v4, :cond_d

    check-cast v4, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, v3, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v2

    invoke-interface {v2, v7, v8, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_7

    :cond_e
    iget-object v2, v3, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v2

    invoke-interface {v2, v7, v8, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_7

    :cond_f
    iget-object v2, v3, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v2

    invoke-interface {v2, v7, v8, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;Ljava/util/List;I)V

    :cond_10
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[updateVisibleNotifications] totalCount : ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " showingKeys "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    if-eqz v4, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz v3, :cond_13

    check-cast v3, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final onNotificationTypeChanged(I)V
    .locals 0

    return-void
.end method
