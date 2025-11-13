.class public final Lcom/samsung/android/gtscell/RemoteCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\rH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/RemoteCallback;",
        "Landroid/os/Parcelable;",
        "listener",
        "Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;",
        "handler",
        "Landroid/os/Handler;",
        "(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "callback",
        "Lcom/samsung/android/gtscell/IRemoteCallback;",
        "describeContents",
        "",
        "sendResult",
        "",
        "result",
        "Landroid/os/Bundle;",
        "writeToParcel",
        "flags",
        "CREATOR",
        "OnResultListener",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
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

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    iput-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->handler:Landroid/os/Handler;

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

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    iput-object p2, p0, Lcom/samsung/android/gtscell/RemoteCallback;->handler:Landroid/os/Handler;

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

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gtscell/RemoteCallback;-><init>(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/samsung/android/gtscell/RemoteCallback;)Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;
    .locals 0

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

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->listener:Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/gtscell/RemoteCallback;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;-><init>(Lcom/samsung/android/gtscell/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

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

    const-string/jumbo p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback;->callback:Lcom/samsung/android/gtscell/IRemoteCallback;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
