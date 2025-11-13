.class public final Lcom/android/wm/shell/common/DismissView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/DismissView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DismissView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView$2;->this$0:Lcom/android/wm/shell/common/DismissView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    sget p1, Lcom/android/wm/shell/common/DismissView;->$r8$clinit:I

    const-string p1, "DismissView"

    const-string v0, "hide-Run callback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/common/DismissView$2;->this$0:Lcom/android/wm/shell/common/DismissView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissView$2;->this$0:Lcom/android/wm/shell/common/DismissView;

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissView;->mHideAnimationEnd:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
