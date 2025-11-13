.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x7

    if-eq p1, v0, :cond_16

    const-string v0, "OverviewProxyService"

    const/16 v2, 0xa

    if-eq p1, v2, :cond_15

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_14

    const/16 v2, 0x1e

    if-eq p1, v2, :cond_13

    const/16 v2, 0xd

    if-eq p1, v2, :cond_12

    const/16 v2, 0xe

    if-eq p1, v2, :cond_11

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_10

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_f

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    const-string p2, "invokeSearcleWithPackageName packageName = "

    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :pswitch_1
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string p1, "cancelSearcle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :pswitch_2
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p1, "invokeSearcle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :pswitch_3
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    if-nez p1, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string/jumbo p1, "startSearcle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :pswitch_4
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p4, 0x7

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    iget-object p0, p1, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mOnNumberOfPackagesChangedListener:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object p4, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object v0, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz p1, :cond_7

    const-string p1, "addOnNumberOfPackagesChangedListener"

    invoke-static {p1}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumRunningPackages()I

    move-result p1

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_a

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onNumberOfVisibleFgsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "Failed to call onNumberOfVisibleFgsChanged()."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mOnNumberOfPackagesChangedListener:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz p1, :cond_9

    const-string p1, "removeOnNumberOfPackagesChangedListener"

    invoke-static {p1}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p2, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    :cond_a
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_6
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p2, "notifyTaskbarSPluginButtonClicked"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_7
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p2, "notifyTaskbarNavigationBarInitialized"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_8
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(I)V

    const-string p2, "notifyOnLongPressRecentsWithMultiStar"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;-><init>(IIIJ)V

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;

    invoke-direct {p4, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;-><init>(I)V

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_b
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;

    invoke-direct {p4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;-><init>()V

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p1, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mQsCustomizerContoller:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    if-eqz p2, :cond_e

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p4, 0x2

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    iget-object p0, p1, Lcom/android/systemui/recents/OverviewProxyService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_c
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/16 p2, 0xb

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string/jumbo p2, "toggleQuickSettingsPanel"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;JFZ)V

    const-string/jumbo p2, "setOverrideHomeButtonLongPress"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZZJ)V

    const-string p2, "animateNavBarLongPress"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;[I)V

    const-string/jumbo p1, "setAssistantOverridesRequested"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;I)V

    const-string p1, "onStatusBarTrackpadEvent"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_11
    sget-object p1, Lcom/android/internal/util/ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/ScreenshotRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_12
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string/jumbo p2, "toggleNotificationPanel"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_13
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZI)V

    const-string p1, "notifyTaskbarAutohideSuspend"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZZ)V

    const-string p1, "notifyTaskbarStatus"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FI)V

    const-string p1, "onAssistantGestureCompletion"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_17
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(I)V

    const-string/jumbo p2, "stopScreenPinning"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_18
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p2, "notifyAccessibilityButtonLongClicked"

    new-instance p3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda33;

    invoke-direct {p3, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda33;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda22;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;II)V

    const-string p1, "notifyAccessibilityButtonClicked"

    new-instance p3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda33;

    invoke-direct {p3, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda33;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZI)V

    const-string/jumbo p1, "setHomeRotationEnabled"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p2, "onBackPressed"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Object;I)V

    const-string/jumbo p1, "startAssistant"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FI)V

    const-string p1, "onAssistantProgress"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p2, "expandNotificationPanel"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda22;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;II)V

    const-string p1, "notifyPrioritizedRotation"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStatusBarTouchEvent: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;I)V

    const-string p1, "onStatusBarTouchEvent"

    new-instance p3, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda33;

    invoke-direct {p3, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda33;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)V

    goto :goto_2

    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZI)V

    const-string p1, "onOverviewShown"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_2

    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;IZLjava/lang/String;)V

    const-string/jumbo p1, "startScreenPinning"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_18
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
