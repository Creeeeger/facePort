.class Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

.field final synthetic blacklist val$parameters:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    .line 1542
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;->val$parameters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1545
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->-$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->-$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;->val$parameters:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;->onSuccess(Ljava/util/List;)V

    .line 1548
    :cond_0
    return-void
.end method
