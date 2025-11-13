.class final Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;
.super Ljava/lang/Object;
.source "CompanionServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsConnectIssued:Z

.field private mIsConnected:Z

.field private mIssueCallbacks:Z

.field private mOnErrorConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSuccessConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompanionServiceConnection::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    return-void
.end method

.method private tryToBind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "tryToBind #=89841166"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsContract;->getIntentToBindService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsContract;->getFlagsToBindService()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "couldn\'t bind."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    sget-boolean v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryToBind flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    if-nez v1, :cond_1

    .line 93
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mOnErrorConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method connect(Landroid/content/Context;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;",
            ">;",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnectIssued:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    const-string p1, "connect() was already issued."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnectIssued:Z

    .line 55
    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mOnSuccessConsumer:Ljava/util/function/Consumer;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mOnErrorConsumer:Ljava/util/function/Consumer;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->tryToBind()V

    return-void
.end method

.method disconnect()V
    .locals 3

    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnectIssued:Z

    if-nez v0, :cond_0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    const-string v0, "connect() was not issued."

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    const-string v2, "disconnect unbindService Exception:"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mContext:Landroid/content/Context;

    :cond_1
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnected:Z

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnected:Z

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "service is died."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindingDied flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    if-nez v0, :cond_1

    .line 129
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mOnErrorConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 100
    sget-boolean p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mOnSuccessConsumer:Ljava/util/function/Consumer;

    invoke-static {p2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnected:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIsConnected:Z

    .line 112
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "service is died."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mIssueCallbacks:Z

    if-nez v0, :cond_1

    .line 117
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/CompanionServiceConnection;->mOnErrorConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
