.class Lcom/android/settings/UserCredentialsSettings$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    return-void
.end method

.method private getCredentialsForUid(Ljava/security/KeyStore;I)Ljava/util/SortedMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "I)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    .line 347
    :try_start_0
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 348
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 350
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 351
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    new-instance v4, Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-direct {v4, v3, p2}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    .line 355
    :try_start_1
    invoke-virtual {p1, v3, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_5

    .line 362
    :try_start_2
    instance-of v5, v5, Ljavax/crypto/SecretKey;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    const-string v5, "profile_key_name_encrypt_"

    .line 368
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "profile_key_name_decrypt_"

    .line 369
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "synthetic_password_"

    .line 375
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 381
    :cond_4
    iget-object v5, v4, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 385
    iget-object v6, v4, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v7, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 386
    array-length v5, v5

    if-le v5, v2, :cond_7

    .line 387
    iget-object v5, v4, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 393
    :cond_5
    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 394
    iget-object v5, v4, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    :cond_6
    iget-object v5, v4, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_7
    :goto_2
    invoke-interface {p0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "UserCredentialsSettings"

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error tying to retrieve key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_8
    return-object p0

    :catch_1
    move-exception p0

    .line 409
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to load credential from Android Keystore."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 558
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 562
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 563
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "com.samsung.ucs.ucsservice"

    .line 527
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 529
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 531
    iget-object p1, p1, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "UserCredentialsSettings"

    const-string v1, "Failed to getUCMCertificate"

    .line 536
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getUCMCredentials()Ljava/util/SortedMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x1

    .line 417
    invoke-direct {p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCredentials(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "]"

    const-string v5, " ["

    if-eqz v2, :cond_2

    .line 421
    array-length v6, v2

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    .line 422
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 424
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v11, :cond_1

    .line 426
    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 428
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/settings/UserCredentialsSettings$Credential;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-$$Nest$sfgetKNOX_UCM()I

    move-result v10

    invoke-direct {v12, v9, v3, v10}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v9, v12, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v10, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v9, v10}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v8

    if-lez v8, :cond_0

    .line 431
    iget-object v8, v12, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v9, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    :cond_0
    iget-object v8, v12, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v9, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    .line 440
    invoke-direct {p0, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCredentials(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 442
    array-length v6, v2

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v8, v2, v7

    .line 443
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 444
    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getFriendlyNameForPlugin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 445
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v11, :cond_4

    .line 447
    invoke-direct {p0, v8}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCertificateForAlias(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 449
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/settings/UserCredentialsSettings$Credential;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->-$$Nest$sfgetKNOX_UCM()I

    move-result v10

    invoke-direct {v12, v9, v3, v10}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {v12, v1}, Lcom/android/settings/UserCredentialsSettings$Credential;->-$$Nest$fputisWifiForKnox(Lcom/android/settings/UserCredentialsSettings$Credential;Z)V

    .line 451
    iget-object v9, v12, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v10, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v9, v10}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v8

    if-lez v8, :cond_3

    .line 453
    iget-object v8, v12, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v9, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 455
    :cond_3
    iget-object v8, v12, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v9, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    return-object v0
.end method

.method private getUCMCredentials(I)[Ljava/lang/String;
    .locals 2

    .line 509
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    .line 510
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v1, "KNOX"

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    .line 511
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 515
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p1, "stringarrayresponse"

    .line 517
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "X.509"

    .line 545
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    .line 547
    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "UserCredentialsSettings"

    const-string v1, "Failed to toCertificate"

    .line 549
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 303
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    const-string p1, "AndroidKeyStore"

    .line 317
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x3e8

    .line 318
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/16 v2, 0x3f2

    .line 319
    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 322
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    .line 323
    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    if-nez v0, :cond_0

    .line 326
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 327
    new-instance p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v0, 0x66

    invoke-direct {p1, v0}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 331
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-direct {p0, v3, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Ljava/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getUCMCredentials()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_1

    .line 337
    invoke-direct {p0, v4, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Ljava/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 341
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to load credentials from Keystore."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 471
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 473
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    sget v1, Lcom/android/settings/R$string;->user_credential_none_installed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 481
    sget v1, Lcom/android/settings/R$style;->sec_credential_no_item_text_style:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 483
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 489
    :goto_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 494
    iget-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 496
    iget-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 496
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    goto :goto_2

    :cond_3
    const-string p0, "UserCredentialsSettings"

    const-string p1, "Context is null."

    .line 501
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
