.class public final Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayModeSpecs"
.end annotation


# instance fields
.field public blacklist allowGroupSwitching:Z

.field public blacklist appRequestRefreshRateMax:F

.field public blacklist appRequestRefreshRateMin:F

.field public blacklist defaultMode:I

.field public blacklist primaryRefreshRateMax:F

.field public blacklist primaryRefreshRateMin:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(IZFFFF)V
    .locals 0
    .param p1, "defaultMode"    # I
    .param p2, "allowGroupSwitching"    # Z
    .param p3, "primaryRefreshRateMin"    # F
    .param p4, "primaryRefreshRateMax"    # F
    .param p5, "appRequestRefreshRateMin"    # F
    .param p6, "appRequestRefreshRateMax"    # F

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2191
    iput p1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2192
    iput-boolean p2, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 2193
    iput p3, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    .line 2194
    iput p4, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    .line 2195
    iput p5, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    .line 2196
    iput p6, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    .line 2197
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .locals 0
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2185
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->copyFrom(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    .line 2186
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .locals 1
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2224
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2225
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    .line 2226
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    .line 2227
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    .line 2228
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    .line 2229
    return-void
.end method

.method public blacklist equals(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2208
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2201
    instance-of v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->equals(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 2217
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 2233
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRefreshRateMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMin:F

    .line 2236
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRefreshRateMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2233
    const-string v1, "defaultConfig=%d primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
