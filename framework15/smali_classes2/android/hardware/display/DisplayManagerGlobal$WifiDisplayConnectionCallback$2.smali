.class Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

.field final synthetic blacklist val$reason:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    iput p2, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->-$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->-$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->val$reason:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;->onFailure(I)V

    :cond_0
    return-void
.end method
