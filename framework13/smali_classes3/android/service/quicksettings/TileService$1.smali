.class Landroid/service/quicksettings/TileService$1;
.super Ljava/lang/Object;
.source "TileService.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quicksettings/TileService;->showDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method constructor blacklist <init>(Landroid/service/quicksettings/TileService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quicksettings/TileService;

    .line 388
    iput-object p1, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 391
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmService(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-$$Nest$fgetmTileToken(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onDialogHidden(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 399
    :goto_0
    return-void
.end method
