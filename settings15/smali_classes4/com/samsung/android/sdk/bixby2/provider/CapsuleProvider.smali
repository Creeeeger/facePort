.class public Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final actionMap:Ljava/util/Map;

.field public static mActionId:Ljava/lang/String;

.field public static final mBixbyAgentSignature:Landroid/content/pm/Signature;

.field public static final mBixbyAgentSignatureForIOT:Landroid/content/pm/Signature;

.field public static mIsAppInitialized:Z

.field public static final mIsUserBuild:Z

.field public static mWaitForHandler:Z

.field public static final sWaitLock:Ljava/lang/Object;


# instance fields
.field public final sActionExecutionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsUserBuild:Z

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mBixbyAgentSignature:Landroid/content/pm/Signature;

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082040e308202f6a0030201020206017ce4114f86300d06092a864886f70d01010505003081bd310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373312d302b0603550403132453616d73756e6720506c6174666f726d204b657920666f7220494f542064657669636573301e170d3231313130333034333135325a170d3431313130323135303030305a3081bd310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373312d302b0603550403132453616d73756e6720506c6174666f726d204b657920666f7220494f54206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100b59bf685e92c3075041ec8952a511d23ea013c70af115d4aae07307cf86e7a7d9fd253cb405a394ce7767859f576ab7d5202210223e6f2ae2d52a9347933fadc9ff3396ffc784b68f2c106f6038a49b779f6221a1e5c1f636e96aacefec6ca460fe54b93d41ca6b16583411b6bf8eeae8014f8c46a1101445b9c42c3e2eee893d8c300e3ebab428e77a0d9f7acf7992c46649e6b8a206d249fda97978572428b38dbb7d71d715005080b7d3bcbc7280d321d299e09c8981eec7699a533049fff0c1c48f152fa16db0d1776dfe31db7735bb53633b6dc8f4b0c6effea9152d431ec48dbea09523fe1b0d3e1cb54b9e5e4b107ebae7b9d3b33dd1b77baedd9b0590203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101006fd7b92f463a1d2f5fc08dd3b06880a12afe76c80dc47f0113f06016de59a77859be19515c5b93285acb25e2701d832bef6fc4c489e081cffcd1fb3930420cf757eceb9b1f64cfe0ca705b00f73b7d0431aeb616085d3d1b392a41802e144acbf49d841ac9787988915446283d61cb4cc25272460a9d0717539f64feacb19042d027b3242f4332ee869f0d8254d514d9824f01b806470a637a124beb66ecf1ade20cbcac371c44b4595e9528c6b43dd3ae967c2d71134425d1684949b13f312b9c48f156c18431fb3d82b6f67bc04be8d1b4cf17042d91a0159471f90672e2f29e181ec106696de357b0c6398031c2806b5e8b4db606ee0d2e718a5a92218281"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mBixbyAgentSignatureForIOT:Landroid/content/pm/Signature;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->actionMap:Ljava/util/Map;

    sput-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsAppInitialized:Z

    sput-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mWaitForHandler:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mActionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sActionExecutionLock:Ljava/lang/Object;

    return-void
.end method

