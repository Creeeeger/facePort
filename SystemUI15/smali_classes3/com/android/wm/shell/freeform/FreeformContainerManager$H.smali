.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mIsBindingMinimizeContainerService:Z

.field public mIsBindingSmartPopupViewService:Z

.field public final mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

.field public final mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    const-string/jumbo p2, "window"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;)V

    return-void
.end method

.method public static messageToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "MINIMIZE_CONTAINER_TRAY_COLLAPSE"

    return-object p0

    :pswitch_2
    const-string p0, "TASK_MOVE_ENDED"

    return-object p0

    :pswitch_3
    const-string p0, "TASK_MOVE_STARTED"

    return-object p0

    :pswitch_4
    const-string p0, "FREEFORM_CONTAINER_SET_POINTER_POSITION"

    return-object p0

    :pswitch_5
    const-string p0, "FREEFORM_CONTAINER_CONFIGURATION_CHANGED"

    return-object p0

    :pswitch_6
    const-string p0, "FREEFORM_CONTAINER_CLOSE_FULLSCREEN_MODE"

    return-object p0

    :pswitch_7
    const-string p0, "FREEFORM_CONTAINER_ROTATION_CHANGED"

    return-object p0

    :pswitch_8
    const-string p0, "FREEFORM_CONTAINER_REBUILD_ALL"

    return-object p0

    :pswitch_9
    const-string p0, "FREEFORM_CONTAINER_USER_SWITCH"

    return-object p0

    :pswitch_a
    const-string p0, "FREEFORM_CONTAINER_LOAD_ICON_COMPLETED"

    return-object p0

    :pswitch_b
    const-string p0, "FREEFORM_CONTAINER_LAUNCH_ITEM"

    return-object p0

    :pswitch_c
    const-string p0, "SMART_POPUP_VIEW_REMOVE_ITEM"

    return-object p0

    :pswitch_d
    const-string p0, "SMART_POPUP_VIEW_ADD_ITEM"

    return-object p0

    :pswitch_e
    const-string p0, "SMART_POPUP_VIEW_SERVICE_UNBIND"

    return-object p0

    :pswitch_f
    const-string p0, "SMART_POPUP_VIEW_SERVICE_BIND"

    return-object p0

    :pswitch_10
    const-string p0, "MINIMIZE_CONTAINER_REMOVE_ALL_ITEM"

    return-object p0

    :pswitch_11
    const-string p0, "MINIMIZE_CONTAINER_MINIMIZE_TIMEOUT"

    return-object p0

    :pswitch_12
    const-string p0, "MINIMIZE_CONTAINER_ANIM_COMPLETED"

    return-object p0

    :pswitch_13
    const-string p0, "MINIMIZE_CONTAINER_REMOVE_ITEM"

    return-object p0

    :pswitch_14
    const-string p0, "MINIMIZE_CONTAINER_ADD_ITEM"

    return-object p0

    :pswitch_15
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_UNBIND"

    return-object p0

    :pswitch_16
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_BIND"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final destroy()V
    .locals 6

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    if-eqz v1, :cond_2

    const-string v1, "FreeformContainer"

    const-string v3, "[ViewController] destroy"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ViewController] onViewDestroyed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FreeformContainer"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Lcom/android/wm/shell/freeform/FreeformContainerCallback;->onViewDestroyed()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    const-string v2, "FreeformContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Manager] handleMessage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const-string v5, ""

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " item="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/16 v5, 0x2a

    const/4 v6, 0x0

    if-eq v2, v5, :cond_1f

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_d

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0, v4}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iput-boolean v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    goto/16 :goto_d

    :pswitch_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewImmediately()V

    goto/16 :goto_d

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0, v6, v6, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    goto/16 :goto_d

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_20

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_d

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    if-eq v0, p1, :cond_20

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v1, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    const-string v0, "fullscreen_mode_request_screen_rotating"

    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v2, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->animationCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButton()V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ViewController] onRotationChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FreeformContainer"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-interface {v3, v1, p1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerCallback;->onRotationChanged(IILandroid/graphics/Rect;)V

    goto :goto_5

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    goto/16 :goto_d

    :pswitch_4
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_6
    if-ltz v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_a
    monitor-exit p1

    goto/16 :goto_d

    :goto_7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const-wide/16 v4, 0x80

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v8, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/freeform/MinimizeContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;IIZ)V

    invoke-virtual {p1, v8}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    :pswitch_6
    if-eqz v0, :cond_20

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz p1, :cond_d

    instance-of p1, v0, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->iconLoadCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto/16 :goto_d

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->iconLoadCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto/16 :goto_d

    :pswitch_7
    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->launch()V

    goto/16 :goto_d

    :pswitch_8
    if-eqz v1, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    goto/16 :goto_d

    :pswitch_9
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    move-result-object v0

    instance-of v1, v0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto/16 :goto_d

    :cond_e
    const-string p0, "FreeformContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Manager] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, due to no smart popup view item which has packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_a
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v6, v4, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_f
    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto/16 :goto_d

    :pswitch_b
    iput-boolean v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    :try_start_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_9
    iget-object p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_d

    :cond_10
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    goto/16 :goto_d

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->registerReceivers()V

    :cond_11
    iput-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    goto/16 :goto_d

    :pswitch_d
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllMinimizeContainerItem()V

    goto/16 :goto_d

    :pswitch_e
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->animationCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto/16 :goto_d

    :cond_12
    const-string p0, "FreeformContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Manager] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, due to no taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_f
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto/16 :goto_d

    :cond_13
    const-string p0, "FreeformContainer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Manager] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, due to no taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_10
    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 p1, 0x10

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v1

    invoke-virtual {p0, p1, v1, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_a

    :cond_16
    instance-of v5, v4, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_19

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "findCandidateItemForMultiInstance: already has child! "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeformContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object v4, v3

    goto :goto_b

    :cond_18
    instance-of v5, v4, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v5

    if-eq v5, v2, :cond_15

    :cond_19
    :goto_b
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {v4}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    invoke-direct {v1, v0, p1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItem;Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItemController;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->addChildItem(Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    goto :goto_d

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    new-instance p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    invoke-direct {p1, v0, v3}, Lcom/android/wm/shell/freeform/MultiInstanceItem;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItem;Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    new-instance v1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    invoke-direct {v1, v4, p1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItem;Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->addChildItem(Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    new-instance v1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    invoke-direct {v1, v0, p1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItem;Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->addChildItem(Lcom/android/wm/shell/freeform/MultiInstanceItem;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_d

    :cond_1b
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_d

    :cond_1c
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_d

    :pswitch_11
    iput-boolean v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    iget-object p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_d

    :cond_1d
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllMinimizeContainerItem()V

    goto :goto_d

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->registerReceivers()V

    :cond_1e
    iput-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    goto :goto_d

    :cond_1f
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    if-ne p1, v4, :cond_20

    invoke-virtual {p0, v6, v6, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_20
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final init()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "[ViewController] init"

    const-string v3, "FreeformContainer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iput-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    iget-object v5, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0xa2c

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const v4, 0x1800328

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x2

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v5, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v5, 0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v6, 0x11

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v6, 0x7f140261

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    iget-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0d0110

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/freeform/FreeformContainerView;

    iput-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    const v7, 0x7f0a047c

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v7, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iput-object v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[ViewController] registerCallback: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v9, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    invoke-virtual {v7, v9}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v9, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    invoke-virtual {v7, v9}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f07040f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mDefaultGapTop:I

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f070409

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mThresholdToMove:I

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f070410

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f0703ff

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f070401

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconItemTopMarginInFolder:I

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    const v14, 0x7f0703f5

    invoke-static {v7, v14, v5}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mAnimElevation:I

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f07040b

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    const v7, 0x7f0a0473

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    const v7, 0x7f0a047b

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    const v7, 0x7f0a047a

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    new-instance v14, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda7;

    invoke-direct {v14, v6}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    invoke-virtual {v7, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    const-string v14, "freeform_container_pref"

    invoke-virtual {v7, v14, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v14, "position_x"

    invoke-interface {v7, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "position_y"

    invoke-interface {v7, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    move v7, v4

    goto/16 :goto_0

    :cond_1
    iget-object v8, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v8, v8, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const v17, 0x3f4ccccd    # 0.8f

    mul-float v8, v8, v17

    iget-object v13, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v18, 0x40000000    # 2.0f

    div-float v13, v13, v18

    sub-float/2addr v8, v13

    iget-object v13, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v13, v13, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget v12, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mDefaultGapTop:I

    add-int/2addr v13, v12

    int-to-float v12, v13

    invoke-interface {v7, v14, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v13

    invoke-interface {v7, v15, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v14

    iget-object v15, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v11, v13

    float-to-int v9, v14

    iget v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    add-int v4, v11, v5

    add-int/2addr v5, v9

    invoke-virtual {v15, v11, v9, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    const-string/jumbo v5, "rotation"

    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v7, v7, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v9, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v5, v4, v7, v9}, Lcom/android/wm/shell/freeform/FreeformContainerView;->rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    const-string v4, "[ContainerView] loadPositionFromSharedPreferences, position=("

    const-string v5, ","

    const-string v7, ") default=("

    invoke-static {v4, v13, v5, v14, v7}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v7}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    goto :goto_1

    :goto_0
    const-string v4, "[ContainerView] loadPositionFromSharedPreferences, need to init position"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMinimumFlingVelocity:I

    iget-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMaximumFlingVelocity:I

    iget-object v5, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iput-object v1, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a0475

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a0476

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a047d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iput-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0703f9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFolderMaxWidth:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0703f8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0703fa

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingLeft:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0703fb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingRight:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070409

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThresholdToMove:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080a60

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07041c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThumbnailMargin:I

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070407

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewWidth:I

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070404

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewHeight:I

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070405

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVerticalPreviewMargin:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v6, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v3, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07041b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAirViewMargin:I

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOrientation:I

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070410

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPointerSettleDownGap:I

    invoke-virtual {v5}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->computeInset()V

    :cond_3
    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    new-instance v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    new-instance v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0703ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070401

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070400

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0703fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070408

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    iget-object v6, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mItemMargin:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateVisibleIconMaxCount()V

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    iget-object v6, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wallpapertheme_state"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const v3, 0x106038d

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const v3, 0x7f060645

    goto :goto_2

    :cond_5
    const v3, 0x7f060646

    :goto_2
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v6, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView;->getHorizontalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const v7, 0x7f0604c0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v5, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;I)V

    iput-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    iput-object v0, v2, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iput-object v1, v2, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v1, v2, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->loadResources()V

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    const/4 v4, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, v2, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    return-void
.end method

.method public final noRunningService()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final registerReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object p0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final sendMessage(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
