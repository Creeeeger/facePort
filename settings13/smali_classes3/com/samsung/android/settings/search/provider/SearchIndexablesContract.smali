.class Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.super Ljava/lang/Object;
.source "SearchIndexablesContract.java"


# static fields
.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final SITE_MAP_COLUMNS:[Ljava/lang/String;

.field public static final SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "rank"

    const-string v1, "xmlResId"

    const-string v2, "className"

    const-string v3, "iconResId"

    const-string v4, "intentAction"

    const-string v5, "intentTargetPackage"

    const-string v6, "intentTargetClass"

    .line 111
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    const-string v1, "rank"

    const-string v2, "title"

    const-string v3, "summaryOn"

    const-string v4, "summaryOff"

    const-string v5, "entries"

    const-string v6, "keywords"

    const-string v7, "screenTitle"

    const-string v8, "className"

    const-string v9, "iconResId"

    const-string v10, "intentAction"

    const-string v11, "intentTargetPackage"

    const-string v12, "intentTargetClass"

    const-string v13, "key"

    const-string v14, "user_id"

    const-string v15, "payload_type"

    const-string v16, "payload"

    .line 135
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    const-string v0, "parent_class"

    const-string v1, "parent_title"

    const-string v2, "child_class"

    const-string v3, "child_title"

    .line 159
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    const-string v0, "key"

    .line 195
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    const-string v1, "slice_uri"

    .line 223
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

    return-void
.end method
