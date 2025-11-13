.class Landroid/mtp/MtpDatabase$3;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDatabase;->initializeSerivce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/mtp/MtpDatabase;

    .line 1195
    iput-object p1, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1203
    iget-object v0, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1204
    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1207
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v1}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmMessenger(Landroid/mtp/MtpDatabase;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1208
    iget-object v1, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v1}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1212
    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "say hello exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1198
    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1200
    return-void
.end method
