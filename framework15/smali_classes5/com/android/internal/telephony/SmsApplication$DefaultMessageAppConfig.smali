.class final Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultMessageAppConfig"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static blacklist closeFileInputStream(Ljava/io/FileInputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist findLoadedSimSlot()I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v2
.end method

.method private blacklist getActiveOperatorId()Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isTssDevice()Z

    move-result v0

    const-string/jumbo v1, "mdc.singlesku.activated"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "NONE"

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const-string/jumbo v3, "ro.boot.activatedid"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EUX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "EUY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const-string/jumbo v3, "ro.csc.countryiso_code"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "countryiso : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsApplication"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "NONE"

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getActiveOperatorIdByCountryiso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isWifiSkipCarrier()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " isSupportTrueSingleSKU : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", isTSSActivated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", isWifiSkipCarrier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isWifiSkipCarrier()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", activeOperatorId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDMACdataTssInfo(ZZLjava/lang/String;)V

    return-object v2
.end method

.method private blacklist getActiveOperatorIdByCountryiso(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "SmsApplication"

    const-string v1, "NONE"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/etc/countryISO_openBuyer_config.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    nop

    const/4 v3, 0x0

    nop

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "XmlPullParser is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    if-eqz v3, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    goto :goto_1

    :pswitch_4
    nop

    :cond_1
    :goto_1
    const-string v6, "NONE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_0

    :cond_3
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xml parsing result- activeOperatorId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    nop

    :goto_4
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "Error while parsing"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    goto :goto_4

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "com.android.mms"

    :cond_0
    return-object v0
.end method

.method private static blacklist getParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "SmsApplication"

    const-string/jumbo v2, "no file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    :goto_0
    return-object v1
.end method

.method private blacklist getSalesCode()Ljava/lang/String;
    .locals 4

    const-string v0, "NONE"

    const-string v1, ""

    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SmsApplication"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private blacklist hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsApplication"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private blacklist isAMInstalled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.apps.messaging"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    return v1
.end method

.method private blacklist isNeedToModifyFirstApi()Z
    .locals 19

    const-string/jumbo v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v17, "SM-X308U"

    const-string v18, "SM-X308B"

    const-string v1, "SM-A155F"

    const-string v2, "SM-A155M"

    const-string v3, "SM-G556B"

    const-string v4, "SM-A156E"

    const-string v5, "SM-A156B"

    const-string v6, "SM-A156M"

    const-string v7, "SM-A1560"

    const-string v8, "SM-A256B"

    const-string v9, "SM-A256E"

    const-string v10, "SM-A2560"

    const-string v11, "SM-A256U"

    const-string v12, "SM-A256U1"

    const-string v13, "SM-A256N"

    const-string v14, "SM-X306B"

    const-string v15, "SM-X300"

    const-string v16, "SM-X306N"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedToModifyFirstApi return true : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsApplication"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist isOperatorFixed()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isTssDevice()Z

    move-result v0

    const-string/jumbo v1, "mdc.singlesku.activated"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOperatorFixed()- isSupportTrueSingleSKU : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isTSSActivated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsApplication"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private blacklist isSMInstalled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    return v1
.end method

.method private blacklist isTssDevice()Z
    .locals 2

    const-string/jumbo v0, "mdc.singlesku"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist isWifiSkipCarrier()Z
    .locals 9

    const-string/jumbo v0, "ro.boot.carrierid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "M06"

    const-string v8, "M05"

    const-string v1, "XSG"

    const-string v2, "MID"

    const-string v3, "ILO"

    const-string v4, "XFA"

    const-string v5, "AFR"

    const-string v6, "M10"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SmsApplication"

    const-string/jumbo v4, "isWifiSkipCarrier return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist setDefaultMsgApp_File(Ljava/lang/String;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->findLoadedSimSlot()I

    move-result v5

    const/4 v0, 0x0

    if-ltz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    const-string v8, ""

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FIRST_API_LEVEL_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ro.product.first_api_level"

    invoke-static {v11, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ro.product.model"

    const-string v12, "Unknown"

    invoke-static {v11, v12}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "SM-A136B"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "SmsApplication"

    if-eqz v12, :cond_1

    const-string v10, "FIRST_API_LEVEL_31"

    const-string/jumbo v12, "in case of SM-A136B, modify the first api level from 30 to 31"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isNeedToModifyFirstApi()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v10, "FIRST_API_LEVEL_33"

    const-string v12, "It is released before S24, so modify the first api level from 34 to 33"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v7, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_3
    const-string v12, ""

    :goto_1
    move-object v8, v12

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activeOperatorId: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " phoneId: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " isSimLoaded: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " mccmnc: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " firstApiLevel: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v15, ", phoneId : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v15, ", isSimLoaded : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v15, ", mccmnc : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v15, Ljava/io/File;

    const-string v0, "/system/etc/default_msg_config.xml"

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v4, v12

    nop

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    nop

    :try_start_1
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const-string v6, "SM"

    if-nez v0, :cond_5

    move/from16 v22, v5

    :try_start_2
    const-string v5, "XmlPullParser is null"

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto/16 :goto_c

    :cond_5
    move/from16 v22, v5

    :try_start_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_2
    move/from16 v23, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    if-eqz v12, :cond_6

    :try_start_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v18, v7

    :cond_6
    if-eqz v15, :cond_7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    move-object/from16 v19, v7

    :cond_7
    if-eqz v17, :cond_a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    move-object/from16 v20, v7

    goto :goto_3

    :pswitch_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    move v12, v7

    :cond_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    move v15, v7

    :cond_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    move/from16 v17, v7

    goto :goto_3

    :pswitch_3
    goto :goto_3

    :pswitch_4
    nop

    :cond_a
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v5, v7

    move/from16 v7, v23

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto/16 :goto_c

    :cond_b
    move-object/from16 v24, v9

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    :goto_4
    move-object/from16 v25, v0

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v26, v11

    :try_start_6
    const-string/jumbo v11, "xml parsing result- smNetCodeOpen: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " smCarrierCsc: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " smChangeOs: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    nop

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v11, "OS change is not shown"

    move/from16 v18, v12

    const-string v12, " to "

    move/from16 v19, v15

    const-string v15, "OS change: first api:"

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v8}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDMACdataConfigInfo(ZLjava/lang/String;)V

    invoke-direct {v1, v9, v2, v0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->updateChangeByOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " smCarrierCsc is change from "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "SM tag is empty  - AM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_d
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v11, "Carrier phone - SM select!!"

    if-eqz v6, :cond_e

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_e
    const-string/jumbo v6, "ro.csc.countryiso_code"

    const-string v12, "NONE"

    invoke-static {v6, v12}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", countryiso: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", firstApiLevel: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "SUP"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "US"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "FIRST_API_LEVEL_30"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    const-string v11, "Carrier phone - AM select!!"

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_6
    goto/16 :goto_b

    :cond_10
    const/4 v0, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v14, v8}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDMACdataConfigInfo(ZLjava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    invoke-direct {v1, v9, v2, v14}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->updateChangeByOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " smNetcodeOpen is change from "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_12
    goto :goto_8

    :sswitch_0
    const-string v11, "111111"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_9

    :sswitch_1
    const-string v11, "000000"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v14, 0x0

    goto :goto_9

    :goto_8
    const/4 v11, -0x1

    move v14, v11

    :goto_9
    packed-switch v14, :pswitch_data_1

    if-eqz v16, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unlocked phone, Some selects SM. mccmnc: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "Unlocked phone - contains mccmnc - SM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_5
    if-eqz v16, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unlocked phone, All selects SM. mccmnc: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " - SM select!!"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    const-string v6, "Unlocked phone, All selects SM. no sim! - SM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_6
    if-eqz v16, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unlocked phone, All selects AM. mccmnc: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " - AM select!!"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_14
    const-string v6, "Unlocked phone, All selects AM. no sim! - AM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 v3, 0x1

    goto :goto_b

    :cond_15
    const-string v6, "Unlocked phone - no matching mccmnc - AM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_b

    :cond_16
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "Unlocked phone, Some selects SM. no Sim! - SM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_17
    const/4 v3, 0x1

    const-string v6, "Unlocked phone, Some selects SM. no Sim! - AM select!!"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return v3

    :catchall_2
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v26, v11

    move/from16 v18, v12

    move/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v26, v11

    move/from16 v18, v12

    move/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto :goto_c

    :catchall_4
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto :goto_d

    :catch_4
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto :goto_c

    :catchall_5
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    goto :goto_d

    :catch_5
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    :goto_c
    :try_start_7
    const-string v5, "Error while parsing"

    invoke-static {v13, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    nop

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    return v3

    :catchall_6
    move-exception v0

    :goto_d
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    throw v0

    :catch_6
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x54a39200 -> :sswitch_1
        0x5666fa60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist setSMorOperatorMessageApp()V
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigDefSmsApp"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v2, "SBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_2

    :sswitch_1
    const-string v2, "KDI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v3, "DCM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string v3, "com.kddi.android.cmail"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v6, "com.kddi.android.cmail"

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string v3, "com.nttdocomo.android.msg"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "samsung"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v6, "com.nttdocomo.android.msg"

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jp.softbank.mb.mail"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v6, "jp.softbank.mb.mail"

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultApplication messageAppName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsApplication"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x107ae -> :sswitch_2
        0x12210 -> :sswitch_1
        0x13fde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateChangeByOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    const-string v4, ""

    if-eqz p3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v5, "SM_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method blacklist setDMACdataConfigInfo(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "True"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setIsUnLockedPhone(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "False"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setIsUnLockedPhone(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SemDMACdata;->setMccmnc(Ljava/lang/String;)V

    return-void
.end method

.method blacklist setDMACdataTssInfo(ZZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "NotSupported"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setTssActivated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "Activated"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setTssActivated(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "Deactivated"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setTssActivated(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/SemDMACdata;->setCarrierActivatedId(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDefaultMsgApp()V
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getActiveOperatorId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setDefaultMsgAppFromConfig"

    const-string v3, "SmsApplication"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, "setDefaultMsgApp Config Info ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smgetIncomingUserId()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smgetDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "SBM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DCM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "KDI"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isAMInstalled()Z

    move-result v6

    const-string v7, "SM"

    const-string/jumbo v8, "persist.ril.config.defaultmsgapp"

    if-nez v6, :cond_2

    invoke-static {v8, v7}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v6

    const-string v9, "NoAM"

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/SemDMACdata;->setPreInstalledMsgAppError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    const-string v9, "AM"

    if-eq v5, v6, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isSMInstalled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v8, v9}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v6

    const-string v9, "NoSM"

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/SemDMACdata;->setPreInstalledMsgAppError(Ljava/lang/String;)V

    const-string v6, "SM is not installed "

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v6, "NONE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDefaultMsgApp_File(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, ", mChangeToAM : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_5

    invoke-static {v8, v9}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "com.google.android.apps.messaging"

    iget-object v9, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    invoke-static {v8, v7}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {v8, v7}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v8, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setSMorOperatorMessageApp()V

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v9, ", SemSystemProperties - persist.ril.config.defaultmsgapp : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v8, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default Msg app is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default Msg app parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v7

    invoke-static {v3, v4, v6, v7}, Lcom/android/internal/telephony/SmsApplication;->sendBroadcast_SMS_BIG_DATA_INFO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V

    return-void
.end method
