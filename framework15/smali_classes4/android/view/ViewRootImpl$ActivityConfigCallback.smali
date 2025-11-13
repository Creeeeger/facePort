.class public interface abstract Landroid/view/ViewRootImpl$ActivityConfigCallback;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityConfigCallback"
.end annotation


# virtual methods
.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    return-void
.end method
