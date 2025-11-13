.class public final Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mUserClicked:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return v0

    :cond_1
    :goto_0
    sget p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->$r8$clinit:I

    const-string p0, "SoundModeDropDownPreference"

    const-string/jumbo p1, "onClick(): spinner is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
