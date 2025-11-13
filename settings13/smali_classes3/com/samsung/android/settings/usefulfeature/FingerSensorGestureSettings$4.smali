.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "FingerSensorGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 303
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 304
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-$$Nest$smisSamsungPayGestureVisible(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "open_samsung_pay"

    .line 305
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
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

    const-string p0, "samsung pay title and summary is not read"

    const-string p2, "FingerSensorGestureSettings"

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 266
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerSensorGestureSpay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-$$Nest$smisSamsungPayGestureVisible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    new-instance v2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v3, "open_samsung_pay"

    .line 269
    iput-object v3, v2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 270
    sget v3, Lcom/android/settings/R$string;->finger_sensor_gesture_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v1, ""

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "content://com.samsung.android.spay.common.share/global"

    .line 274
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "GET_global"

    const-string v7, "samsungwallet_finger_sensor_gesture"

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "value"

    .line 276
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v5, "title"

    .line 277
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 281
    invoke-static {p2, p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    .line 279
    invoke-static {p2, p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 285
    iput-object v1, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_2

    .line 287
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportSpayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "spaymini"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 288
    sget p0, Lcom/android/settings/R$string;->open_samsung_pay_mini_title:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 289
    invoke-static {p1, p0}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    goto :goto_2

    .line 291
    :cond_2
    sget p0, Lcom/android/settings/R$string;->open_samsung_pay_title:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 292
    invoke-static {p1, p0}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 295
    :goto_2
    iput-boolean v3, v2, Landroid/provider/SearchIndexableData;->enabled:Z

    .line 296
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 312
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportFingerPrint(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
