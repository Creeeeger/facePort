.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " topPopupAnimationListener - onAnimationEnd , mNotiPopupView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", popupViewNotiTemplate : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S.S.N."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

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
