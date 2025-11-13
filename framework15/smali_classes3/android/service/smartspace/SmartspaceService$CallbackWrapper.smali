.class final Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
.super Ljava/lang/Object;
.source "SmartspaceService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/SmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/app/smartspace/SmartspaceTarget;",
        ">;>;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/app/smartspace/ISmartspaceCallback;

.field private final blacklist mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    iput-object p2, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to link to death: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    return-void
.end method

.method public blacklist accept(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist binderDied()V
    .locals 1

    invoke-virtual {p0}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public blacklist isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z
    .locals 2

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    if-nez v0, :cond_0

    const-string v0, "SmartspaceService"

    const-string v1, "Callback is null, likely the binder has died."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->mCallback:Landroid/app/smartspace/ISmartspaceCallback;

    invoke-interface {v0}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/smartspace/ISmartspaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
