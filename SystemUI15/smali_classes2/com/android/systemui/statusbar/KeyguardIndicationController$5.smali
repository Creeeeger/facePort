.class public final Lcom/android/systemui/statusbar/KeyguardIndicationController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iget-object v1, v1, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "KeyguardIndication"

    const-string v3, "clear messages"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearMessages()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearMessages()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->clearMessages()V

    :cond_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustAgentErrorMessage:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method public final onUnlockedChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustAgentErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
