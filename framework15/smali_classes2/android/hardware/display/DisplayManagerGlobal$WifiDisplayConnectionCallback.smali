.class public Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;
.super Landroid/hardware/display/IWifiDisplayConnectionCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiDisplayConnectionCallback"
.end annotation


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mUserCallback:Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

.field final synthetic blacklist this$0:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->mUserCallback:Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/display/IWifiDisplayConnectionCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->mUserCallback:Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    new-instance v0, Landroid/os/Handler;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;-><init>(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$1;-><init>(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
