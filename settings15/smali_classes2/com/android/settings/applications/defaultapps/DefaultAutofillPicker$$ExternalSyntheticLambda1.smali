.class public final synthetic Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method
