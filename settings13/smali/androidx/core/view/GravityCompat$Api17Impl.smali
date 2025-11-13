.class Landroidx/core/view/GravityCompat$Api17Impl;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "w",
            "h",
            "container",
            "outRect",
            "layoutDirection"
        }
    .end annotation

    .line 170
    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method
