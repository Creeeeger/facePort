.class public Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;
.super Ljava/security/Provider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;
    }
.end annotation


# static fields
.field public static final KEYSTORE:Ljava/lang/String; = "KeyStore"

.field public static final KEY_GENERATOR_SUPPORTED_ALGORITHMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_DESC:Ljava/lang/String; = "Samsung KNOX-based Keystore Provider"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "KNOX"

.field public static final PROVIDER_VERSION:D = 1.0


# instance fields
.field private mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "HmacSHA384"

    const-string v6, "HmacSHA512"

    const-string v0, "AES"

    const-string v1, "HmacMD5"

    const-string v2, "HmacSHA1"

    const-string v3, "HmacSHA224"

    const-string v4, "HmacSHA256"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->KEY_GENERATOR_SUPPORTED_ALGORITHMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "KNOX"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "Samsung KNOX-based Keystore Provider"

    invoke-direct {p0, p1, v2, v3, v4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->setBundle(Landroid/os/Bundle;)V

    :cond_0
    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "KeyStore"

    const-string v3, "KNOX"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "KeyPairGenerator"

    const-string v3, "RSA"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "KeyPairGenerator"

    const-string v3, "EC"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmSecureRandom;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "SecureRandom"

    const-string v3, "SHA1PRNG"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->KEY_GENERATOR_SUPPORTED_ALGORITHMS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "KeyGenerator"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Ljava/security/Provider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    iget-object p1, p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "uniqueId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "storageType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "vendorId"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isDetachable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "reqUserVerification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isHardwareBacked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isReadOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isManageable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "enforceManagement"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "configuratorList"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isSupportChangePin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isSupportChangePinWithPassword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isSupportBiometricForUCM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isPUKSupported"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isGeneratePasswordAvailable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
