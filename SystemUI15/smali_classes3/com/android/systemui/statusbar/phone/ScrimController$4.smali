.class public final Lcom/android/systemui/statusbar/phone/ScrimController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field public final mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final synthetic val$scrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAnimationEnd "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/systemui/scrim/ScrimView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "ScrimController"

    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p0, v0, :cond_3

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_3

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p1, :cond_3

    const-string p1, "PluginAODManager"

    const-string v0, "onAodTransitionEnd() in folded state"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    :cond_3
    :goto_1
    return-void
.end method
