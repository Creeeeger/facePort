.class public final Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1, p2}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    iget-object p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CustomListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CustomListPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p2

    check-cast p2, Lcom/android/settings/CustomListPreference;

    iget v0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget-object p2, p2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    aget-object p2, p2, v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
