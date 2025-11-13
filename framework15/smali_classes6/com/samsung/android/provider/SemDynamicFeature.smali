.class public final Lcom/samsung/android/provider/SemDynamicFeature;
.super Ljava/lang/Object;
.source "SemDynamicFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    }
.end annotation


# static fields
.field private static blacklist ALLOWED_COUNTRY_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FORCE_ENABLE:Ljava/lang/String; = "persist.sys.df.system.FORCE_ENABLE"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "dynamic_feature"

.field private static final blacklist TAG:Ljava/lang/String; = "SemDynamicFeature"

.field private static blacklist dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

.field private static blacklist sInit:Z

.field private static blacklist sSuitable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdfManager()Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputdfManager(Lcom/samsung/android/provider/DynamicFeatureManager;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/provider/SemDynamicFeature;->getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sSuitable:Z

    sput-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sInit:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "KR"

    const-string v2, "KOREA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->ALLOWED_COUNTRY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist getProperties(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/provider/SemDynamicFeature;->getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    sget-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    const-string v1, "SemDynamicFeature"

    if-nez v0, :cond_0

    const-string v0, "Failed to get dfManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/provider/DynamicFeatureManager;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Remote Exception"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static blacklist getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/provider/Feature;
    .locals 2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/provider/SemDynamicFeature;->getProperties(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;->getFeature(Ljava/lang/String;)Lcom/samsung/android/provider/Feature;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getService(Landroid/content/Context;)Lcom/samsung/android/provider/DynamicFeatureManager;
    .locals 4

    const-string v0, "SemDynamicFeature"

    sget-object v1, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "dynamic_feature"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/provider/DynamicFeatureManager;

    sput-object v1, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dfManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dfManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/samsung/android/provider/SemDynamicFeature;->dfManager:Lcom/samsung/android/provider/DynamicFeatureManager;

    return-object v0
.end method

.method private static blacklist isAllowedCSCCountry()Z
    .locals 7

    const-string v0, "SemDynamicFeature"

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "ro.csc.country_code"

    :try_start_0
    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/samsung/android/provider/SemDynamicFeature;->ALLOWED_COUNTRY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    :cond_0
    if-nez v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locale is not allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllowedCountry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private static blacklist isBetaBinaryType()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "C"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist isForceEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "persist.sys.df.system.FORCE_ENABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForceEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemDynamicFeature"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static blacklist isSuitable()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sSuitable:Z

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isBetaBinaryType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isAllowedCSCCountry()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isForceEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isTestBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sSuitable:Z

    sput-boolean v1, Lcom/samsung/android/provider/SemDynamicFeature;->sInit:Z

    sget-boolean v0, Lcom/samsung/android/provider/SemDynamicFeature;->sSuitable:Z

    return v0
.end method

.method private static blacklist isTestBinary()Z
    .locals 6

    const-string v0, "SemDynamicFeature"

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    const-string v3, "ro.build.type"

    const-string v4, "UNKNOWN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "userdebug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_2

    const-string v4, "This is a test binary "

    goto :goto_2

    :cond_2
    const-string v4, "This is not a test binary "

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to read binary type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v1
.end method
