.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$6;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method
