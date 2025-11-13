.class Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 672
    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isUsingSamsungFota(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 673
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 674
    invoke-virtual {v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 680
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 681
    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->shouldEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 682
    invoke-virtual {v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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

    const-string p0, "SoftwareUpdateSettings"

    const-string p2, "getRawDataToIndex in SoftwareUpdateSettings"

    .line 658
    invoke-static {p0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->values()[Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 662
    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getSearchIndexableRaw(Landroid/content/Context;)Lcom/android/settingslib/search/SearchIndexableRaw;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
