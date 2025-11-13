.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;
.super Landroid/hardware/display/IDisplayManagerCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceEvent(Landroid/os/Bundle;I)V
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceEvent: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDeviceEvent(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V

    return-void
.end method

.method public greylist-max-o onDisplayEvent(II)V
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayEvent: displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDisplayEvent(Landroid/hardware/display/DisplayManagerGlobal;IIZ)V

    return-void
.end method

.method public blacklist onDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisplayManager"

    const-string v1, "onDisplayVolumeEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDisplayVolumeEvent(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onDisplayVolumeKeyEvent(I)V
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisplayManager"

    const-string v1, "onDisplayVolumeKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDisplayVolumeKeyEvent(Landroid/hardware/display/DisplayManagerGlobal;I)V

    return-void
.end method

.method public blacklist onWifiDisplayParameterEvent(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisplayManager"

    const-string v1, "onWifiDisplayParameterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleWifiDisplayParameterEvent(Landroid/hardware/display/DisplayManagerGlobal;ILjava/util/List;)V

    return-void
.end method
