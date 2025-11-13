.class public final Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    return-void
.end method
