.class final Landroid/service/games/GameSession$GameSessionRootView;
.super Landroid/widget/FrameLayout;
.source "GameSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameSessionRootView"
.end annotation


# instance fields
.field private final blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/service/games/GameSession$GameSessionRootView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-void
.end method


# virtual methods
.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/service/games/GameSession$GameSessionRootView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    return-void
.end method
