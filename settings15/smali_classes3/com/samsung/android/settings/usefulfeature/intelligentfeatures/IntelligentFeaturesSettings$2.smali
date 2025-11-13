.class public final Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings;

.field public final synthetic val$pkInfo:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings;Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings$2;->val$pkInfo:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings$2;->val$pkInfo:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->isSupportedAI()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/packageInfo/PackageInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/settings/usefulfeature/intelligentfeatures/IntelligentFeaturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ActivityNotFoundException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntelligentFeaturesSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
