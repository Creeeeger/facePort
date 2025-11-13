.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;ZLandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.NOTIFICATION_HISTORY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "need_search_icon_in_action_bar"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, ":settings:show_fragment_args"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-virtual {v4, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    :cond_1
    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x1c

    invoke-static {v7, v3, v2, v8}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;->fromView$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller$Companion;Landroid/view/View;Ljava/lang/Integer;I)Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/16 v16, 0x1

    iget-object v11, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    iget-object v14, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v15, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDisplayId:I

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZ)V

    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;Landroid/app/TaskStackBuilder;)V

    const/4 v8, 0x0

    iget-object v4, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
