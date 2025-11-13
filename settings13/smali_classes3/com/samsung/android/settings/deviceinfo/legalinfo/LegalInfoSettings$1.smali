.class Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LegalInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/LegalInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
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

    .line 67
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 69
    sget v0, Lcom/android/settings/R$string;->legal_information:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LICENSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "license"

    .line 77
    iput-object v3, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 78
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 79
    iput-object p2, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 80
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.TERMS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "terms"

    .line 87
    iput-object v3, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 88
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 89
    iput-object p2, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.SAMSUNG_KNOX_PRIVACY_NOTICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "knox_privacy_notice"

    .line 98
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 99
    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 100
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
