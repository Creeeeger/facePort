.class public final Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->val$position:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->val$position:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    if-ne v3, v1, :cond_0

    iget-object v4, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;->mIsChecked:Z

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$RecyclerViewHolder;

    iget-object v4, v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    iget-object v5, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;

    iget-boolean v5, v5, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;->mIsChecked:Z

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;

    iget-object v4, v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;->mListItemValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mCurrentTimeout:J

    goto :goto_1

    :cond_0
    iget-object v4, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;

    iput-boolean v2, v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;->mIsChecked:Z

    :goto_1
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->mListItems:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->val$position:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;

    iget-object p1, p1, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$ScreenTimeoutList;->mListItemValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;

    int-to-long v3, p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_4

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_after_timeout_rollback"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const p1, 0x1b7741

    :goto_4
    const/16 v0, 0x1150

    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSE4435"

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->val$position:I

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v0, "SecuritySettings"

    const-string v1, "could not persist lockAfter timeout setting"

    invoke-static {v0, v1, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
