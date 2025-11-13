.class public final synthetic Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$1:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$1:Landroidx/preference/PreferenceViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->invalidate(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/SecVideoBrightnessHorizontalRadioPreference;->mCurrentValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
