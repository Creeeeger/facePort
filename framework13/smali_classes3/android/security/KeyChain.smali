.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$KeyChainConnection;,
        Landroid/security/KeyChain$AliasResponse;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final greylist-max-o ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final greylist-max-o ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final whitelist ACTION_KEYCHAIN_CHANGED:Ljava/lang/String; = "android.security.action.KEYCHAIN_CHANGED"

.field public static final whitelist ACTION_KEY_ACCESS_CHANGED:Ljava/lang/String; = "android.security.action.KEY_ACCESS_CHANGED"

.field public static final whitelist ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field public static final whitelist ACTION_TRUST_STORE_CHANGED:Ljava/lang/String; = "android.security.action.TRUST_STORE_CHANGED"

.field private static final blacklist ANDROID_SOURCE:Ljava/lang/String; = "android"

.field private static final greylist-max-o CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final greylist-max-o EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final blacklist EXTRA_AUTHENTICATION_POLICY:Ljava/lang/String; = "android.security.extra.AUTHENTICATION_POLICY"

.field public static final whitelist EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final blacklist EXTRA_ISSUERS:Ljava/lang/String; = "issuers"

.field public static final whitelist EXTRA_KEY_ACCESSIBLE:Ljava/lang/String; = "android.security.extra.KEY_ACCESSIBLE"

.field public static final whitelist EXTRA_KEY_ALIAS:Ljava/lang/String; = "android.security.extra.KEY_ALIAS"

.field public static final blacklist EXTRA_KEY_TYPES:Ljava/lang/String; = "key_types"

.field public static final whitelist EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final whitelist EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final greylist-max-o EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final greylist-max-o EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final greylist-max-o EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final blacklist GRANT_ALIAS_PREFIX:Ljava/lang/String; = "ks2_keychain_grant_id:"

.field private static final greylist-max-o KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"

.field public static final whitelist KEY_ALIAS_SELECTION_DENIED:Ljava/lang/String; = "android:alias-selection-denied"

.field public static final greylist-max-o KEY_ATTESTATION_CANNOT_ATTEST_IDS:I = 0x3

.field public static final greylist-max-o KEY_ATTESTATION_CANNOT_COLLECT_DATA:I = 0x2

.field public static final greylist-max-o KEY_ATTESTATION_FAILURE:I = 0x4

.field public static final greylist-max-o KEY_ATTESTATION_MISSING_CHALLENGE:I = 0x1

.field public static final greylist-max-o KEY_ATTESTATION_SUCCESS:I = 0x0

.field public static final greylist-max-o KEY_GEN_FAILURE:I = 0x7

.field public static final greylist-max-o KEY_GEN_INVALID_ALGORITHM_PARAMETERS:I = 0x4

.field public static final greylist-max-o KEY_GEN_MISSING_ALIAS:I = 0x1

.field public static final greylist-max-o KEY_GEN_NO_KEYSTORE_PROVIDER:I = 0x5

.field public static final greylist-max-o KEY_GEN_NO_SUCH_ALGORITHM:I = 0x3

.field public static final blacklist KEY_GEN_STRONGBOX_UNAVAILABLE:I = 0x6

.field public static final greylist-max-o KEY_GEN_SUCCESS:I = 0x0

.field public static final greylist-max-o KEY_GEN_SUPERFLUOUS_ATTESTATION_CHALLENGE:I = 0x2

.field public static final blacklist LOG:Ljava/lang/String; = "KeyChain"

