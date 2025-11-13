.class public abstract Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FRAGMENT_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge;->FRAGMENT_MAP:Ljava/util/Map;

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectAccountFragment;

    const-class v3, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;

    const-class v3, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures;

    const-class v3, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectManageApplications;

    const-class v3, Lcom/android/settings/location/LocationServices;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectLocationServicesFragment;

    const-class v3, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    const-class v3, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectKeyboardFragment;

    const-class v3, Lcom/android/settings/inputmethod/NewKeyboardLayoutEnabledLocalesFragment;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectPhysicalKeyboardFragment;

    const-class v3, Lcom/samsung/android/settings/general/AutofillPicker;

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/dashboard/profileselector/ProfileFragmentBridge$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectAutofillFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
