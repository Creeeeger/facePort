.class Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ActiveKeySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 374
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasDedicatedAppEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "xcover_key_dedicated_app"

    .line 375
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

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

    .line 363
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    sget p1, Lcom/android/settings/R$xml;->sec_xcoverkey_gridview_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_0

    .line 367
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->sec_activekey_gridview_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 369
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 381
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result p0

    return p0
.end method
