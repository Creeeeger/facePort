.class public final Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;
.super Lcom/android/wm/shell/common/pip/IPip$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field public mController:Lcom/android/wm/shell/pip2/phone/PipController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mPipAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$1;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipController;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/wm/shell/common/pip/IPip$Stub;-><init>()V

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$1;-><init>(Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mPipAnimationListener:Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$1;

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip2/phone/PipController;

    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;)V

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method


# virtual methods
.method public final abortSwipePipToHome(ILandroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip2/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method

.method public final setLauncherAppIconSize(I)V
    .locals 0

    return-void
.end method

.method public final setLauncherKeepClearAreaHeight(IZ)V
    .locals 0

    return-void
.end method

.method public final setPipAnimationListener(Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip2/phone/PipController;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;)V

    const/4 p0, 0x0

    const-string/jumbo p1, "setPipAnimationListener"

    invoke-static {v0, p1, v1, p0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final setPipAnimationTypeToAlpha()V
    .locals 0

    return-void
.end method

.method public final setShelfHeight(IZ)V
    .locals 0

    return-void
.end method

.method public final startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip2/phone/PipController;

    new-instance v9, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;-><init>([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)V

    const-string/jumbo p1, "startSwipePipToHome"

    invoke-static {p0, p1, v9, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    aget-object p0, v8, p0

    return-object p0
.end method

.method public final stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    if-eqz p4, :cond_0

    const-string v0, "PipController.stopSwipePipToHome"

    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip2/phone/PipController;

    new-instance v7, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip2/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;-><init>(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    const-string/jumbo p2, "stopSwipePipToHome"

    invoke-static {p0, p2, v7, p1}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    return-void
.end method
