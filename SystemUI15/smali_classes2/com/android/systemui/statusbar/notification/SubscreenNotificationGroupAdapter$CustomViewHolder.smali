.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContentView:Landroid/widget/FrameLayout;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    const v0, 0x7f0a032c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
