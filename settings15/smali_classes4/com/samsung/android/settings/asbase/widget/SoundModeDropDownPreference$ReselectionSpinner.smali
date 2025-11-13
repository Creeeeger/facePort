.class public final Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-direct {p0, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mUserClicked:Z

    return-void
.end method


# virtual methods
.method public final setSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-boolean v1, v0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mUserClicked:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mUserClicked:Z

    return-void
.end method
