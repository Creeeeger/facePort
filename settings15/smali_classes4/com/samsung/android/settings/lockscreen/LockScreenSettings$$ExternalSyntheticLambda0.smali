.class public final synthetic Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenTrustAgentPreferenceController;->updatePreference()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/SecureLockPreferenceController;->updatePreference()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->updatePreference()V

    return-void
.end method