.field private static final blacklist SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final blacklist UCM_KEYCHAIN_SCHEME:Ljava/lang/String; = "ucmkeychain"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1056
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1132
    if-eqz p0, :cond_6

    .line 1135
    if-nez p1, :cond_0

    .line 1136
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 1138
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1142
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1143
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1144
    .local v2, "keyChainService":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    invoke-direct {v3, v2, v0}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 1162
    .local v3, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Landroid/security/IKeyChainService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    .line 1163
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v11

    .line 1164
    .local v11, "comp":Landroid/content/ComponentName;
    if-eqz v11, :cond_4

    .line 1167
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1169
    if-eqz p1, :cond_1

    .line 1170
    const/4 v7, 0x1

    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    .local v1, "bindSucceed":Z
    goto :goto_0

    .line 1173
    .end local v1    # "bindSucceed":Z
    :cond_1
    invoke-virtual {p0, v10, v3, v1, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 1176
    .restart local v1    # "bindSucceed":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 1180
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1181
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/IKeyChainService;

    .line 1182
    .local v4, "service":Landroid/security/IKeyChainService;
    if-eqz v4, :cond_2

    .line 1183
    new-instance v5, Landroid/security/KeyChain$KeyChainConnection;

    invoke-direct {v5, p0, v3, v4}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-object v5

    .line 1185
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1186
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "KeyChainService died while binding"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1177
    .end local v4    # "service":Landroid/security/IKeyChainService;
    :cond_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1178
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "could not bind to KeyChainService"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1165
    .end local v1    # "bindSucceed":Z
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v4, "could not resolve KeyChainService"

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1139
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "keyChainService":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/security/IKeyChainService;>;"
    .end local v3    # "keyChainServiceConnection":Landroid/content/ServiceConnection;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "comp":Landroid/content/ComponentName;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User must be unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1070
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .line 582
    if-eqz p0, :cond_3

    .line 585
    if-eqz p1, :cond_2

    .line 588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    new-instance v1, Landroid/security/KeyChain$AliasResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$AliasResponse-IA;)V

    const-string/jumbo v2, "response"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 591
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    const-string v1, "alias"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string/jumbo v1, "key_types"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v1, "issuersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 596
    array-length v3, p3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p3, v4

    .line 602
    .local v5, "issuer":Ljava/security/Principal;
    instance-of v6, v5, Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_0

    .line 609
    move-object v6, v5

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v5    # "issuer":Ljava/security/Principal;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 603
    .restart local v5    # "issuer":Ljava/security/Principal;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 605
    invoke-interface {v5}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    .line 603
    const-string v2, "Issuer %s is of type %s, not X500Principal"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 612
    .end local v5    # "issuer":Ljava/security/Principal;
    :cond_1
    const-string/jumbo v3, "issuers"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 614
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "sender"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 617
    return-void

    .line 586
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "issuersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "response == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_1

    .line 512
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    const/4 v3, -0x1

    if-eq p5, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 516
    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public static whitelist createInstallIntent()Landroid/content/Intent;
    .locals 3

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.certinstaller"

    const-string v2, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    return-object v0
.end method

