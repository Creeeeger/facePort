.class public final Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment$1;->this$0:Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;

    return-void
.end method


# virtual methods
.method public final forceDelegateRefresh()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment$1;->this$0:Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->forceUpdatePreferences()V

    return-void
.end method

.method public final setActivityResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment$1;->this$0:Lcom/samsung/android/settings/general/AutofillPickerPrivateFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method
