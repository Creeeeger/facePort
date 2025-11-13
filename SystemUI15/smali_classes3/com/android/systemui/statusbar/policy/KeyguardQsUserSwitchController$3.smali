.class public final Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardFadingAwayChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateKeyguardShowing(Z)V

    return-void
.end method

.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateKeyguardShowing(Z)V

    return-void
.end method

.method public final onUnlockedChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateKeyguardShowing(Z)V

    return-void
.end method
