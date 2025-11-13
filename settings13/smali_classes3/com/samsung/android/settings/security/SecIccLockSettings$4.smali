.class Lcom/samsung/android/settings/security/SecIccLockSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SecIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    sget-boolean p2, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz p2, :cond_0

    .line 216
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "sim_toggle"

    .line 217
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 218
    sget v0, Lcom/android/settings/R$string;->sim_pin_toggle_kor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 219
    sget v0, Lcom/android/settings/R$string;->other_security_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 220
    const-class v1, Lcom/android/settings/security/SecurityAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 221
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v1, "sim_pin"

    .line 224
    iput-object v1, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 225
    sget v1, Lcom/android/settings/R$string;->sim_pin_change_kor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 227
    const-class p1, Lcom/android/settings/security/SecurityAdvancedSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 228
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 208
    new-instance p0, Lcom/android/settings/security/SimLockPreferenceController;

    const-string v0, "sim_lock_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/security/SimLockPreferenceController;->getAvailabilityStatus()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
