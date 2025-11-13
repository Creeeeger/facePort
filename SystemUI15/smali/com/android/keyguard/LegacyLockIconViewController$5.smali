.class public final Lcom/android/keyguard/LegacyLockIconViewController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/LegacyLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LegacyLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController$5;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardFadingAwayChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$5;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateKeyguardShowing()V

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateVisibility$1()V

    return-void
.end method

.method public final onKeyguardShowingChanged()V
    .locals 0

    return-void
.end method

.method public final onUnlockedChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$5;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    iget-object v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateKeyguardShowing()V

    iget-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateVisibility$1()V

    :cond_0
    return-void
.end method
