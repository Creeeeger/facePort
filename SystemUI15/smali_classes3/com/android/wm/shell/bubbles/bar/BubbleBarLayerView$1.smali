.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->canShowAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v0, "SingleInstanceRemoteListener"

    if-nez p0, :cond_0

    const-string p0, "Failed remote call on null listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "com.android.wm.shell.bubbles.IBubblesListener"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p0, v3, v1, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Failed remote call"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
