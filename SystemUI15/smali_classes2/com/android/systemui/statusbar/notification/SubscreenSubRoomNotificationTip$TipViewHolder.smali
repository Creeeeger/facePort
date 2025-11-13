.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0b34

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mSettingsBtn:Landroid/widget/TextView;

    const v0, 0x7f0a0391

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mDismissBtn:Landroid/widget/TextView;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mSettingsBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->mDismissBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
