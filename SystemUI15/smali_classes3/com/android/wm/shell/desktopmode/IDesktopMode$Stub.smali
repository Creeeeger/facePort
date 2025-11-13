.class public abstract Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.desktopmode.IDesktopMode"

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

    const-string v0, "com.android.wm.shell.desktopmode.IDesktopMode"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;

    invoke-direct {p2, p1, p4}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$moveToDesktop$1;-><init>(ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    const-string p1, "moveToDesktop"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string p3, "com.android.wm.shell.desktopmode.IDesktopTaskListener"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of p4, p3, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    if-eqz p4, :cond_3

    move-object p1, p3

    check-cast p1, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    goto :goto_0

    :cond_3
    new-instance p3, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    sget-object p2, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    if-nez p1, :cond_4

    const-string p4, "null"

    goto :goto_1

    :cond_4
    move-object p4, p1

    :goto_1
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "IDesktopModeImpl: set task listener=%s"

    invoke-static {p3, p2, p4}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;

    invoke-direct {p3, p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$setTaskListener$1;-><init>(Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;)V

    const-string/jumbo p0, "setTaskListener"

    invoke-static {p2, p0, p3, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$onDesktopSplitSelectAnimComplete$1;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$onDesktopSplitSelectAnimComplete$1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const-string p1, "onDesktopSplitSelectAnimComplete"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    new-array p2, v1, [I

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p4, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;

    invoke-direct {p4, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$getVisibleTaskCount$1;-><init>([II)V

    const-string p1, "getVisibleTaskCount"

    invoke-static {p0, p1, p4, v1}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget p0, p2, v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$showDesktopApp$1;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$showDesktopApp$1;-><init>(I)V

    const-string/jumbo p1, "showDesktopApp"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "IDesktopModeImpl: hideStashedDesktopApps is deprecated"

    invoke-static {p1, p0, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "IDesktopModeImpl: stashDesktopApps is deprecated"

    invoke-static {p1, p0, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/RemoteTransition;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;->controller:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$showDesktopApps$1;

    invoke-direct {p2, p1, p4}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$showDesktopApps$1;-><init>(ILandroid/window/RemoteTransition;)V

    const-string/jumbo p1, "showDesktopApps"

    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
