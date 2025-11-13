.class public interface abstract Lcom/android/wm/shell/common/pip/IPip;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract abortSwipePipToHome(ILandroid/content/ComponentName;)V
.end method

.method public abstract setLauncherAppIconSize(I)V
.end method

.method public abstract setLauncherKeepClearAreaHeight(IZ)V
.end method

.method public abstract setPipAnimationListener(Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;)V
.end method

.method public abstract setPipAnimationTypeToAlpha()V
.end method

.method public abstract setShelfHeight(IZ)V
.end method

.method public abstract startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method
