.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $goKeyguardFirst:Z

.field public final synthetic $intent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/app/PendingIntent;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->$goKeyguardFirst:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->$goKeyguardFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$6;->$intent:Landroid/app/PendingIntent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x1fc

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method