.method public static getActionHandler(Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->actionMap:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    sget-object v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sWaitLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_0

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mWaitForHandler:Z

    if-eqz v3, :cond_0

    sput-object p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mActionId:Ljava/lang/String;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-object v1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateStatus(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "status_code"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const-string p0, "CapsuleProvider_1.0.25"

    const-string p1, "Failed to execute action."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo p0, "status_message"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string p2, "CapsuleProvider_1.0.25"

    const-string v0, "call()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    :cond_0
    sget-boolean p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsUserBuild:Z

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const-string v1, "CapsuleProvider_1.0.25"

    if-eqz p2, :cond_1e

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1d

    aget-object v5, p2, v4

    const-string v6, "com.samsung.android.bixby.agent"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.samsung.android.app.routines"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_2
    const/16 v6, 0x40

    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1c

    array-length v6, v5

    if-lez v6, :cond_1c

    sget-object v6, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mBixbyAgentSignature:Landroid/content/pm/Signature;

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mBixbyAgentSignatureForIOT:Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    invoke-virtual {v6, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v5, :cond_1c

    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1b

    sget-boolean p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsAppInitialized:Z

    if-nez p2, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Lcom/samsung/android/sdk/bixby2/receiver/ApplicationTriggerReceiver;

    invoke-direct {p2}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.samsung.android.sdk.bixby2.ACTION_APPLICATION_TRIGGER"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, p2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2
    const-string p2, "CapsuleProvider_1.0.25"

    const-string v1, "ApplicationTriggerReceiver registered"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    sget-object p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sWaitLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    sget-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsAppInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "CapsuleProvider_1.0.25"

    const-string v2, "interrupted exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_6
    :goto_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mIsAppInitialized:Z

    const/4 v0, -0x1

    if-nez p2, :cond_7

    const-string p0, "CapsuleProvider_1.0.25"

    const-string p1, "App initialization error."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Initialization Failure.."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->updateStatus(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p2, "getAppContext"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_14

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getStateHandler()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    const-string p3, "StateHandler"

    const/4 v0, 0x0

    if-nez p2, :cond_8

    const-string p0, "StateHandler.Callback instance is null"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object p0, v0

    goto/16 :goto_a

    :cond_8
    check-cast p2, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;

    const-string v2, "InstrumentedPrefFrag"

    :try_start_4
    iget-object p2, p2, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->this$0:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getAppContext()Lcom/samsung/android/settings/bixby/AppContext;

    move-result-object p2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onAppStateRequested() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v0

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onAppStateRequested() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_9

    const-string/jumbo v4, "null"

    goto :goto_6

    :cond_9
    iget-object v4, p2, Lcom/samsung/android/settings/bixby/AppContext;->mAppContext:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_a

    move-object p2, v0

    goto :goto_7

    :cond_a
    iget-object p2, p2, Lcom/samsung/android/settings/bixby/AppContext;->mAppContext:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo p0, "state info is empty."

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/sdk/bixby2/Sbixby;->appMetaInfoMap:Ljava/util/Map;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "capsuleId is empty"

    invoke-static {p3, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_e

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v1, :cond_d

    const-string v1, "Map for App Meta Info. has only one"

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    goto :goto_9

    :cond_d
    const-string p0, "No Capsule Id and multiple App Meta Info. Can\'t pick one"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    :goto_8
    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->getDefaultAppMetaInfo(Landroid/content/Context;)Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    move-result-object v1

    goto :goto_9

    :cond_f
    if-eqz v2, :cond_10

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    goto :goto_9

    :cond_10
    const-string v1, "Map for App Meta Info. is empty"

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->getDefaultAppMetaInfo(Landroid/content/Context;)Lcom/samsung/android/sdk/bixby2/AppMetaInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    iput-object v0, v1, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;->capsuleId:Ljava/lang/String;

    :cond_11
    :goto_9
    if-nez v1, :cond_12

    const-string p0, "App Meta Info. is null"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "capsuleId"

    iget-object v3, v1, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;->capsuleId:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "appId"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appVersionCode"

    iget p2, v1, Lcom/samsung/android/sdk/bixby2/AppMetaInfo;->appVersionCode:I

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->mCallback:Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "getUsedPermissionsWhenAppStateRequested() = null"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getAppState exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p3}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    :goto_a
    if-eqz p0, :cond_13

    const-string p1, "appContext"

    invoke-static {p1, p0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_13
    return-object v0

    :cond_14
    if-eqz p3, :cond_1a

    monitor-enter p0

    :try_start_6
    const-string p2, "CapsuleProvider_1.0.25"

    const-string v2, "executeAction()"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->getActionHandler(Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    move-result-object v5

    if-nez v5, :cond_15

    const-string p1, "CapsuleProvider_1.0.25"

    const-string p2, "Handler not found!!.."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Action handler not found"

    const/4 p2, -0x2

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->updateStatus(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    goto/16 :goto_e

    :catchall_1
    move-exception p1

    goto/16 :goto_f

    :catch_3
    move-exception p1

    goto :goto_d

    :cond_15
    :try_start_7
    const-string p2, "actionType"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_16

    const-string p1, "CapsuleProvider_1.0.25"

    const-string/jumbo p2, "params missing"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "params missing.."

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->updateStatus(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    goto/16 :goto_e

    :cond_16
    :try_start_8
    new-instance p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;-><init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v9, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;-><init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)V

    invoke-direct {v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sActionExecutionLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-boolean p3, p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->actionExecuted:Z

    if-nez p3, :cond_17

    iget-object p3, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->sActionExecutionLock:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {p3, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_b

    :catchall_2
    move-exception p2

    goto :goto_c

    :cond_17
    :goto_b
    iget-boolean p3, p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->actionExecuted:Z

    if-eqz p3, :cond_18

    iget-object p2, p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->resultBundle:Landroid/os/Bundle;

    if-eqz p2, :cond_19

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    move-object p1, p2

    goto :goto_e

    :cond_18
    :try_start_a
    const-string p3, "CapsuleProvider_1.0.25"

    const-string/jumbo v3, "timeout occurred.."

    invoke-static {p3, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->actionTimedOut:Z

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    const-string p1, "action execution timed out"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->updateStatus(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    goto :goto_e

    :goto_c
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_d
    :try_start_e
    const-string p2, "CapsuleProvider_1.0.25"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to execute action."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->updateStatus(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    monitor-exit p0

    :goto_e
    return-object p1

    :goto_f
    monitor-exit p0

    throw p1

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "action params are EMPTY."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_10
    :try_start_f
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw p0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method is null or empty. pass valid action name."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not allowed to access capsule provider. package (s): "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_1e
    const-string/jumbo p0, "packages is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "not allowed to access capsule provider."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "actionUri"

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    const-string p0, "CapsuleProvider_1.0.25"

    const-string/jumbo v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->mWaitForHandler:Z

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
