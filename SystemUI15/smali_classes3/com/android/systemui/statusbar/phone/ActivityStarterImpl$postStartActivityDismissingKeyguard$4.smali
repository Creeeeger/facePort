.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/content/Intent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;->$animationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;->$intent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$4;->$animationController:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x1d8

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method
