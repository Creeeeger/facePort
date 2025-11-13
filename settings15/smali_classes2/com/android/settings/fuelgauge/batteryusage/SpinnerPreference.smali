.class public Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;
    }
.end annotation


# instance fields
.field mItems:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mSavedSpinnerPosition:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSpinner:Landroid/widget/Spinner;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d052e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0ec6

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SpinnerAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mItems:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSavedSpinnerPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    instance-of v1, p1, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;

    if-nez v1, :cond_1

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v4, p1, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;->mSpinnerPosition:I

    iput v4, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSavedSpinnerPosition:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onRestoreInstanceState() spinnerPosition="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;->mSpinnerPosition:I

    const-string v0, "SpinnerPreference"

    invoke-static {p0, p1, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState() spinnerPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpinnerPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/SpinnerPreference$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method
