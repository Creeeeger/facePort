.class public Lcom/samsung/android/sdk/scs/ai/asr/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final sFuncGetLocales:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final errorCode:I

.field private final isAvailable:Z

.field private storeLinkIntent:Landroid/content/Intent;

.field private final targetPackage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$37JOv-zNu8zKYJ7YzeyyRcX09Lo(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocalesFromCP(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jgakf43L10Q7a3UIoqyYUjQHWf8(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocalesFromCP$2(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hrVnj8BpdTaP_cmLb3mzzoFg3ro(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$callContentProvider$4(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nBdoCVH5HBJUfd53rmfm1X4g4m4(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getURI$0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$obvUObZ5T0MOWZp0DlDihkguu98(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocalesFromCP$1(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zgs3ggYMXDclChioANN5rt3_cu0(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocalesFromCP$3(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->sFuncGetLocales:Ljava/util/function/Function;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "is_available"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "error_code"

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "resource_package_name"

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;-><init>(ZILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ZILjava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isAvailable:Z

    .line 84
    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->errorCode:I

    .line 85
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->targetPackage:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 87
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "samsungapps://ProductDetail/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    const-string/jumbo p2, "type"

    const-string p3, "cover"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    const p1, 0x14000020

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "Environment"

    .line 216
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call cp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 218
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda1;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 220
    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to call cp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/util/Locale;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/Environment;
    .locals 3

    const-string v0, "FEATURE_SPEECH_RECOGNITION"

    .line 59
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    new-instance p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;-><init>(ZILjava/lang/String;)V

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->getTypeInt()I

    move-result p2

    const-string v2, "connection_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "locale"

    .line 64
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "check_availability"

    .line 65
    invoke-static {p0, p1, v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 67
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private static getSupportedLocalesFromCP(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    const-string v0, "Environment"

    .line 193
    :try_start_0
    const-class v1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda5;-><init>()V

    .line 198
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda6;-><init>()V

    .line 199
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda7;-><init>()V

    .line 200
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 201
    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    const-string v1, "Failed to get locale from cp"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error to get locales from cp "

    .line 208
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocalesFromRes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportedLocalesFromRes(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    const-string v0, "Environment"

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.sec.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "network_supported_locales"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 169
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "local_supported_locales"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 172
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda8;-><init>()V

    .line 173
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda8;-><init>()V

    .line 176
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 178
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 179
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-interface {v2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Failed to get locales from resources "

    .line 185
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 151
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "content://"

    if-nez p0, :cond_0

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.samsung.android.scs.ai.speech2"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Environment"

    const-string v1, "System permission doesn\'t have granted."

    .line 155
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.samsung.android.scs.ai.speech"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$callContentProvider$4(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 0

    .line 219
    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocalesFromCP$1(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;
    .locals 2

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->getTypeInt()I

    move-result p0

    const-string v1, "connection_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static synthetic lambda$getSupportedLocalesFromCP$2(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "get_locale_list"

    const/4 v1, 0x0

    .line 197
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocalesFromCP$3(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "locale_list"

    .line 198
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getURI$0(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "com.samsung.android.scs.ai.asr.permission.SYSTEM_SPEECH_RECOGNITION_SERVICE_CONFIG_PROVIDER"

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->errorCode:I

    return p0
.end method

.method public getStoreLinkAction()Landroid/content/Intent;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getTargetResourcePackageName()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Availability{isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storeLinkIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
