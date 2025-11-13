.class public final Lcom/android/systemui/volume/VolumeUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final LOGD:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VolumeUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "mEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v4, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v7, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    iput-boolean v7, v0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-object v7, v0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object v8, v7, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-boolean v4, v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    iput-boolean v5, v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    const-string v4, "DndTileVisible"

    invoke-static {v0, v4, v6}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumeUI"

    const-string v5, "Registering default volume controller"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, v7, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    :try_start_0
    iget-object v0, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v9, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v9, "Unable to set the volume controller"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    iput-object v0, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :try_start_1
    iget-object v9, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string v0, "No volume policy api"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "showDndTile"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    invoke-static {v0, v4, v6}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_2
    iget-object v0, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {v0}, Lcom/android/settingslib/volume/MediaSessions;->init()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v4, "No access to media sessions"

    invoke-static {v8, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v5, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    iget-object v4, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object v8, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v9, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DISPLAY_MANAGER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v8, :cond_6

    new-instance v15, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;

    invoke-direct {v15, v0, v4, v3}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Ljava/util/function/Consumer;)V

    iget-object v11, v8, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v14, 0x0

    const/4 v0, 0x0

    iget-object v9, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x3c

    move-object v10, v15

    move-object v3, v15

    move-object v15, v0

    invoke-static/range {v9 .. v16}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v3, v8, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_6
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    iget-object v3, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;

    invoke-direct {v8, v3, v0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;-><init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v9, v3, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v8, v9}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    iput-object v8, v3, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayVolumeListener:Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x4

    invoke-direct {v0, v5, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v5, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v8, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_TOGETHER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v2, :cond_7

    new-instance v15, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;

    invoke-direct {v15, v0, v3, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V

    iget-object v10, v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v8, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v0, 0x3c

    move-object v9, v15

    move-object v3, v15

    move v15, v0

    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v3, v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    const/4 v2, 0x5

    invoke-direct {v0, v5, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v5, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MUSIC_SHARE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v1, :cond_8

    new-instance v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMusicShareStateAction$1$1;

    invoke-direct {v3, v0, v2, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMusicShareStateAction$1$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V

    iget-object v10, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v8, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x3c

    move-object v9, v3

    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v3, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_8
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    const/4 v1, 0x6

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    iget-object v1, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/volume/util/BroadcastReceiverType;->AOD:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v1, :cond_9

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;

    invoke-direct {v2, v0, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V

    iget-object v10, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v8, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x3c

    move-object v9, v2

    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v2, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_9
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    iget-object v1, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_ICON_SERVER_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v1, :cond_a

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerBudsIconServerChange$1$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerBudsIconServerChange$1$1;-><init>(Ljava/util/function/Consumer;)V

    iget-object v10, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v8, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x3c

    move-object v9, v2

    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v2, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a
    iget-object v0, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v5, v6}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconServerUtils;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v3, "vol.BluetoothIconServerUtils"

    const-string v4, "init"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v7, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const-string v1, "DndTileCombinedIcon"

    invoke-static {v0, v1, v6}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
