.class public final Landroidx/appcompat/widget/SwitchCompat$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic val$newCheckedState:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat$2;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    iput-boolean p2, p0, Landroidx/appcompat/widget/SwitchCompat$2;->val$newCheckedState:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat$2;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, v0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat$2;->val$newCheckedState:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat$2;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;

    :cond_1
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
