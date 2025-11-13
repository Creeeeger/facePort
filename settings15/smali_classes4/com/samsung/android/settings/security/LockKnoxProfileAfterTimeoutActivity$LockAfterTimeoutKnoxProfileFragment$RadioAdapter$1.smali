.class public final Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->val$position:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->val$position:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    if-ne v3, v1, :cond_0

    iget-object v4, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;->mIsChecked:Z

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$RecyclerViewHolder;

    iget-object v4, v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    iget-object v5, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;

    iget-boolean v5, v5, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;->mIsChecked:Z

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;

    iget-object v4, v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;->mListItemValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mCurrentTimeout:J

    goto :goto_1

    :cond_0
    iget-object v4, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mListItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;

    iput-boolean v2, v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;->mIsChecked:Z

    :goto_1
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mListItems:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->val$position:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;

    iget-object p1, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$ScreenTimeoutList;->mListItemValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;

    iget v1, v1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    const-string v2, "knox_screen_off_timeout"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KNOX_SCREEN_OFF_TIMEOUT timeout value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KKG::LockKnoxProfileAfterTimeoutActivity"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;

    iget p1, p1, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->refreshLockTimer(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter$1;->this$1:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->this$0:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
