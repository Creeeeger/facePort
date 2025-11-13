.class public final Lcom/samsung/android/gtscell/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;,
        Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;


# instance fields
.field private final callback:Lcom/samsung/android/gtscell/IRemoteCallback;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/RemoteCallback;->CREATOR:Lcom/samsung/android/gtscell/RemoteCallback$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->handler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/gtscell/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gtscell/IRemoteCallback;

    move-result-object p1

    const-string v0, "IRemoteCallback.Stub.asI\u2026arcel.readStrongBinder())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback;->callback:Lcom/samsung/android/gtscell/IRemoteCallback;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/gtscell/RemoteCallback;->handler:Landroid/os/Handler;

    .line 35
    new-instance p1, Lcom/samsung/android/gtscell/RemoteCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/gtscell/RemoteCallback$1;-><init>(Lcom/samsung/android/gtscell/RemoteCallback;)V

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback;->callback:Lcom/samsung/android/gtscell/IRemoteCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gtscell/RemoteCallback;-><init>(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/samsung/android/gtscell/RemoteCallback;)Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sendResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/samsung/android/gtscell/RemoteCallback;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;-><init>(Lcom/samsung/android/gtscell/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 56
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->callback:Lcom/samsung/android/gtscell/IRemoteCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/gtscell/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->callback:Lcom/samsung/android/gtscell/IRemoteCallback;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
