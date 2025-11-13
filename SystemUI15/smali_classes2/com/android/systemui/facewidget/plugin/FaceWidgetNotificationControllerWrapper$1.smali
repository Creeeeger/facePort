.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz v4, :cond_c

    const-string v4, "onMediaDataLoaded, "

    const-string v5, ", "

    invoke-static {v4, v0, v5, v1, v5}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/controls/shared/model/MediaData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FaceWidgetNotificationControllerWrapper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->actions:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    new-instance v8, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;

    iget-object v9, v7, Lcom/android/systemui/media/controls/shared/model/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_0

    :goto_1
    move-object v9, v6

    goto :goto_2

    :cond_0
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_2
    iget-object v10, v7, Lcom/android/systemui/media/controls/shared/model/MediaAction;->action:Ljava/lang/Runnable;

    iget-object v7, v7, Lcom/android/systemui/media/controls/shared/model/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    invoke-direct {v8, v9, v10, v7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v5, :cond_6

    new-instance v7, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    iget-object v8, v5, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    :goto_3
    move-object v8, v6

    goto :goto_4

    :cond_3
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_4
    iget-object v9, v5, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    if-nez v9, :cond_5

    const-string v9, ""

    goto :goto_5

    :cond_5
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    const/4 v10, -0x1

    iget-boolean v5, v5, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->enabled:Z

    invoke-direct {v7, v5, v8, v9, v10}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    move-object/from16 v20, v7

    goto :goto_6

    :cond_6
    move-object/from16 v20, v6

    :goto_6
    new-instance v14, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_8

    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_9

    :cond_8
    :goto_7
    move-object v11, v6

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v11, v3

    :goto_8
    iget-object v12, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    iget-object v13, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->actionsToShowInCompact:Ljava/util/List;

    iget-object v9, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    iget-object v8, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->clickIntent:Landroid/app/PendingIntent;

    iget-boolean v7, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    iget-object v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    iget-boolean v10, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->hasCheckedForResume:Z

    move-object/from16 v16, v5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v18, v6

    iget-object v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v26

    iget-boolean v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    move/from16 v23, v5

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->app:Ljava/lang/String;

    move/from16 v25, v10

    move-object v10, v5

    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    move-object/from16 v17, v5

    iget v6, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    move-object/from16 v22, v18

    iget-boolean v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->initialized:Z

    move/from16 v21, v7

    move v7, v5

    const/4 v5, 0x0

    move-object/from16 v19, v8

    move v8, v5

    move-object/from16 v18, v9

    move v9, v5

    iget-object v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->notificationKey:Ljava/lang/String;

    move-object/from16 v24, v2

    move-object/from16 v2, v16

    move-object v5, v14

    move-object/from16 v27, v14

    move-object v14, v3

    invoke-direct/range {v5 .. v26}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;-><init>(IZIILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;ZZ)V

    move-object/from16 v2, v27

    invoke-interface {v4, v0, v1, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;)V

    :cond_c
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    const-string p2, "onMediaDataRemoved, "

    const-string v0, "FaceWidgetNotificationControllerWrapper"

    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onMediaDataRemoved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 0

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
