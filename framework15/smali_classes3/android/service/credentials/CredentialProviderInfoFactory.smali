.class public final Landroid/service/credentials/CredentialProviderInfoFactory;
.super Ljava/lang/Object;
.source "CredentialProviderInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManager"

.field private static final blacklist TAG_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field private static final blacklist TAG_CAPABILITY:Ljava/lang/String; = "capability"

.field private static final blacklist TAG_CREDENTIAL_PROVIDER:Ljava/lang/String; = "credential-provider"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/ComponentName;IZZ)Landroid/credentials/CredentialProviderInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    nop

    invoke-static {p1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->verifyProviderPermission(Landroid/content/pm/ServiceInfo;)V

    if-eqz p2, :cond_1

    invoke-static {p0, p1, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->isValidSystemProvider(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider is not a valid system provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CredentialManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->populateMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/credentials/CredentialProviderInfo$Builder;->setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/credentials/CredentialProviderInfo$Builder;->setPrimary(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo$Builder;->build()Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createForTests(Landroid/content/pm/ServiceInfo;Ljava/lang/CharSequence;ZZLjava/util/List;)Landroid/credentials/CredentialProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ServiceInfo;",
            "Ljava/lang/CharSequence;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/credentials/CredentialProviderInfo;"
        }
    .end annotation

    new-instance v0, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v0, p0}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v0, p3}, Landroid/credentials/CredentialProviderInfo$Builder;->setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;->setOverrideLabel(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/credentials/CredentialProviderInfo$Builder;->addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo$Builder;->build()Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist extractXmlMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 8

    new-instance v0, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    nop

    const-string v1, "android.credentials.provider"

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const-string v4, "CredentialManager"

    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v5, "credential-provider"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    :try_start_1
    sget-object v7, Lcom/android/internal/R$styleable;->CredentialProvider:[I

    invoke-virtual {p3, v5, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v6, v7

    nop

    invoke-static {v6, v3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/credentials/CredentialProviderInfo$Builder;->setSettingsSubtitle(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;

    nop

    const/4 v3, 0x0

    invoke-static {v6, v3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/credentials/CredentialProviderInfo$Builder;->setSettingsActivity(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    const-string v7, "Failed to get XML attr for metadata"

    invoke-static {v4, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    :try_start_4
    invoke-static {v1, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->parseXmlProviderOuterCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/credentials/CredentialProviderInfo$Builder;->addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;

    nop

    goto :goto_4

    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    nop

    throw v3

    :cond_4
    const-string v3, "Meta-data does not start with credential-provider-service tag"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    goto :goto_5

    :catch_1
    move-exception v2

    const-string v3, "Error parsing credential provider service meta-data"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object v0
.end method

.method private static blacklist getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CredentialManager"

    const-string v3, "Failed to get XML attr from afs attributes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static blacklist getAvailableSystemServiceInfos(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.credentials.system.CredentialProviderService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_1

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-wide/32 v7, 0x100000

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_2

    :cond_3
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CredentialManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static blacklist getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "CredentialManager"

    const-string v1, "context must not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServiceInfos(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    nop

    :try_start_0
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    move v7, p2

    invoke-static/range {v4 .. v9}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v5, "Non system provider was in system provider list."

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create CredentialProviderInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static blacklist getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    const/4 v1, 0x0

    new-instance v2, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;-><init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V

    nop

    invoke-static {p0, p1, v3, p3, p4}, Landroid/service/credentials/CredentialProviderInfoFactory;->getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addUserProviders(Ljava/util/List;)V

    nop

    invoke-static {p0, p1, v3, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addSystemProviders(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->getProviders()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getCredentialProviderServicesForTesting(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    const/4 v1, 0x1

    new-instance v2, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;-><init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V

    nop

    invoke-static {p0, p1, v3, p3, p4}, Landroid/service/credentials/CredentialProviderInfoFactory;->getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addUserProviders(Ljava/util/List;)V

    nop

    invoke-static {p0, p1, v3, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addSystemProviders(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->getProviders()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getCredentialManagerPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get device policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CredentialManager"

    const-string v2, "Unable to get serviceInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.credentials.CredentialProviderService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x80

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    move/from16 v4, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v13, "CredentialManager"

    if-nez v12, :cond_0

    const-string v0, "No serviceInfo found for resolveInfo, so skipping provider"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    nop

    :try_start_0
    invoke-virtual {v12}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v14, p3

    :try_start_1
    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v12}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v15, p4

    :try_start_2
    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move-object v7, v12

    move/from16 v9, p2

    invoke-static/range {v6 .. v11}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v14, p3

    :goto_1
    move-object/from16 v15, p4

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto :goto_0

    :cond_2
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    return-object v1
.end method

.method private static blacklist isSystemProviderWithValidPermission(Landroid/content/pm/ServiceInfo;Landroid/content/Context;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "CredentialManager"

    const-string v1, "Context is null in isSystemProviderWithValidPermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.permission.PROVIDE_DEFAULT_ENABLED_CREDENTIAL_SERVICE"

    invoke-static {p1, v0, v1}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isValidSystemProvider(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Z)Z
    .locals 3

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "metadata is null while reading TEST_SYSTEM_PROVIDER_META_DATA_KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CredentialManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, "android.credentials.testsystemprovider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_1
    invoke-static {p1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->isSystemProviderWithValidPermission(Landroid/content/pm/ServiceInfo;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static blacklist parseXmlProviderInnerCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "capability"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static blacklist parseXmlProviderOuterCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "capabilities"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->parseXmlProviderInnerCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static blacklist populateMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 7

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v1, p1}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "CredentialManager"

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metadata is null for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "Failed to get app resources"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resources are null for the serviceInfo being processed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {p0, p1, v0, v4}, Landroid/service/credentials/CredentialProviderInfoFactory;->extractXmlMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "Failed to get XML metadata"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private static blacklist verifyProviderPermission(Landroid/content/pm/ServiceInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    const-string v1, "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service does not require the expected permission : android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
