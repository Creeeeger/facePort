.class public final Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;
.super Lcom/android/systemui/unfold/progress/IUnfoldAnimation$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    const-string v0, "UnfoldTransitionProgressForwarder"

    sput-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/unfold/progress/IUnfoldAnimation$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    const-string v1, "onTransitionFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.android.systemui.unfold.progress.IUnfoldTransitionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    const-string v1, "Failed call onTransitionFinished"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.android.systemui.unfold.progress.IUnfoldTransitionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    const-string v0, "Failed call onTransitionProgress"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onTransitionStarted()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    const-string v1, "onTransitionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->remoteListener:Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.android.systemui.unfold.progress.IUnfoldTransitionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/progress/IUnfoldTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;->TAG:Ljava/lang/String;

    const-string v1, "Failed call onTransitionStarted"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
