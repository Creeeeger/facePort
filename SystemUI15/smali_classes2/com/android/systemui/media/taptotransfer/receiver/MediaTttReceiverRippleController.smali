.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public maxRippleHeight:F

.field public maxRippleWidth:F

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static final access$layoutIconRipple(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    iget-object v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v2, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object v2, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {v2, v4}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07099f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    const/4 v0, 0x0

    const v1, 0x7f040802

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/high16 v0, 0x42be0000    # 95.0f

    invoke-virtual {p0, v0}, Landroid/content/res/ColorStateList;->withLStar(F)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    const/16 v0, 0x46

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    return-void
.end method


# virtual methods
.method public final getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07099e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    if-eqz p2, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v2, v1, p2

    iput v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleWidth:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleWidth:F

    :goto_0
    iget p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleWidth:F

    iget v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    iget-object v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v3, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, p2, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iget-object p2, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    filled-new-array {p2, v4}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->context:Landroid/content/Context;

    const/4 p2, 0x0

    const v0, 0x7f040802

    invoke-static {p0, v0, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/high16 p2, 0x42be0000    # 95.0f

    invoke-virtual {p0, p2}, Landroid/content/res/ColorStateList;->withLStar(F)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    const/16 p2, 0x46

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    return-void
.end method
