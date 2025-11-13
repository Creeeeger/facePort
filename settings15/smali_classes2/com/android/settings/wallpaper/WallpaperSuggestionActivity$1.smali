.class public final Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/display/WallpaperPreferenceController;

    const-string v1, "unused key"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const-class p1, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const-string p1, "android.intent.action.MAIN"

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const-string p1, "wallpaper_type"

    iput-object p1, v1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->getKeywords()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
