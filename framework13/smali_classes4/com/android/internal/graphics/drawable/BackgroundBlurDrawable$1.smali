.class Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 98
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$positionChanged$0$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 117
    return-void
.end method

.method synthetic blacklist lambda$positionChanged$1$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 112
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmHandler(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method synthetic blacklist lambda$positionLost$2$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->invalidateSelf()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onBlurDrawableUpdated(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V

    .line 135
    return-void
.end method

.method synthetic blacklist lambda$positionLost$3$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 132
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmHandler(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .locals 8
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 103
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionChanged fn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    new-instance v7, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;IIII)V

    invoke-virtual {v0, p1, p2, v7}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onRenderNodePositionChanged(JLjava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 3
    .param p1, "frameNumber"    # J

    .line 125
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionLost fn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->this$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-static {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAggregator(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$Aggregator;->onRenderNodePositionChanged(JLjava/lang/Runnable;)V

    .line 138
    return-void
.end method
