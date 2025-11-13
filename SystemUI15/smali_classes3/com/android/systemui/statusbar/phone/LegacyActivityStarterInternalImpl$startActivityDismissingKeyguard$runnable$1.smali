.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $animate:Z

.field public final synthetic $callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field public final synthetic $disallowEnterPictureInPictureWhileLaunching:Z

.field public final synthetic $flags:I

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $userHandle:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLcom/android/systemui/plugins/ActivityStarter$Callback;ZLandroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$flags:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$animController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$animate:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$disallowEnterPictureInPictureWhileLaunching:Z

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->assistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x14000000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$intent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$flags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v0, -0x60

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$animController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$animate:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$disallowEnterPictureInPictureWhileLaunching:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$userHandle:Landroid/os/UserHandle;

    move-object v1, v11

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;ZLandroid/content/Intent;[ILandroid/os/UserHandle;)V

    sget-object v1, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    const/4 v6, 0x0

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_1
    return-void
.end method
