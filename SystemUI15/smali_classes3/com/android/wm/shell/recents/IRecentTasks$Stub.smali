.class public abstract Lcom/android/wm/shell/recents/IRecentTasks$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.recents.IRecentTasks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    const-string v0, "com.android.wm.shell.recents.IRecentTasks"

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
    const-string v0, "com.android.wm.shell.recents.IRecentTasksListener"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/app/PendingIntent;

    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/content/Intent;

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-nez p1, :cond_3

    const-string p0, "RecentTasksController"

    const-string p1, "Used shell-transitions startRecentsTransition without shell-transitions"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    new-instance p1, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V

    const-string/jumbo p2, "startRecentsTransition"

    invoke-static {p0, p2, p1, v4}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    new-array p2, v1, [[Landroid/app/ActivityManager$RunningTaskInfo;

    aput-object v2, p2, v4

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance p4, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda0;-><init>([[Landroid/app/ActivityManager$RunningTaskInfo;I)V

    const-string p1, "getRunningTasks"

    invoke-static {p0, p1, p4, v1}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object p0, p2, v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    if-nez p0, :cond_6

    new-array p0, v4, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    goto :goto_0

    :cond_6
    filled-new-array {v2}, [[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p2

    new-instance v2, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, p4, v0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda2;-><init>([[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;III)V

    const-string p1, "getRecentTasks"

    invoke-static {p0, p1, v2, v1}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object p0, p2, v4

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_9

    instance-of p4, p3, Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz p4, :cond_9

    check-cast p3, Lcom/android/wm/shell/recents/IRecentTasksListener;

    goto :goto_1

    :cond_9
    new-instance p3, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance p2, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    const-string/jumbo p0, "unregisterRecentTasksListener"

    invoke-static {p1, p0, p2, v4}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_c

    instance-of p4, p3, Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz p4, :cond_c

    move-object v2, p3

    check-cast v2, Lcom/android/wm/shell/recents/IRecentTasksListener;

    goto :goto_2

    :cond_c
    new-instance v2, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub$Proxy;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance p2, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, v2}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    const-string/jumbo p0, "registerRecentTasksListener"

    invoke-static {p1, p0, p2, v4}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    :goto_3
    return v1
.end method
