.class public final Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

.field public final synthetic val$profileSpinnerAdapter:Lcom/android/settings/dashboard/profileselector/UserAdapter;

.field public final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/settings/print/ProfileSettingsPreferenceFragment;Lcom/android/settings/dashboard/profileselector/UserAdapter;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$profileSpinnerAdapter:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    iput-object p3, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$spinner:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$profileSpinnerAdapter:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    if-ltz p3, :cond_1

    iget-object p2, p1, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p4, 0x8000

    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$spinner:Landroid/widget/Spinner;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
