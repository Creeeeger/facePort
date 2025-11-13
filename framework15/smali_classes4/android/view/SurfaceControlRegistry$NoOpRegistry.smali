.class Landroid/view/SurfaceControlRegistry$NoOpRegistry;
.super Landroid/view/SurfaceControlRegistry;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpRegistry"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlRegistry;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry$NoOpRegistry-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry$NoOpRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method blacklist remove(Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public blacklist setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .locals 0

    return-void
.end method
