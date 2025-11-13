.class Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "SamsungTelecomServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 23
    const-string v0, "SamsungTelecomServiceConnection"

    :try_start_0
    new-instance v1, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToSamsungTelecom - ServiceManager.addService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string/jumbo v1, "samsung_telecom"

    invoke-static {v1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed linking to death."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-virtual {v0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->connectToSamsungTelecom()V

    .line 39
    return-void
.end method
