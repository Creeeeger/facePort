.class public final synthetic Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/dream/DreamSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dream/DreamSettings;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dream/DreamSettings;

    iput-boolean p2, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dream/DreamSettings;

    iget-boolean p0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    sget-object v1, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dream_main_settings_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "dream_home_controls_toggle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dream/DreamSettings;

    iget-boolean p0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Ljava/util/List;

    sget-object v1, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dream/DreamSettings;ZI)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
