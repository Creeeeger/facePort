.class public Landroid/view/ViewOverlay;
.super Ljava/lang/Object;
.source "ViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewOverlay$OverlayViewGroup;
    }
.end annotation


# instance fields
.field greylist-max-o mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewOverlay$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public whitelist clear()V
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->clear()V

    .line 98
    return-void
.end method

.method greylist-max-r getOverlayView()Landroid/view/ViewGroup;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    return-object v0
.end method

.method greylist-max-r isEmpty()Z
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method
