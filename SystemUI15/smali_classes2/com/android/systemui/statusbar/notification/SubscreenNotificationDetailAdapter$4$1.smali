.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;

.field public final synthetic val$controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;->val$controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;->val$controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
