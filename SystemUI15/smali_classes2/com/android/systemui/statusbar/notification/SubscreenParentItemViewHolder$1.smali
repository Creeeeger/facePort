.class public final Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
