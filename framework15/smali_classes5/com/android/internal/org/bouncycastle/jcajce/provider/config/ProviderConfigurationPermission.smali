.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final blacklist ACCEPTABLE_EC_CURVES:I = 0x10

.field private static final blacklist ACCEPTABLE_EC_CURVES_STR:Ljava/lang/String; = "acceptableeccurves"

.field private static final blacklist ADDITIONAL_EC_PARAMETERS:I = 0x20

.field private static final blacklist ADDITIONAL_EC_PARAMETERS_STR:Ljava/lang/String; = "additionalecparameters"

.field private static final blacklist ALL:I = 0x3f

.field private static final blacklist ALL_STR:Ljava/lang/String; = "all"

.field private static final blacklist DH_DEFAULT_PARAMS:I = 0x8

.field private static final blacklist DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "dhdefaultparams"

.field private static final blacklist EC_IMPLICITLY_CA:I = 0x2

.field private static final blacklist EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final blacklist THREAD_LOCAL_DH_DEFAULT_PARAMS:I = 0x4

.field private static final blacklist THREAD_LOCAL_DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final blacklist THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final blacklist THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final blacklist actions:Ljava/lang/String;

.field private final blacklist permissionMask:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    const-string v0, "all"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method private blacklist calculateMask(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " ,"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "threadlocalecimplicitlyca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "threadlocaldhdefaultparams"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    const-string v3, "dhdefaultparams"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_3
    const-string v3, "acceptableeccurves"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_4
    const-string v3, "additionalecparameters"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    :cond_5
    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    or-int/lit8 v1, v1, 0x3f

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    return v1

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown permissions passed to mask"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
