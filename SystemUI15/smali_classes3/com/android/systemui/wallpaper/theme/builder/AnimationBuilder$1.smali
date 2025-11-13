.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
