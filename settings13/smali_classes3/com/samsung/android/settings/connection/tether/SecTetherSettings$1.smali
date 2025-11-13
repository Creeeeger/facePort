.class Lcom/samsung/android/settings/connection/tether/SecTetherSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 323
    const-class p2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 324
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->sec_tether_prefs:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_1

    .line 325
    :cond_1
    :goto_0
    sget p1, Lcom/android/settings/R$xml;->sec_tether_prefs_for_jpn:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 329
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 335
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/connection/tether/SecTetherPreferenceController;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTetherPreferenceController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 336
    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/settings/connection/tether/SecTabTetherPreferenceController;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecTabTetherPreferenceController;-><init>(Landroid/content/Context;)V

    .line 340
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method
