.class public final Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $currentDisplaySize:Lkotlin/jvm/functions/Function0;

.field public final synthetic $getRotation:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$currentDisplaySize:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$getRotation:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    iget-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$currentDisplaySize:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$start$broadcastReceiver$1;->$getRotation:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "info"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    const-string v3, "SecLightRevealScrimHelper"

    if-eq v1, v2, :cond_0

    const-string/jumbo p0, "updateDoubleTap no double tap"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-string v2, "location"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object p2

    if-eqz p2, :cond_5

    array-length v2, p2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_2

    const/4 v4, 0x3

    if-eq p0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget v5, p2, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iput v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    aget p2, p2, v2

    div-float/2addr p2, v1

    iput p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    goto :goto_0

    :cond_2
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget v2, p2, v2

    div-float/2addr v2, v1

    sub-float/2addr v4, v2

    iput v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aget p2, p2, v5

    div-float/2addr p2, v1

    sub-float/2addr v2, p2

    iput v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    goto :goto_0

    :cond_3
    aget v4, p2, v5

    div-float/2addr v4, v1

    iput v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    aget p2, p2, v2

    div-float/2addr p2, v1

    sub-float/2addr v4, p2

    iput v4, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    goto :goto_0

    :cond_4
    aget v2, p2, v2

    div-float/2addr v2, v1

    iput v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    aget p2, p2, v5

    div-float/2addr p2, v1

    iput p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    :cond_5
    :goto_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

    if-eqz p2, :cond_6

    iget v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    iput v2, p2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerX:F

    iget v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    iput v2, p2, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;->centerY:F

    :cond_6
    iget p2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    iget v2, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const-string/jumbo v6, "updateDoubleTap: secRevealDoubleTapX="

    const-string v7, " secRevealDoubleTapY="

    const-string v8, " currentDisplaySize.x="

    invoke-static {v6, p2, v7, v2, v8}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " currentDisplaySize.y="

    const-string v6, " initialDisplaySize.x="

    invoke-static {p2, v4, v2, v0, v6}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, " initialDisplaySize.y="

    const-string v2, " screenSizeRatio="

    invoke-static {p2, v5, v0, p1, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " rotation="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
