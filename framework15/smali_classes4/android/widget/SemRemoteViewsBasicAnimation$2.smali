.class Landroid/widget/SemRemoteViewsBasicAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemRemoteViewsBasicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemRemoteViewsBasicAnimation;->animateTextSwitcher(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemRemoteViewsBasicAnimation;

.field final synthetic blacklist val$text:Ljava/lang/CharSequence;

.field final synthetic blacklist val$textView:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemRemoteViewsBasicAnimation;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemRemoteViewsBasicAnimation$2;->this$0:Landroid/widget/SemRemoteViewsBasicAnimation;

    iput-object p2, p0, Landroid/widget/SemRemoteViewsBasicAnimation$2;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Landroid/widget/SemRemoteViewsBasicAnimation$2;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SemRemoteViewsBasicAnimation$2;->val$text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
