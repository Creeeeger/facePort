.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;->this$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;->this$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
