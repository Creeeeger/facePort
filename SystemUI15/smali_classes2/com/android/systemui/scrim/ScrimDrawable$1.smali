.class public final Lcom/android/systemui/scrim/ScrimDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/scrim/ScrimDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scrim/ScrimDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable$1;->this$0:Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimDrawable$1;->this$0:Lcom/android/systemui/scrim/ScrimDrawable;

    iget-object p2, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
