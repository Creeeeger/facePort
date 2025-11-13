.class public Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;
.super Ljava/lang/Object;
.source "UcmKeyStoreHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreHelper"


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist addUcmProvider()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->updateUcmProvider(Z)V

    .line 17
    return-void
.end method

.method public static blacklist updateUcmProvider(Z)V
    .locals 11
    .param p0, "isAdd"    # Z

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "existUcmProv":Z
    const/4 v1, -0x1

    .line 23
    .local v1, "bcProviderIndex":I
    const/4 v2, -0x1

    .line 24
    .local v2, "index":I
    :try_start_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 25
    .local v3, "list":[Ljava/security/Provider;
    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    const-string v7, "UcmKeystore"

    if-ge v5, v4, :cond_3

    :try_start_1
    aget-object v8, v3, v5

    .line 26
    .local v8, "provider":Ljava/security/Provider;
    add-int/lit8 v2, v2, 0x1

    .line 27
    if-nez v8, :cond_0

    .line 28
    goto :goto_1

    .line 31
    :cond_0
    const-string v9, "BC"

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 32
    move v1, v2

    .line 33
    if-eqz v0, :cond_1

    .line 34
    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 39
    const/4 v0, 0x1

    .line 40
    if-eq v1, v6, :cond_2

    .line 41
    goto :goto_2

    .line 25
    .end local v8    # "provider":Ljava/security/Provider;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    :cond_3
    :goto_2
    if-nez v0, :cond_5

    if-eqz p0, :cond_5

    .line 47
    new-instance v4, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;

    invoke-direct {v4}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;-><init>()V

    .line 48
    .local v4, "ucmProvier":Ljava/security/Provider;
    if-eq v1, v6, :cond_4

    .line 49
    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    goto :goto_3

    .line 51
    :cond_4
    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_3

    .line 53
    .end local v4    # "ucmProvier":Ljava/security/Provider;
    :cond_5
    if-eqz v0, :cond_6

    if-nez p0, :cond_6

    .line 54
    invoke-static {v7}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 53
    :cond_6
    :goto_3
    nop

    .line 59
    .end local v0    # "existUcmProv":Z
    .end local v1    # "bcProviderIndex":I
    .end local v2    # "index":I
    .end local v3    # "list":[Ljava/security/Provider;
    :goto_4
    goto :goto_5

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UcmKeyStoreHelper"

    const-string v2, "Unable to add KnoxUcmKeyStoreProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method
