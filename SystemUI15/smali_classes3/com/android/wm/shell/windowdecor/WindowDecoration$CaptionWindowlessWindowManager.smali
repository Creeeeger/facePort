.class public final Lcom/android/wm/shell/windowdecor/WindowDecoration$CaptionWindowlessWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public final setTouchRegion(Landroid/view/SurfaceControlViewHost;Landroid/graphics/Region;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method
