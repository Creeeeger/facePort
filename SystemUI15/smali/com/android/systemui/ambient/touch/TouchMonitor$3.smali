.class public final Lcom/android/systemui/ambient/touch/TouchMonitor$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$3;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$3;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ambient/touch/TouchHandler;

    invoke-interface {v2}, Lcom/android/systemui/ambient/touch/TouchHandler;->isEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v3

    const/16 v4, 0x7f6

    iget-object v5, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mDisplayHelper:Lcom/android/systemui/util/display/DisplayHelper;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/util/display/DisplayHelper;->getMaxBounds(II)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/shared/Flags;->FEATURE_FLAGS:Lcom/android/systemui/shared/FeatureFlagsImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mExclusionRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/ambient/touch/TouchHandler;->getTouchInitiationRegion(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, p1, Landroid/view/MotionEvent;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p1

    check-cast v5, Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;Landroid/graphics/Rect;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    iget-object v3, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
