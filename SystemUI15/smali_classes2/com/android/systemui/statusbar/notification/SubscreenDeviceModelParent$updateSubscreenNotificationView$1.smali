.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;->$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
