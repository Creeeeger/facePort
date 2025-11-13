.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V

    return-void
.end method