.method public static whitelist createManageCredentialsIntent(Landroid/security/AppUriAuthenticationPolicy;)Landroid/content/Intent;
    .locals 3
    .param p0, "policy"    # Landroid/security/AppUriAuthenticationPolicy;

    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.MANAGE_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, ".security.RequestManageCredentials"

    invoke-static {v1, v2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    const-string v1, "android.security.extra.AUTHENTICATION_POLICY"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 461
    return-object v0
.end method

.method private static greylist-max-o ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1191
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1192
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1196
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 875
    if-eqz p1, :cond_8

    .line 880
    invoke-static {p1}, Landroid/security/KeyChain;->isUcmKeyChainUriAndProvider(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 881
    invoke-static {p1}, Landroid/security/KeyChain;->isAndroidProvider(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "KeyChain"

    if-eqz v0, :cond_0

    .line 882
    invoke-static {p1}, Landroid/security/KeyChain;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "originalAlias":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider is ANDROID_SOURCE, flow default sequence with alias : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    move-object p1, v0

    .line 885
    .end local v0    # "originalAlias":Ljava/lang/String;
    goto :goto_0

    .line 886
    :cond_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 887
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_2

    .line 889
    :try_start_0
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->ucmGetCertificateChain(Ljava/lang/String;)[B

    move-result-object v3

    .line 890
    .local v3, "certificateBytes":[B
    if-nez v3, :cond_1

    .line 891
    return-object v1

    .line 893
    :cond_1
    new-instance v4, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 894
    .local v4, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    nop

    .line 895
    invoke-static {v3}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v5

    .line 896
    .local v5, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 899
    .end local v3    # "certificateBytes":[B
    .end local v4    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v5    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v3

    .line 900
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 898
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Landroid/security/KeyChainException;

    invoke-direct {v2, v1}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 909
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 910
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 911
    .local v2, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 912
    .local v3, "certificateBytes":[B
    if-nez v3, :cond_4

    .line 913
    nop

    .line 916
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 913
    :cond_3
    return-object v1

    .line 915
    :cond_4
    :try_start_4
    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 916
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .local v1, "certChainBytes":[B
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 921
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_5
    nop

    .line 924
    :try_start_6
    invoke-static {v3}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 927
    .local v0, "leafCert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_6

    array-length v2, v1

    if-eqz v2, :cond_6

    .line 928
    invoke-static {v1}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    move-result-object v2

    .line 929
    .local v2, "chain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 930
    .local v4, "fullChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 932
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    return-object v5

    .line 944
    .end local v2    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "fullChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_6
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 945
    .local v2, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v2, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 946
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    return-object v5

    .line 948
    .end local v0    # "leafCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_2
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/security/KeyChainException;

    invoke-direct {v2, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 909
    .end local v1    # "certChainBytes":[B
    .end local v3    # "certificateBytes":[B
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "alias":Ljava/lang/String;
    :cond_7
    :goto_1
    throw v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 918
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "alias":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 916
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getCredentialManagementAppPolicy(Landroid/content/Context;)Landroid/security/AppUriAuthenticationPolicy;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "policy":Landroid/security/AppUriAuthenticationPolicy;
    :try_start_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getCredentialManagementAppPolicy()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 661
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 659
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policy":Landroid/security/AppUriAuthenticationPolicy;
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 663
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v0    # "policy":Landroid/security/AppUriAuthenticationPolicy;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while getting credential management app policy."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 661
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 662
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 666
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 667
    return-object v0
.end method

.method private static blacklist getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 4
    .param p0, "keyid"    # Ljava/lang/String;

    .line 782
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 783
    .local v0, "result":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 784
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 785
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 787
    :try_start_0
    const-string/jumbo v2, "ks2_keychain_grant_id:"

    .line 788
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 787
    invoke-static {v2, v3}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    nop

    .line 792
    return-object v0

    .line 789
    :catch_0
    move-exception v2

    .line 790
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1
.end method

.method public static blacklist getGrantString(Landroid/system/keystore2/KeyDescriptor;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Landroid/system/keystore2/KeyDescriptor;

    .line 797
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "ks2_keychain_grant_id:%016X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 804
    if-eqz p1, :cond_6

    .line 807
    if-eqz p0, :cond_5

    .line 812
    invoke-static {p1}, Landroid/security/KeyChain;->isUcmKeyChainUriAndProvider(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 813
    invoke-static {p1}, Landroid/security/KeyChain;->isAndroidProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-static {p1}, Landroid/security/KeyChain;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "originalAlias":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider is ANDROID_SOURCE, flow default sequence with alias : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyChain"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object p1, v0

    .line 817
    .end local v0    # "originalAlias":Ljava/lang/String;
    goto :goto_0

    .line 818
    :cond_0
    new-instance v0, Ljava/security/KeyPair;

    invoke-static {p1}, Landroid/security/KeyChain;->getUCMPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 824
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 825
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    .local v2, "keyId":Ljava/lang/String;
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 831
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_2
    nop

    .line 833
    if-nez v2, :cond_3

    .line 834
    return-object v1

    .line 840
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    .line 841
    invoke-static {v2}, Landroid/security/KeyChain;->getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 839
    invoke-static {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 838
    return-object v0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 824
    .end local v2    # "keyId":Ljava/lang/String;
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "alias":Ljava/lang/String;
    :cond_4
    :goto_1
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 828
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "alias":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 826
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 808
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 765
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 766
    .local v0, "keyPair":Ljava/security/KeyPair;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    .line 770
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getRawAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .line 1238
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .line 1216
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1217
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "KeyChain"

    if-nez v0, :cond_0

    .line 1218
    const-string/jumbo v3, "getSource: null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return-object v1

    .line 1222
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1223
    .local v3, "sourcePath":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1224
    .local v4, "resourcetype":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1225
    .local v5, "uriuid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSource: source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resource type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    return-object v3

    .line 1227
    .end local v3    # "sourcePath":Ljava/lang/String;
    .end local v4    # "resourcetype":Ljava/lang/String;
    .end local v5    # "uriuid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1228
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1230
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v1
.end method

.method private static blacklist getUCMPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    .line 1242
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 1243
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    const-string v1, "KeyChain"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1244
    const-string/jumbo v3, "getUCMPrivateKey. lService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-object v2

    .line 1248
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->ucmGetCertificateChain(Ljava/lang/String;)[B

    move-result-object v3

    .line 1249
    .local v3, "certificateBytes":[B
    if-nez v3, :cond_1

    .line 1250
    const-string/jumbo v4, "getUCMPrivateKey. certificateBytes is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-object v2

    .line 1253
    :cond_1
    new-instance v4, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    invoke-direct {v4, p0, v2, v3}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1254
    .end local v3    # "certificateBytes":[B
    :catch_0
    move-exception v3

    .line 1255
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return-object v2
.end method

.method public static whitelist getWifiKeyGrantAsUser(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1087
    const-string v0, "KeyChain"

    .line 1088
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/security/IKeyChainService;->getWifiKeyGrantAsUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1089
    :cond_0
    return-object v3

    .line 1087
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "alias":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1093
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "alias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1094
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1095
    const-string v3, "Interrupted while getting grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    return-object v1

    .line 1090
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1091
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t get grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    return-object v1
.end method

.method public static whitelist hasWifiKeyGrantAsUser(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1108
    const-string v0, "KeyChain"

    .line 1109
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-interface {v3, v4, p2}, Landroid/security/IKeyChainService;->hasGrant(ILjava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1110
    :cond_0
    return v3

    .line 1108
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "alias":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1114
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "alias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1115
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1116
    const-string v3, "Interrupted while querying grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    return v1

    .line 1111
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1112
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t query grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    return v1
.end method

.method private static blacklist isAndroidProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 1278
    invoke-static {p0}, Landroid/security/KeyChain;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 988
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isCredentialManagementApp(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "isCredentialManagementApp":Z
    :try_start_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/security/IKeyChainService;->isCredentialManagementApp(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 636
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 633
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "isCredentialManagementApp":Z
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 641
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v0    # "isCredentialManagementApp":Z
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    goto :goto_2

    .line 638
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while checking whether the caller is the credential management app."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 636
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 637
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 643
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 644
    :goto_2
    return v0
.end method

.method public static whitelist isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 960
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, "algUpper":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 961
    :goto_1
    return v1
.end method

.method private static blacklist isKeyChainUri(Ljava/lang/String;)Z
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 1200
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1201
    return v0

    .line 1203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKeyChainUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyChain"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1205
    .local v1, "parsedUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1206
    return v0

    .line 1208
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ucmkeychain"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isUcmKeyChainUriAndProvider(Ljava/lang/String;)Z
    .locals 4
    .param p0, "alias"    # Ljava/lang/String;

    .line 1266
    invoke-static {p0}, Landroid/security/KeyChain;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1267
    return v1

    .line 1269
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "provider":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyChain"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static whitelist removeCredentialManagementApp(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 718
    :try_start_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1}, Landroid/security/IKeyChainService;->removeCredentialManagementApp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    const/4 v1, 0x1

    .line 721
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 720
    :cond_0
    return v1

    .line 718
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 721
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyChain"

    const-string v2, "Remove credential management app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 724
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist setCredentialManagementApp(Landroid/content/Context;Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authenticationPolicy"    # Landroid/security/AppUriAuthenticationPolicy;

    .line 690
    :try_start_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 692
    invoke-interface {v1, p1, p2}, Landroid/security/IKeyChainService;->setCredentialManagementApp(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    const/4 v1, 0x1

    .line 694
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 693
    :cond_0
    return v1

    .line 690
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "authenticationPolicy":Landroid/security/AppUriAuthenticationPolicy;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 694
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "authenticationPolicy":Landroid/security/AppUriAuthenticationPolicy;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyChain"

    const-string v2, "Set credential management app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 697
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "bytes"    # [B

    .line 994
    if-eqz p0, :cond_0

    .line 998
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 999
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 1000
    .local v1, "cert":Ljava/security/cert/Certificate;
    move-object v2, v1

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1001
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 995
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o toCertificates([B)Ljava/util/Collection;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1009
    if-eqz p0, :cond_0

    .line 1013
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1014
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1016
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1010
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
