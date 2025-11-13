.class public Lcom/samsung/android/core/CompatSandbox;
.super Ljava/lang/Object;
.source "CompatSandbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/CompatSandbox$LazyHolder;
    }
.end annotation


# static fields
.field public static final blacklist APP_COMPAT_OVERRIDE_ENABLED:I = 0x100

.field public static final blacklist OFFSET_DEFAULT:F = 0.0f

.field public static final blacklist SANDBOX_DISABLED:I = 0x1

.field public static final blacklist SANDBOX_DISPLAY:I = 0x2

.field public static final blacklist SANDBOX_INSETS_HINT:I = 0x20

.field public static final blacklist SANDBOX_MOCK_FULL_SCREEN:I = 0x10

.field public static final blacklist SANDBOX_MOTION_EVENT:I = 0x8

.field public static final blacklist SANDBOX_UNDEFINED:I = 0x0

.field public static final blacklist SANDBOX_VIEW_BOUNDS:I = 0x4

.field public static final blacklist SCALE_DEFAULT:F = 1.0f

.field public static final blacklist SCALE_UNDEFINED:F = -1.0f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyDisplaySandboxingIfNeeded(Landroid/view/DisplayInfo;)V
    .locals 5

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static blacklist applyInsetsHintSandboxingIfNeeded(Landroid/content/res/Configuration;[Landroid/view/InsetsSourceControl;)V
    .locals 9

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Insets;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/Insets;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/Insets;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/Insets;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/InsetsSourceControl;->setInsetsHint(IIII)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static blacklist applyMotionEventSandboxingIfNeeded(Landroid/content/res/Configuration;Landroid/view/MotionEvent;)V
    .locals 6

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    move-result v3

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v4

    mul-float v5, v3, v4

    invoke-virtual {p1, v1, v2, v5}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    return-void
.end method

.method public static blacklist applyViewBoundsSandboxingIfNeeded(Landroid/content/res/Configuration;Landroid/graphics/Rect;Z)Z
    .locals 4

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxScaledBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    neg-int v1, v1

    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    neg-int v2, v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x1

    return v3
.end method

.method public static blacklist applyViewLocationSandboxingIfNeeded(Landroid/content/res/Configuration;[I)Z
    .locals 4

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxScaledBounds()Landroid/graphics/Rect;

    move-result-object v0

    aget v2, p1, v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    aput v2, p1, v1

    return v1
.end method

.method public static blacklist getCompatWindowingMode(Landroid/content/res/Configuration;I)I
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getEmptyRect()Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/samsung/android/core/CompatSandbox$LazyHolder;->-$$Nest$sfgetEMPTY_RECT()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isAppCompatOverrideEnabled(Landroid/content/res/Configuration;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/samsung/android/core/CompatSandbox;->hasCompatSandboxFlags(Landroid/content/res/Configuration;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist resetCompatSandBoxValuesIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static blacklist updateConfigWithoutWindowConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;Z)I

    return v1
.end method
