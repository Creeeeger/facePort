.class public final Lcom/android/settings/print/PrintServiceSettingsFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v0, v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    iput v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView$1()V

    return-void
.end method
