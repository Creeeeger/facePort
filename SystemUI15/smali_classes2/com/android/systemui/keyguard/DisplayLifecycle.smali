.class public final Lcom/android/systemui/keyguard/DisplayLifecycle;
.super Lcom/android/systemui/keyguard/SecLifecycle;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mCurrentState:I

.field public final mDisplayHash:Ljava/util/Map;

.field public final mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayMetricsHash:Landroid/util/SparseArray;

.field public final mDisplayRealSizeHash:Landroid/util/SparseArray;

.field public final mDisplayRotationHash:Landroid/util/SparseIntArray;

.field public final mDisplaySizeHash:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFitToActiveDisplay:Z

.field public mIsFolderOpened:Z

.field public mPreviousState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    iput v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    iput v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$1;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$1;

    iput-object p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final addDisplay(I)V
    .locals 3

    const-string v0, "addDisplay id = "

    const-string v1, "DisplayLifecycle"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "addDisplay return - display is null or id is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "DisplayLifecycle:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getDisplay(I)Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    const-string v0, "DisplayLifecycle"

    const-string v1, "getDisplay() is null, get directly from DisplayManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getRealSize()Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    if-nez p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DisplayLifecycle"

    const-string v1, "getRealSize(%d) is null, return empty Point"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final updateCacheVariables(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    if-nez p1, :cond_2

    iget v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    iget v4, v2, Landroid/view/DisplayInfo;->state:I

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_1

    iput v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    iput v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    iput v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v5

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v5

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/DisplayMetrics;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v3, :cond_7

    invoke-virtual {v3, v7}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v5

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v2, :cond_9

    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_9
    move v5, v1

    :goto_1
    if-eqz v5, :cond_a

    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSmartViewFitToActiveDisplay : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DisplayLifecycle"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateCacheVariables id = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", display = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", realSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", rotation = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v5
.end method
