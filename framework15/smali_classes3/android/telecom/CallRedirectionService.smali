.class public abstract Landroid/telecom/CallRedirectionService;
.super Landroid/app/Service;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallRedirectionService$CallRedirectionBinder;
    }
.end annotation


# static fields
.field private static final blacklist MSG_PLACE_CALL:I = 0x1

.field private static final blacklist MSG_TIMEOUT:I = 0x2

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallRedirectionService"


# instance fields
.field private blacklist mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/CallRedirectionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallRedirectionAdapter(Landroid/telecom/CallRedirectionService;Lcom/android/internal/telecom/ICallRedirectionAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/telecom/CallRedirectionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallRedirectionService$1;-><init>(Landroid/telecom/CallRedirectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final whitelist cancelCall()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->cancelCall()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;-><init>(Landroid/telecom/CallRedirectionService;Landroid/telecom/CallRedirectionService$CallRedirectionBinder-IA;)V

    return-object v0
.end method

.method public abstract whitelist onPlaceCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public whitelist onRedirectionTimeout()V
    .locals 0

    return-void
.end method

.method public final whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist placeCallUnmodified()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->placeCallUnmodified()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public final whitelist redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
