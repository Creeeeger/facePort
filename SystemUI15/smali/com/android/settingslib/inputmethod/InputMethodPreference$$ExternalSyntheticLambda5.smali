.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

.field public final synthetic f$1:Landroid/widget/CompoundButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;->f$1:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda5;->f$1:Landroid/widget/CompoundButton;

    sget v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, p1, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    xor-int/2addr v3, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
