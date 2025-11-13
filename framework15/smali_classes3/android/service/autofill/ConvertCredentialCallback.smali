.class public final Landroid/service/autofill/ConvertCredentialCallback;
.super Ljava/lang/Object;
.source "ConvertCredentialCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ConvertCredentialCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/autofill/IConvertCredentialCallback;


# direct methods
.method public constructor blacklist <init>(Landroid/service/autofill/IConvertCredentialCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/ConvertCredentialCallback;->mCallback:Landroid/service/autofill/IConvertCredentialCallback;

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialCallback;->mCallback:Landroid/service/autofill/IConvertCredentialCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IConvertCredentialCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist onSuccess(Landroid/service/autofill/ConvertCredentialResponse;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialCallback;->mCallback:Landroid/service/autofill/IConvertCredentialCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IConvertCredentialCallback;->onSuccess(Landroid/service/autofill/ConvertCredentialResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
