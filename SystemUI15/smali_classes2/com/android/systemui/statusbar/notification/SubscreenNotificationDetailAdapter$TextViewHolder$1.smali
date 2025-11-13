.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "SubscreenNotificationDetailAdapter"

    const-string v0, "Click OpenAppButton"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0, p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->startWaitState(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    const-string p0, "QPN102"

    const-string p1, "QPNE0204"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
