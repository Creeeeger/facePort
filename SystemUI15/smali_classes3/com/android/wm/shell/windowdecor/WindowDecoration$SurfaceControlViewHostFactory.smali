.class public interface abstract Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;
    .locals 2

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    const-string v1, "WindowDecoration"

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    return-object v0
.end method
