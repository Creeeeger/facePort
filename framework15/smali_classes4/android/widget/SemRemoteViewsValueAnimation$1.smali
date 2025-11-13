.class Landroid/widget/SemRemoteViewsValueAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemRemoteViewsValueAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemRemoteViewsValueAnimation;->provideAnimatorListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemRemoteViewsValueAnimation;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemRemoteViewsValueAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation$1;->this$0:Landroid/widget/SemRemoteViewsValueAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation$1;->this$0:Landroid/widget/SemRemoteViewsValueAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsExpired:Z

    return-void
.end method
