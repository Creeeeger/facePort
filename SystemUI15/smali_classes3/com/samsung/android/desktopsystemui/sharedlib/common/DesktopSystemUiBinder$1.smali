.class Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;


# direct methods
.method public static synthetic $r8$lambda$lknNMBa68AYlQxdd7eE6ODGcaYk(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->lambda$onServiceConnected$0()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0()V
    .locals 2

    const-string v0, "SystemUIDesktop is died"

    const-string v1, "DesktopSystemUIBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$300(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeathRecipient-Reconnect"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$400(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindingDied name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DesktopSystemUIBinder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$300(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onBindingDied-Reconnect"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$400(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "DesktopSystemUIBinder"

    const-string v0, "SystemUIDesktop mDesktopBar.start RemoteException "

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$002(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setDesktopBarCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "Start mDesktopBar"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemUIDesktop linkToDeath RemoteException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$200(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;->onServiceConnected()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DesktopSystemUIBinder"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$200(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;

    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method
