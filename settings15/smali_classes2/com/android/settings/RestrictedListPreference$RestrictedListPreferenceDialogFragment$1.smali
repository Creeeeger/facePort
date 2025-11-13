.class public final Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    if-ltz p2, :cond_7

    iget-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    iget-object v4, v3, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_3
    :goto_0
    const/4 v0, -0x1

    if-eqz v2, :cond_6

    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    iget-object p2, p2, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iget-object p2, p2, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-object v1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    iget v3, v1, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    if-ne v3, v0, :cond_5

    invoke-virtual {v1}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/RestrictedListPreference;

    iget-object v4, v3, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    if-nez v4, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    :goto_1
    iput v3, v1, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    :cond_5
    iget v1, v1, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object p2, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, v2, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    iput p2, v1, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    iput p2, v1, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    :goto_2
    iget-object p2, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_7
    :goto_3
    return-void
.end method
