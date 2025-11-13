.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder$2;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->performDismissAllAnimations(Ljava/lang/Runnable;)V

    const-string p0, "from"

    const-string p1, "group"

    const-string v0, "QPN101"

    const-string v1, "QPNE0201"

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
