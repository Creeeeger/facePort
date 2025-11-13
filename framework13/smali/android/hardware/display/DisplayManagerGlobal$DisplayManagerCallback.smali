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

    .line 1569
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
    .locals 1
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .line 1608
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDeviceEvent(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V

    .line 1609
    return-void
.end method

.method public greylist-max-o onDisplayEvent(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1575
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDisplayEvent(Landroid/hardware/display/DisplayManagerGlobal;II)V

    .line 1576
    return-void
.end method

.method public blacklist onDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1584
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDisplayVolumeEvent(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/os/Bundle;)V

    .line 1585
    return-void
.end method

.method public blacklist onDisplayVolumeKeyEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .line 1592
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleDisplayVolumeKeyEvent(Landroid/hardware/display/DisplayManagerGlobal;I)V

    .line 1593
    return-void
.end method

.method public blacklist onWifiDisplayParameterEvent(ILjava/util/List;)V
    .locals 1
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 1600
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$mhandleWifiDisplayParameterEvent(Landroid/hardware/display/DisplayManagerGlobal;ILjava/util/List;)V

    .line 1601
    return-void
.end method
