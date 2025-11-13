.class public final Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mCanceled:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;-><init>(Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;

    sget v0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;

    sget v0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider$VisibilityAnimListener;->this$0:Lcom/android/wm/shell/windowdecor/widget/WindowDecorSlider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
