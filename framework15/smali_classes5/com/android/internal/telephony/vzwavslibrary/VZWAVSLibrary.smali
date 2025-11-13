.class public Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;
.super Ljava/lang/Object;
.source "VZWAVSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;,
        Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    }
.end annotation


# static fields
.field private static final blacklist AVS_AUTHORITY_MVS:Ljava/lang/String; = "com.verizon.vzwavs.mvs.provider"

.field private static final blacklist AVS_AUTHORITY_STD:Ljava/lang/String; = "com.verizon.vzwavs.provider"

.field private static final blacklist AVS_INSTANCES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

.field private static final blacklist CERT_FP_MVS:Ljava/lang/String; = "A1:F6:F0:8B:5D:91:99:55:DD:51:DA:94:88:38:87:14:29:B1:E9:36"

.field private static final blacklist CERT_FP_MVS_BYOD:Ljava/lang/String; = "03:FE:29:EF:A0:6C:0B:D8:64:3A:A1:A7:C3:EC:91:A1:A6:57:00:E6"

.field private static final blacklist CERT_FP_STANDALONE:Ljava/lang/String; = "0B:A7:6D:BD:55:0A:4C:76:68:BD:7C:85:60:C1:2D:AF:95:14:CC:02"

.field private static final blacklist EN:Ljava/util/Locale;

.field private static final blacklist MVS_CERTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STANDALONE_CERTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist URI_TEMPLATE:Ljava/lang/String; = "content://%s/apis"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEN()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->EN:Ljava/util/Locale;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    const-string v0, "A1:F6:F0:8B:5D:91:99:55:DD:51:DA:94:88:38:87:14:29:B1:E9:36"

    const-string v1, "03:FE:29:EF:A0:6C:0B:D8:64:3A:A1:A7:C3:EC:91:A1:A6:57:00:E6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->MVS_CERTS:Ljava/util/List;

    const-string v0, "0B:A7:6D:BD:55:0A:4C:76:68:BD:7C:85:60:C1:2D:AF:95:14:CC:02"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->STANDALONE_CERTS:Ljava/util/List;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->EN:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    new-instance v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->MVS_CERTS:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "MvsAvs"

    const-string v6, "com.verizon.vzwavs.mvs.provider"

    invoke-direct {v1, v5, v6, v2, v4}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->STANDALONE_CERTS:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "StandaloneAvs"

    const-string v5, "com.verizon.vzwavs.provider"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->AVS_INSTANCES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkAvsInstance(Landroid/content/Context;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->authority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/vzwavslibrary/Utils;->getSigningCertificates(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-static {v5}, Lcom/android/internal/telephony/vzwavslibrary/Utils;->getCertFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, p1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->fingerprints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    nop

    if-nez v1, :cond_3

    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v2

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v3
.end method

.method public static blacklist isPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->AVS_INSTANCES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->queryAvsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist queryAvsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .locals 7

    iget-boolean v0, p3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->isAvailable:Z

    if-nez v0, :cond_1

    invoke-static {p0, p3}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->checkAvsInstance(Landroid/content/Context;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->isAvailable:Z

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->contentProviderUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_PERMITTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    :goto_3
    return-object v2
.end method
