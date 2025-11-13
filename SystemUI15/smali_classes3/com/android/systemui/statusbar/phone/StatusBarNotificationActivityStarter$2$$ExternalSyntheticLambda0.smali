.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v5, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->getAnimatorController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;

    move-result-object v6

    iget-object v9, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v12, 0x1

    iget-object v7, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iget-object v8, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    iget-object v10, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v11, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDisplayId:I

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZ)V

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;Landroid/content/Intent;I)V

    const/4 v6, 0x0

    iget-object v2, v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
