.class public abstract Lcom/android/wm/shell/shared/IShellTransitions$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/shared/IShellTransitions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.shared.IShellTransitions"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.android.wm.shell.shared.IShellTransitions"

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
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionFilter;

    sget-object p3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/RemoteTransition;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p2, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p2, p1, p3, p4}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;-><init>(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;I)V

    const-string/jumbo p1, "registerRemoteForTakeover"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_1

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    new-array p1, v1, [Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p2, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    const/4 p4, 0x2

    invoke-direct {p2, p1, p4}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const-string p4, "getHomeTaskOverlayContainer"

    invoke-static {p0, p4, p2, v1}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    new-instance p0, Landroid/view/SurfaceControl;

    aget-object p1, p1, v0

    const-string p2, "Transitions.HomeOverlay"

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string p3, "com.android.wm.shell.shared.IHomeTransitionListener"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of p4, p3, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;

    if-eqz p4, :cond_3

    move-object p1, p3

    check-cast p1, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;

    goto :goto_0

    :cond_3
    new-instance p3, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p2, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const-string/jumbo p1, "setHomeTransitionListener"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    :pswitch_4
    sget-object p1, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/RemoteTransition;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p2, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const-string/jumbo p1, "unregisterRemote"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :pswitch_5
    sget-object p1, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionFilter;

    sget-object p3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/RemoteTransition;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p2, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;-><init>(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;I)V

    const-string/jumbo p1, "registerRemote"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
