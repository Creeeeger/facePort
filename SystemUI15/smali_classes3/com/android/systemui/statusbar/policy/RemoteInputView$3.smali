.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$3;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$3;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$3;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsAnimatingAppearance:Z

    return-void
.end method
