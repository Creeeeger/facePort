.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->isNewerLatestVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->convertStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mLatestVersion:J

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->updatePackageVersion(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
