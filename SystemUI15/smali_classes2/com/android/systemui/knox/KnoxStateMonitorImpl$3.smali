.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    const-string v2, "KnoxStateMonitorImpl"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "ignore message"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleDisableProfileWhenReachMaxFailed"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDisableProfileWhenReachMaxFailed()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateQuickPanelUnavailableButtons"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelUnavailableButtons()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "handleSetHardKeyIntentState"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onSetHardKeyIntentState(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateAdminLock"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateAdminLock()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleMDMWallpaperChanged"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onMDMWallpaperChanged()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleEnableMDMWallpaper"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateQuickPanelButtonUsers"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleDisableDeviceWhenReachMaxFailed"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateNavigationBarHidden"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleUpdateStatusBarHidden() - mCallbacks.size is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "         -"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :pswitch_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateStatusBarBatteryColour"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :pswitch_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateStatusBarIcons"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :pswitch_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateStatusBarText"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :pswitch_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateQuickPanelItems"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :pswitch_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateQuickPanelEdit"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :pswitch_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateQuickPanelButtons"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :pswitch_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateLockTypeOverride"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :pswitch_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateLockscreenHiddenItems"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :pswitch_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleEnableUCMLock"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onEnableUCMLock()V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :pswitch_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleDPMPasswordChanged"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "handleDoKeyguard "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "handleUpdateKnoxKeyguardState"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_11
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
