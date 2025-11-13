.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1$1$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaAnimatedMainView(JLandroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    return-void
.end method
