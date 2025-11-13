.class public abstract Lcom/android/wm/shell/startingsurface/IStartingWindow$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.startingsurface.IStartingWindow"

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

    const-string v0, "com.android.wm.shell.startingsurface.IStartingWindow"

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
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const-string p3, "com.android.wm.shell.startingsurface.IStartingWindowListener"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    if-eqz p3, :cond_4

    instance-of p4, p3, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;

    if-eqz p4, :cond_4

    move-object p1, p3

    check-cast p1, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;

    goto :goto_0

    :cond_4
    new-instance p3, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    new-instance p3, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;)V

    const/4 p0, 0x0

    const-string/jumbo p1, "setStartingWindowListener"

    invoke-static {p2, p1, p3, p0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    return v1
.end method
