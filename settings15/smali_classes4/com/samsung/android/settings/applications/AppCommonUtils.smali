.class public abstract Lcom/samsung/android/settings/applications/AppCommonUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_CLASS_NAME_LIST:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "com.android.settings.intelligence.search.SearchActivity"

    const-string v2, "com.samsung.android.settings.intelligence.search.DeviceSearchTrampoline"

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/applications/AppCommonUtils;->SEARCH_CLASS_NAME_LIST:Ljava/util/Set;

    return-void
.end method

.method public static getOverlayTitle()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_OVERLAY_WINDOW_TITLE_BY_VZW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f14262d

    return v0

    :cond_0
    const v0, 0x7f14262c

    return v0
.end method

.method public static getWriteSettingsTitle()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_APPS_WRITE_SETTING_TITLE_BY_VZW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1428d8

    return v0

    :cond_0
    const v0, 0x7f1428d7

    return v0
.end method
