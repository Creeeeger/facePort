.class public final Lcom/android/wm/shell/bubbles/DeviceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/wm/shell/bubbles/DeviceConfig$Companion;


# instance fields
.field public final insets:Landroid/graphics/Insets;

.field public final isLandscape:Z

.field public final isLargeScreen:Z

.field public final isRtl:Z

.field public final isSmallTablet:Z

.field public final windowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/DeviceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/DeviceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->Companion:Lcom/android/wm/shell/bubbles/DeviceConfig$Companion;

    return-void
.end method

.method public constructor <init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;
    .locals 9

    sget-object v0, Lcom/android/wm/shell/bubbles/DeviceConfig;->Companion:Lcom/android/wm/shell/bubbles/DeviceConfig$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    new-instance p0, Lcom/android/wm/shell/bubbles/DeviceConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/bubbles/DeviceConfig;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Insets;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    invoke-virtual {p0}, Landroid/graphics/Insets;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->windowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->insets:Landroid/graphics/Insets;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceConfig(isLargeScreen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSmallTablet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isSmallTablet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLandscape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRtl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", windowBounds="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", insets="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
