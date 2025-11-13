.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $useHistory$inlined:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;->$useHistory$inlined:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;->$useHistory$inlined:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
