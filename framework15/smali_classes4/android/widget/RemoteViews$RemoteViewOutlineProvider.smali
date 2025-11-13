.class public final Landroid/widget/RemoteViews$RemoteViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteViewOutlineProvider"
.end annotation


# instance fields
.field private final blacklist mRadius:F


# direct methods
.method public constructor whitelist <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput p1, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    nop

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

.method public whitelist getRadius()F
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    return v0
.end method
