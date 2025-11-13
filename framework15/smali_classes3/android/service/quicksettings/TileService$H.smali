.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final blacklist MSG_SET_TOGGLE:I = 0x8

.field private static final greylist-max-o MSG_START_LISTENING:I = 0x1

.field private static final greylist-max-o MSG_START_SUCCESS:I = 0x7

.field private static final greylist-max-o MSG_STOP_LISTENING:I = 0x2

.field private static final greylist-max-o MSG_TILE_ADDED:I = 0x3

.field private static final greylist-max-o MSG_TILE_CLICKED:I = 0x5

.field private static final greylist-max-o MSG_TILE_REMOVED:I = 0x4

.field private static final greylist-max-o MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field private final blacklist mTileServiceName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->mTileServiceName:Ljava/lang/String;

    return-void
.end method

.method private blacklist logMessage(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Handler - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1, v0}, Landroid/service/quicksettings/TileService;->semSetToggleButtonChecked(Z)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmService(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmTileToken(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_START_SUCCESS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/service/quicksettings/TileService$H;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmUnlockRunnable(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmUnlockRunnable(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmToken(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onClick()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    :cond_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
