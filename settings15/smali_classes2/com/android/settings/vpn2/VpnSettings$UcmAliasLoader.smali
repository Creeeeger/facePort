.class public final Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final androidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

.field public isRunning:Z

.field public final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->androidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    return-void
.end method

.method public static getAliasList(Ljava/util/Collection;[Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;Z)Ljava/util/Collection;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-nez p2, :cond_1

    iget-object v3, v3, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;->alias:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;->type:Ljava/lang/String;

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;->alias:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, [Ljava/lang/Void;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v0, "KNOX"

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "stringarrayresponse"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_8

    array-length p1, p0

    new-array p1, p1, [Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_7

    aget-object v4, p0, v2

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "VpnSettings"

    if-gtz v5, :cond_3

    :cond_2
    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_3
    :try_start_0
    const-string v5, "com.samsung.ucs.ucsservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    :try_start_1
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    const-string v7, "Failed to toCertificate"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v7, "Failed to getUCMCertificate"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-lez v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    :try_start_4
    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;

    const-string v8, "CACERT_"

    invoke-direct {v7, v8, v4}, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, p1, v3

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v3, 0x1

    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;

    const-string v8, "USRCERT_"

    invoke-direct {v7, v8, v4}, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, p1, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    move v3, v5

    goto :goto_6

    :catch_3
    move-exception v4

    move v5, v3

    move-object v3, v4

    :goto_5
    const-string v4, "Failed to convertToPemCert, "

    invoke-static {v4, v3, v6}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move-object v1, p1

    :cond_8
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, [Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->isRunning:Z

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->androidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    iget-object v1, v1, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mKeyCertAliases:Ljava/util/Collection;

    invoke-static {v1, p1, v0}, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->getAliasList(Ljava/util/Collection;[Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;Z)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->androidKeystoreAliasLoader:Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    iget-object v2, v2, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mCaCertAliases:Ljava/util/Collection;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->getAliasList(Ljava/util/Collection;[Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader$Credential;Z)Ljava/util/Collection;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v2, Lcom/android/settings/vpn2/VpnSettings;->userCert:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v1, Lcom/android/settings/vpn2/VpnSettings;->caCert:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object p1, p1, Lcom/android/settings/vpn2/VpnSettings;->mProgressMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object p1, p1, Lcom/android/settings/vpn2/VpnSettings;->mVpnCreateMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->isRunning:Z

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v1, v1, Lcom/android/settings/vpn2/VpnSettings;->mProgressMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v0, v0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCreateMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
