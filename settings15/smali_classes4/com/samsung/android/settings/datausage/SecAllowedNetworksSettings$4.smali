.class public final Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

.field public final synthetic val$appList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->val$appList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->val$appList:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$4;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
