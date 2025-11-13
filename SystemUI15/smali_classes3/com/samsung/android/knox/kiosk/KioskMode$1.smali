.class Lcom/samsung/android/knox/kiosk/KioskMode$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

.field public final synthetic val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

.field public final synthetic val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;Lcom/samsung/android/knox/kiosk/IKioskMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {v0}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    const-string v3, "KioskMode"

    if-nez v2, :cond_1

    const-string v2, "Failed talking with restriction service"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "allow settings changes failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Failed to allow settings changes"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "allow status bar expansion failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "Failed to allow status bar expansion"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "set home key state failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    const-string v5, "Failed to set home key state"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "allow smart clip mode failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    const-string v4, "Failed to allow smart clip mode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "set air command mode failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    const-string v4, "Failed to allow air command mode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "set air view mode failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    const-string v4, "Failed to allow air view mode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    iget-object v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    move v4, v1

    :goto_6
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v4, v5, v2, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "allowHardwareKeys failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v2

    const-string v4, "Failed to allow hardware keys"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "set multiwindow mode failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v2

    const-string v4, "Failed to allow multiwindow mode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "set task manager failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v2

    const-string v4, "Failed to allow task manager"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_9
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    if-eqz v2, :cond_c

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "clear all notifications failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v4, "Failed to clear all notifications"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "hide system bar failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v2

    const-string v4, "Failed to hide system bar"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "hide navigationbar failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_c

    :catch_b
    move-exception v2

    const-string v4, "Failed to hide navigationbar"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "hide status bar failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    const-string v4, "Failed to hide status bar"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_d
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    if-eqz v2, :cond_10

    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "wipe recent task failed"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_e

    :catch_d
    move-exception v2

    const-string v4, "Failed to wipe recent task"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-interface {v2, v4, v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "block edge functions failed"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    const-string v1, "Failed to Block Edge Functions"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_f
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "com.sec.android.kiosk"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_10

    :catch_f
    move-exception p0

    const-string v0, "Failed talking with kiosk mode service"

    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_10
    return-void
.end method
