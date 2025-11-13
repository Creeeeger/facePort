.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "SubscreenNotificationListAdapter"

    const-string v0, "FooterViewHolder - mClearAllLayout- clear all"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->performDismissAllAnimations(Ljava/lang/Runnable;)V

    const-string p0, "from"

    const-string p1, "all"

    const-string v0, "QPN100"

    const-string v1, "QPNE0201"

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
