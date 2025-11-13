.class Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static blacklist BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_DH_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile blacklist acceptableNamedCurves:Ljava/util/Set;

.field private volatile blacklist additionalECParameters:Ljava/util/Map;

.field private volatile blacklist dhDefaultParams:Ljava/lang/Object;

.field private blacklist dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile blacklist ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

.field private blacklist ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string/jumbo v1, "threadLocalEcImplicitlyCa"

    const-string v2, "BC"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "ecImplicitlyCa"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string/jumbo v1, "threadLocalDhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "DhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "acceptableEcCurves"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "additionalEcParameters"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist getAcceptableNamedCurves()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdditionalECParameters()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    :cond_0
    instance-of v1, v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    goto :goto_1

    :cond_2
    instance-of v1, v0, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, [Ljavax/crypto/spec/DHParameterSpec;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-ne v3, p1, :cond_3

    aget-object v3, v1, v2

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v2

    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
    .locals 5

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v1
.end method

.method blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const-string/jumbo v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    :goto_1
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2
    goto/16 :goto_7

    :cond_4
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_5

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_5
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v1, :cond_7

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, p2

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    goto/16 :goto_7

    :cond_7
    :goto_3
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_9

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_9
    instance-of v1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_b

    instance-of v1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_b

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "not a valid DHParameterSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_4
    move-object v1, p2

    if-nez v1, :cond_c

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_5
    goto :goto_7

    :cond_d
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_e

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_e
    instance-of v1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_10

    instance-of v1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_10

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_6
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    goto :goto_7

    :cond_11
    const-string v1, "acceptableEcCurves"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v0, :cond_12

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_12
    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    goto :goto_7

    :cond_13
    const-string v1, "additionalEcParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_14
    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    :cond_15
    :goto_7
    return-void
.end method
