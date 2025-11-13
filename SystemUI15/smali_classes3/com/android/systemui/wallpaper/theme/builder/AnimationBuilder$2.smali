.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field public final synthetic val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-wide v2, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    :cond_2
    iget p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;I)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method
