.class public final Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->mUserSwitcherViewGroup:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
