.class public final synthetic Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

.field public final synthetic f$1:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    iput-object p2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;->f$1:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda5;->f$1:Landroidx/preference/PreferenceScreen;

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    sget-object v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
