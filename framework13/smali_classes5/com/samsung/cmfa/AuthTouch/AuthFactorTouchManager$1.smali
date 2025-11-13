.class Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;
.super Ljava/lang/Object;
.source "AuthFactorTouchManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    .line 61
    iput-object p1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 64
    const-string v0, "AuthFactorTouchManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {p2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputmRemoteService(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;)V

    .line 66
    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputisServiceConnected(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Z)V

    .line 67
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fgetmAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAuthTouchEnableListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {v2}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fgetmAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {v0}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fgetmRemoteService(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fgetmAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;->registerAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputmAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {v0, v3}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputisEnableListenerRegistered(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 80
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 84
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputmRemoteService(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputisServiceConnected(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Z)V

    .line 86
    iget-object v0, p0, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager$1;->this$0:Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;

    invoke-static {v0, v1}, Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;->-$$Nest$fputisEnableListenerRegistered(Lcom/samsung/cmfa/AuthTouch/AuthFactorTouchManager;Z)V

    .line 87
    return-void
.end method
