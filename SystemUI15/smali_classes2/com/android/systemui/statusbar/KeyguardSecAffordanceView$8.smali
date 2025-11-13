.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAlphaAnimator:Landroid/animation/Animator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p1

    if-nez p1, :cond_0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset(Z)V

    :cond_0
    return-void
.end method
