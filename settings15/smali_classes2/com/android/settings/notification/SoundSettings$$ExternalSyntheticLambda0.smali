.class public final synthetic Lcom/android/settings/notification/SoundSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/SoundSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceDataChanged(Landroidx/preference/ListPreference;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/SoundSettings;

    iget-object p0, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setPreferenceData(Landroidx/preference/ListPreference;)V

    iget-object p0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
