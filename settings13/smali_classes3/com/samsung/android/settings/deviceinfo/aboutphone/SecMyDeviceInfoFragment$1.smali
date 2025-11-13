.class Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecMyDeviceInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 114
    invoke-static {p1, p0, p0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
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

    .line 119
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 122
    sget v0, Lcom/android/settings/R$string;->edit_device_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 123
    sget v0, Lcom/android/settings/R$string;->about_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "edit_device_name"

    .line 124
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 125
    sget v0, Lcom/android/settings/R$string;->keywords_edit_device_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 126
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
