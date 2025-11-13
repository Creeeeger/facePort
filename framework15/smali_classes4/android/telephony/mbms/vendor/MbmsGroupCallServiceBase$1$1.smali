.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;
.super Ljava/lang/Object;
.source "MbmsGroupCallServiceBase.java"

# interfaces
.implements Landroid/telephony/mbms/MbmsGroupCallSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_0
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_1
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_0
    return-void
.end method

.method public whitelist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$callback:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->onServiceInterfaceAvailable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    :goto_0
    return-void
.end method
