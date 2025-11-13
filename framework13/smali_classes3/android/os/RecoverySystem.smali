.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;,
        Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field private static final blacklist ACTION_EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS:Ljava/lang/String; = "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

.field public static final greylist-max-o BLOCK_MAP_FILE:Ljava/io/File;

.field private static blacklist COMMAND_FILE:Ljava/io/File; = null

.field private static final greylist-max-o DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final blacklist DEFAULT_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0xafc8L

.field private static final greylist-max-o DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final blacklist LAST_CACHE_SUDDEN_RESET_LOG_PATH:Ljava/lang/String; = "/data/log/recovery_last_sudden_reset.log"

.field private static final blacklist LAST_INSTALL_PATH:Ljava/lang/String; = "last_install"

.field private static final greylist-max-o LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final blacklist LAST_RECOVERY_MODE:Ljava/lang/String; = "dev.lastrecoverymode"

.field private static final greylist-max-o LOG_FILE:Ljava/io/File;

.field private static final greylist-max-o LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final greylist-max-o MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final blacklist MAX_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x15f90L

.field private static final greylist-max-o MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final blacklist MIN_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final blacklist PACKAGE_NAME_EUICC_DATA_MANAGEMENT_CALLBACK:Ljava/lang/String; = "android"

.field private static final greylist-max-o PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final greylist-max-o RECOVERY_DIR:Ljava/io/File;

.field public static final blacklist RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_INVALID_PACKAGE_NAME:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_LSKF_NOT_CAPTURED:I = 0xbb8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESUME_ON_REBOOT_REBOOT_ERROR_NONE:I = 0x0

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_PROVIDER_PREPARATION_FAILURE:I = 0x1388
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_SLOT_MISMATCH:I = 0xfa0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_UNSPECIFIED:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist SUDDEN_RESET_LAST_KMSG_NAME:Ljava/lang/String; = "recovery_sudden_reset_last_kmsg.log"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySystem"

.field private static final blacklist TMP_RECOVERY_LOG_PATH:Ljava/lang/String; = "/efs/recovery/tmp_recovery.log"

.field public static final greylist-max-o UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final greylist-max-o UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static blacklist mShutdownIsInProgress:Ljava/lang/Boolean;

.field private static final blacklist mShutdownIsInProgressLock:Ljava/lang/Object;

.field private static final greylist-max-o sRequestLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 127
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 148
    new-instance v1, Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    .line 153
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    .line 166
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "rescueparty_log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

    .line 176
    new-instance v1, Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 184
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 192
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    .line 1920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1921
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1922
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IRecoverySystem;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1928
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1929
    return-void
.end method

.method private blacklist allocateSpaceForUpdate(Ljava/io/File;)Z
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IRecoverySystem;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs blacklist bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1555
    sget-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1556
    :try_start_0
    sget-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1557
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    .line 1558
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1559
    const-string v0, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[RecoverySystem] bootCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    sget-object v1, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1563
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1564
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "!@[RecoverySystem] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 1567
    .local v6, "st":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    nop

    .end local v6    # "st":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1569
    :cond_1
    const-string v3, "RecoverySystem"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    sget-object v3, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1571
    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1572
    const/4 v3, 0x0

    .line 1573
    .local v3, "recovery_cause":Ljava/lang/String;
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1575
    const/4 v5, 0x3

    .line 1578
    .local v5, "retryCount":I
    :cond_2
    new-instance v6, Ljava/io/RandomAccessFile;

    sget-object v7, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v8, "rwd"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1580
    .local v6, "command":Ljava/io/RandomAccessFile;
    :try_start_2
    array-length v7, p1

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, p1, v8

    .line 1581
    .local v9, "arg":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1582
    invoke-virtual {v6, v9}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 1583
    const-string v10, "\n"

    invoke-virtual {v6, v10}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 1584
    const-string v10, "--reason="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1585
    invoke-static {v9}, Landroid/os/RecoverySystem;->getRecoveryReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1580
    .end local v9    # "arg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1590
    :cond_4
    const-string v7, "RecoverySystem"

    const-string v8, "!@[RecoverySystem] bootCommand: before fsync syscall!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 1592
    const-string v7, "RecoverySystem"

    const-string v8, "!@[RecoverySystem] bootCommand: after fsync syscall!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1594
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 1595
    nop

    .line 1596
    add-int/lit8 v5, v5, -0x1

    .line 1597
    sget-object v7, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1598
    const-string v4, "RecoverySystem"

    const-string v7, "COMMAND_FILE is already exist!!"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    goto :goto_2

    .line 1601
    :cond_5
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retryCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    nop

    .end local v6    # "command":Ljava/io/RandomAccessFile;
    if-nez v5, :cond_2

    .line 1604
    :goto_2
    sget-object v4, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1609
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1610
    .local v4, "pm":Landroid/os/PowerManager;
    const-string/jumbo v6, "persist.sys.reboot.reason"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1611
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v7, "nvrecovery"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1614
    const-string v7, "download"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1618
    const-string v7, "RecoverySystem"

    const-string v8, "calling pm.reboot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    if-nez v3, :cond_6

    const-string v7, "bootCommand()"

    move-object v3, v7

    .line 1622
    :cond_6
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@[RecoverySystem] bootCommand: [reset tracking] write to recovery_cause : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1623
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v8, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1624
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecoverySystem"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1625
    .local v8, "content":Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1626
    .end local v8    # "content":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1628
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1623
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v9

    :try_start_8
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "recovery_cause":Ljava/lang/String;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "retryCount":I
    .end local v6    # "reason":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    :goto_3
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1626
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "recovery_cause":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/os/PowerManager;
    .restart local v5    # "retryCount":I
    .restart local v6    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1627
    .local v7, "e":Ljava/io/IOException;
    :try_start_9
    const-string v8, "RecoverySystem"

    const-string v9, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    .end local v7    # "e":Ljava/io/IOException;
    :goto_4
    const-string/jumbo v7, "recovery"

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_5

    .line 1615
    :cond_7
    const-string v7, "RecoverySystem"

    const-string v8, "FactoryTest ->download "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v7, "download"

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_5

    .line 1612
    :cond_8
    const-string v7, "RecoverySystem"

    const-string v8, "FactoryTest ->nvrecovery "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string/jumbo v7, "nvrecovery"

    invoke-virtual {v4, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1633
    :goto_5
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Reboot failed (no permissions?)"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    throw v7

    .line 1605
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v6    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :cond_9
    const-string v4, "RecoverySystem"

    const-string v6, "!@[RecoverySystem] bootCommand: command file absent, throw exception"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Reboot failed (unable to create command file)"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    throw v4

    .line 1594
    .local v6, "command":Ljava/io/RandomAccessFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v4

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 1595
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "args":[Ljava/lang/String;
    throw v4

    .line 1634
    .end local v0    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "recovery_cause":Ljava/lang/String;
    .end local v5    # "retryCount":I
    .end local v6    # "command":Ljava/io/RandomAccessFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 1558
    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method

.method public static whitelist cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 988
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    return-void

    .line 989
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o clearBcb()Z
    .locals 1

    .line 1818
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1819
    :catch_0
    move-exception v0

    .line 1821
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist clearLskf(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1858
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not clear LSKF"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist clearPrepareForUnattendedUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 862
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    return-void

    .line 863
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reset unattended update state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 1936
    const-string v0, "copyFile: Error close FileChannel "

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1937
    .local v2, "inputChannel":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 1939
    .local v3, "outputChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v2, v4

    .line 1940
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v3, v4

    .line 1941
    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, v3

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1942
    const/16 v4, 0x1a0

    .line 1943
    .local v4, "mode":I
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1944
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    const/16 v7, 0x3ef

    invoke-static {v5, v6, v7}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    .end local v4    # "mode":I
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    .line 1953
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1952
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1954
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1956
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1955
    :cond_1
    :goto_2
    goto :goto_3

    .line 1950
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 1947
    :catch_1
    move-exception v4

    .line 1948
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_2
    const-string v5, "copyFile: Error chmod recovery logs"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1951
    .end local v4    # "e":Landroid/system/ErrnoException;
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1952
    :cond_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1945
    :catch_2
    move-exception v4

    .line 1946
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v5, "copyFile: Error copy recovery logs"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1951
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1952
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1957
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return-void

    .line 1951
    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_5

    .line 1953
    :catch_3
    move-exception v5

    goto :goto_6

    .line 1952
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 1954
    .local v5, "e":Ljava/io/IOException;
    :goto_6
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1955
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    nop

    .line 1956
    :goto_8
    throw v4
.end method

.method private static blacklist getRecoveryReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg"    # Ljava/lang/String;

    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1513
    .local v1, "idx":I
    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1516
    goto :goto_0

    .line 1514
    :catch_0
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v3, "RecoverySystem"

    const-string v4, "StringIndexOutOfBoundsException when splitting recovery cause:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_0
    return-object v0
.end method

.method private static greylist-max-o getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 281
    .local v0, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 282
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 284
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 286
    .local v1, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 287
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 288
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 290
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 295
    nop

    .line 296
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 294
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 295
    nop

    .end local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "zip":Ljava/util/zip/ZipFile;
    .end local p0    # "keystore":Ljava/io/File;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v1    # "zip":Ljava/util/zip/ZipFile;
    .restart local p0    # "keystore":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 299
    nop

    .line 300
    return-object v0

    .line 298
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 299
    throw v2
.end method

.method public static greylist-max-o handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 1646
    sget-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1647
    :try_start_0
    sget-object v1, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1648
    const-string v1, "RecoverySystem"

    const-string v3, "!@[RecoverySystem] handleAftermath: disabled, as shutdown in progress"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    monitor-exit v0

    return-object v2

    .line 1651
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1652
    const-string v0, "RecoverySystem"

    const-string v1, "!@[RecoverySystem] handleAftermath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 v0, 0x0

    .line 1658
    .local v0, "log":Ljava/lang/String;
    :try_start_1
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const/high16 v3, -0x10000

    const-string v4, "...\n"

    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 1663
    :goto_0
    goto :goto_1

    .line 1661
    :catch_0
    move-exception v1

    .line 1662
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "RecoverySystem"

    const-string v4, "Error reading recovery log"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1659
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1660
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "RecoverySystem"

    const-string v4, "No recovery log file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 1666
    :goto_1
    const/4 v1, 0x0

    .line 1667
    .local v1, "reFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 1670
    .local v3, "reFis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_2
    new-instance v5, Ljava/io/File;

    const-string v6, "/cache/recovery/last_recovery_mode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 1671
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 1672
    const/16 v5, 0x15

    new-array v5, v5, [B

    .line 1673
    .local v5, "mode":[B
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 1674
    .local v6, "bytes":I
    if-lez v6, :cond_1

    .line 1675
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v4, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1676
    .local v7, "lastRecoveryMode":Ljava/lang/String;
    const-string v8, "RecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "last_recovery_mode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const-string v8, "dev.lastrecoverymode"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    .end local v7    # "lastRecoveryMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1680
    const-string v7, "RecoverySystem"

    const-string v8, "Failed to delete /cache/recovery/last_recovery_mode"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1688
    .end local v5    # "mode":[B
    .end local v6    # "bytes":I
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1691
    :cond_3
    :goto_2
    goto :goto_3

    .line 1689
    :catch_2
    move-exception v5

    .line 1690
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "RecoverySystem"

    const-string v7, "IOException when close last_recovery_mode file:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1692
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1687
    :catchall_0
    move-exception v2

    goto/16 :goto_9

    .line 1684
    :catch_3
    move-exception v5

    .line 1685
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "RecoverySystem"

    const-string v7, "IOException when read /cache/recovery/last_recovery_mode:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1688
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1682
    :catch_4
    move-exception v5

    .line 1683
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    const-string v6, "RecoverySystem"

    const-string v7, "FileNotFoundException when open /cache/recovery/last_recovery_mode:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1688
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 1696
    :goto_3
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v7, "last_history"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery_history.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1697
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "last_extra_history"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery_extra_history.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1698
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "last_recovery"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1699
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1700
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "rescueparty_log"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/rescueparty_log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1705
    :cond_4
    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    .line 1706
    .local v5, "reservePackage":Z
    if-nez v5, :cond_6

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1707
    const/4 v7, 0x0

    .line 1709
    .local v7, "filename":Ljava/lang/String;
    :try_start_8
    invoke-static {v6, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v7, v2

    .line 1712
    goto :goto_4

    .line 1710
    :catch_5
    move-exception v2

    .line 1711
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "RecoverySystem"

    const-string v6, "Error reading uncrypt file"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v7, :cond_6

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1717
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1718
    const-string v2, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1720
    :cond_5
    const-string v2, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t delete: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .end local v7    # "filename":Ljava/lang/String;
    :cond_6
    :goto_5
    const-string v2, "RecoverySystem"

    const-string v4, "copy sudden_reset_log to /data/log/"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    new-instance v2, Ljava/io/File;

    sget-object v4, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v6, "recovery_sudden_reset_last_kmsg.log"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1728
    .local v2, "tmpSuddenResetLastKmsg":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1729
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log"

    const-string/jumbo v8, "recovery_sudden_reset_last_kmsg.log"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1732
    :cond_7
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/recovery/tmp_recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v6, "tmpRecoveryLogFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1734
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/recovery_last_sudden_reset.log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1735
    new-instance v7, Ljava/io/File;

    const-string v8, "/proc/last_kmsg"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    const-string/jumbo v10, "recovery_sudden_reset_last_kmsg.log"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1736
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1737
    const-string v7, "RecoverySystem"

    const-string v8, "Deleted: /efs/recovery/tmp_recovery.log"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1739
    :cond_8
    const-string v7, "RecoverySystem"

    const-string v8, "Can\'t delete: /efs/recovery/tmp_recovery.log"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_9
    :goto_6
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1751
    .local v4, "names":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-eqz v4, :cond_10

    array-length v8, v4

    if-ge v7, v8, :cond_10

    .line 1753
    aget-object v8, v4, v7

    const-string/jumbo v9, "last_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    aget-object v8, v4, v7

    const-string/jumbo v9, "last_install"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_8

    .line 1754
    :cond_a
    if-eqz v5, :cond_b

    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_8

    .line 1755
    :cond_b
    if-eqz v5, :cond_c

    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_8

    .line 1756
    :cond_c
    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_8

    .line 1757
    :cond_d
    aget-object v8, v4, v7

    sget-object v9, Landroid/os/RecoverySystem;->RECOVERY_RESCUEPARTY_FILE:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_8

    .line 1759
    :cond_e
    new-instance v8, Ljava/io/File;

    sget-object v9, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v10, v4, v7

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1751
    :cond_f
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1762
    .end local v7    # "i":I
    :cond_10
    return-object v0

    .line 1688
    .end local v2    # "tmpSuddenResetLastKmsg":Ljava/io/File;
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "reservePackage":Z
    .end local v6    # "tmpRecoveryLogFile":Ljava/io/File;
    :goto_9
    if-eqz v3, :cond_11

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    .line 1689
    :catch_6
    move-exception v4

    .line 1690
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "IOException when close last_recovery_mode file:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 1691
    .end local v4    # "e":Ljava/io/IOException;
    :cond_11
    :goto_a
    nop

    .line 1692
    :goto_b
    throw v2

    .line 1651
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "reFile":Ljava/io/File;
    .end local v3    # "reFis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 641
    return-void
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    move-object/from16 v1, p0

    sget-object v2, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 663
    :try_start_0
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 665
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 667
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, "filename":Ljava/lang/String;
    const-string v4, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v4, "_s.zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 672
    .local v4, "securityUpdate":Z
    const-string v5, "/data/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 673
    .local v5, "fileInData":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--update_org_package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, "orgFilenameArg":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    .line 679
    if-eqz p2, :cond_1

    .line 680
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    const-string v0, "RecoverySystem"

    const-string v7, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Failed to find block map file"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v0

    .line 686
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_1
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 688
    .local v9, "uncryptFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    .line 691
    nop

    .line 694
    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 695
    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v10

    if-nez v10, :cond_3

    .line 696
    :cond_2
    const-string v10, "RecoverySystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error setting permission for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 704
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    :goto_0
    const-string v0, "@/cache/recovery/block.map"

    move-object v3, v0

    goto :goto_1

    .line 690
    .restart local v9    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    .line 691
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v0

    .line 707
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--update_package="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 708
    .local v9, "filenameArg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--locale="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 709
    .local v10, "localeArg":Ljava/lang/String;
    const-string v0, "--security\n"

    move-object v11, v0

    .line 711
    .local v11, "securityArg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "command":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 713
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--security\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 716
    :cond_5
    const-string v12, "com.ws.dm"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 717
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--carry_out=att_fota\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_2

    .line 718
    :cond_6
    const-string v12, "com.samsung.sdm.sdmviewer"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 719
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--carry_out=vzw_fota\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_2

    .line 721
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--carry_out=open_fota\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 724
    :goto_2
    if-eqz v5, :cond_8

    .line 725
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_3

    .line 724
    :cond_8
    move-object v12, v0

    .line 728
    .end local v0    # "command":Ljava/lang/String;
    .local v12, "command":Ljava/lang/String;
    :goto_3
    sget-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 729
    const/4 v0, 0x3

    move v13, v0

    .line 731
    .local v13, "retry_count":I
    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v14, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v15, "rwd"

    invoke-direct {v0, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v14, v0

    .line 732
    .local v14, "commandFile":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v14, v12}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 733
    const-string v0, "RecoverySystem"

    const-string v15, "!@RecoverySystem before fsync syscall!!"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 735
    const-string v0, "RecoverySystem"

    const-string v15, "!@RecoverySystem after fsync syscall!!"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 736
    :try_start_5
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 739
    .end local v14    # "commandFile":Ljava/io/RandomAccessFile;
    nop

    .line 740
    add-int/lit8 v13, v13, -0x1

    .line 741
    :try_start_6
    sget-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 742
    const-string v0, "RecoverySystem"

    const-string v14, "COMMAND_FILE is already exist!!"

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    goto :goto_4

    .line 745
    :cond_a
    const-string v0, "RecoverySystem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Retry_count : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-gtz v13, :cond_9

    .line 748
    :goto_4
    sget-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v8, :cond_c

    .line 771
    const-string v0, "RecoverySystem"

    const-string v8, "!@[reset tracking] installPackage write to recovery_cause"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 772
    :try_start_7
    new-instance v0, Ljava/io/FileWriter;

    const-string v8, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v0, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v8, v0

    .line 773
    .local v8, "rebootDescr":Ljava/io/FileWriter;
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecoverySystem installPackage: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 774
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 777
    .end local v8    # "rebootDescr":Ljava/io/FileWriter;
    goto :goto_6

    .line 772
    .restart local v8    # "rebootDescr":Ljava/io/FileWriter;
    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v15, v0

    :try_start_b
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "securityUpdate":Z
    .end local v5    # "fileInData":Z
    .end local v6    # "orgFilenameArg":Ljava/lang/String;
    .end local v9    # "filenameArg":Ljava/lang/String;
    .end local v10    # "localeArg":Ljava/lang/String;
    .end local v11    # "securityArg":Ljava/lang/String;
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "retry_count":I
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    :goto_5
    throw v14
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 774
    .end local v8    # "rebootDescr":Ljava/io/FileWriter;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "securityUpdate":Z
    .restart local v5    # "fileInData":Z
    .restart local v6    # "orgFilenameArg":Ljava/lang/String;
    .restart local v9    # "filenameArg":Ljava/lang/String;
    .restart local v10    # "localeArg":Ljava/lang/String;
    .restart local v11    # "securityArg":Ljava/lang/String;
    .restart local v12    # "command":Ljava/lang/String;
    .restart local v13    # "retry_count":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/io/IOException;
    :try_start_c
    const-string v8, "RecoverySystem"

    const-string v14, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v8, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    const-string/jumbo v0, "power"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 782
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "recovery-update"

    .line 785
    .local v8, "reason":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.software.leanback"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 786
    const-class v14, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayManager;

    .line 787
    .local v14, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v14, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getState()I

    move-result v7

    const/4 v15, 0x2

    if-eq v7, v15, :cond_b

    .line 788
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ",quiescent"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 791
    .end local v14    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_b
    invoke-virtual {v0, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 793
    new-instance v7, Ljava/io/IOException;

    const-string v14, "Reboot failed (no permissions?)"

    invoke-direct {v7, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v7

    .line 749
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v8    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_c
    const-string v0, "RecoverySystem"

    const-string v7, "!@ command file absent, throw exception"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v0, Ljava/io/IOException;

    const-string v7, "failed to create command file"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 731
    .local v14, "commandFile":Ljava/io/RandomAccessFile;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_d
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v8, v0

    :try_start_e
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "securityUpdate":Z
    .end local v5    # "fileInData":Z
    .end local v6    # "orgFilenameArg":Ljava/lang/String;
    .end local v9    # "filenameArg":Ljava/lang/String;
    .end local v10    # "localeArg":Ljava/lang/String;
    .end local v11    # "securityArg":Ljava/lang/String;
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "retry_count":I
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    :goto_7
    throw v7
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 736
    .end local v14    # "commandFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "securityUpdate":Z
    .restart local v5    # "fileInData":Z
    .restart local v6    # "orgFilenameArg":Ljava/lang/String;
    .restart local v9    # "filenameArg":Ljava/lang/String;
    .restart local v10    # "localeArg":Ljava/lang/String;
    .restart local v11    # "securityArg":Ljava/lang/String;
    .restart local v12    # "command":Ljava/lang/String;
    .restart local v13    # "retry_count":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catch_1
    move-exception v0

    .line 737
    .local v0, "e":Ljava/io/IOException;
    :try_start_f
    const-string v7, "RecoverySystem"

    const-string v8, "IOException when writing command cause:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    new-instance v7, Ljava/io/IOException;

    const-string v8, "failed to create command file"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v7

    .line 794
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "securityUpdate":Z
    .end local v5    # "fileInData":Z
    .end local v6    # "orgFilenameArg":Ljava/lang/String;
    .end local v9    # "filenameArg":Ljava/lang/String;
    .end local v10    # "localeArg":Ljava/lang/String;
    .end local v11    # "securityArg":Ljava/lang/String;
    .end local v12    # "command":Ljava/lang/String;
    .end local v13    # "retry_count":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0
.end method

.method private blacklist isLskfCaptured(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1873
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not get LSKF capture state"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist isPreparedForUnattendedUpdate(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 910
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist prepareForUnattendedUpdate(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    if-eqz p1, :cond_2

    .line 833
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 834
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 840
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/os/RecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    return-void

    .line 841
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "preparation for update failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v1    # "rs":Landroid/os/RecoverySystem;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to request LSKF because the device doesn\'t have a lock screen. "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 830
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 621
    return-void
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    return-void

    .line 565
    :cond_0
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 566
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 567
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_2

    .line 569
    if-eqz p3, :cond_1

    .line 570
    move-object v3, p3

    .local v3, "progressHandler":Landroid/os/Handler;
    goto :goto_0

    .line 572
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    .restart local v3    # "progressHandler":Landroid/os/Handler;
    :goto_0
    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object v2, v4

    .line 596
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_2
    invoke-direct {v1, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 599
    return-void

    .line 597
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process package failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static greylist-max-o readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .locals 4
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 512
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v1, "compatibility.zip"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    .line 514
    const/4 v2, 0x1

    .line 518
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 514
    return v2

    .line 516
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 517
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 517
    return v3

    .line 511
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "slotSwitch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 933
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/os/RecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    if-eqz p1, :cond_1

    .line 889
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 891
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/RecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 895
    return-void

    .line 893
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "system not prepared to apply update"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 887
    .end local v0    # "rs":Landroid/os/RecoverySystem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1408
    .local v2, "checkpointing":Z
    const/4 v3, 0x0

    .line 1409
    .local v3, "needReboot":Z
    const/4 v4, 0x0

    .line 1411
    .local v4, "vold":Landroid/os/IVold;
    :try_start_0
    const-string/jumbo v5, "vold"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v5

    move-object v4, v5

    .line 1412
    if-eqz v4, :cond_0

    .line 1413
    invoke-interface {v4}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v5

    move v2, v5

    goto :goto_0

    .line 1415
    :cond_0
    const-string v5, "Failed to get vold"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_0
    goto :goto_1

    .line 1417
    :catch_0
    move-exception v5

    .line 1418
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Failed to check for checkpointing"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 1425
    :try_start_1
    invoke-interface {v4, v0, v5}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1426
    const-string v5, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1431
    goto :goto_2

    .line 1427
    :catch_1
    move-exception v5

    .line 1428
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v6, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1430
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1432
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1435
    :cond_1
    const/4 v0, 0x0

    .line 1436
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--reason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "--prompt_and_wipe_app_data"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v0, v6, v5

    const/4 v5, 0x3

    aput-object v1, v6, v5

    invoke-static {p0, v6}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method public static greylist-max-o rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1366
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1367
    .local v2, "checkpointing":Z
    const/4 v3, 0x0

    .line 1368
    .local v3, "needReboot":Z
    const/4 v4, 0x0

    .line 1370
    .local v4, "vold":Landroid/os/IVold;
    :try_start_0
    const-string/jumbo v5, "vold"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v5

    move-object v4, v5

    .line 1371
    if-eqz v4, :cond_0

    .line 1372
    invoke-interface {v4}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v5

    move v2, v5

    goto :goto_0

    .line 1374
    :cond_0
    const-string v5, "Failed to get vold"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    goto :goto_1

    .line 1376
    :catch_0
    move-exception v5

    .line 1377
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Failed to check for checkpointing"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 1384
    :try_start_1
    invoke-interface {v4, v0, v5}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1385
    const-string v5, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1390
    goto :goto_2

    .line 1386
    :catch_1
    move-exception v5

    .line 1387
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v6, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1389
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1391
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1394
    :cond_1
    const/4 v0, 0x0

    .line 1395
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--reason="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1399
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "--prompt_and_wipe_data"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v0, v6, v5

    const/4 v5, 0x3

    aput-object v1, v6, v5

    invoke-static {p0, v6}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1401
    return-void
.end method

.method private greylist-max-o rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1830
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    goto :goto_0

    .line 1831
    :catch_0
    move-exception v0

    .line 1833
    :goto_0
    return-void
.end method

.method public static whitelist rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1490
    .local v3, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "--wipe_ab"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public static whitelist rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1450
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1451
    return-void
.end method

.method public static greylist-max-o rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1455
    const/4 v0, 0x0

    .line 1456
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1462
    return-void
.end method

.method public static blacklist rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1501
    const/4 v0, 0x0

    .line 1502
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1506
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method public static whitelist rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1009
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1015
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1022
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 1028
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 1056
    return-void
.end method

.method public static blacklist rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .param p5, "extraCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    move-object/from16 v10, p0

    const-string v0, "RecoverySystem"

    const-string/jumbo v1, "rebootWipeUserData++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    if-nez p3, :cond_1

    .line 1064
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 1065
    .local v1, "restrPol":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/sec/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1067
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 1066
    const-string v7, "RecoverySystem"

    const-string v8, "Wiping data (factory reset) is not allowed for this user."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1069
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wiping data is not allowed due to restriction policy."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    .end local v1    # "restrPol":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_1
    :goto_0
    const-string/jumbo v1, "user"

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/UserManager;

    .line 1074
    .local v11, "um":Landroid/os/UserManager;
    if-nez p3, :cond_3

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v11, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1077
    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1078
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 1077
    const-string v6, "RecoverySystem"

    const-string v7, "Wiping data (factory reset) is not allowed for this user."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1082
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wiping data is not allowed for this user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_3
    :goto_1
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    move-object v12, v1

    .line 1087
    .local v12, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v13, v1

    .line 1088
    .local v13, "hthread":Landroid/os/HandlerThread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebootWipeUserData: run handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    nop

    .line 1092
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 1093
    const-string/jumbo v1, "rebootWipeUserData: sendOrderedBroadcastAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 1097
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1099
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/RecoverySystem$3;

    invoke-direct {v5, v12}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    new-instance v6, Landroid/os/Handler;

    .line 1107
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1099
    const-string v4, "android.permission.MASTER_CLEAR"

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1110
    const-string/jumbo v1, "rebootWipeUserData: wait intent to complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v12}, Landroid/os/ConditionVariable;->block()V

    .line 1113
    const-string/jumbo v1, "rebootWipeUserData: continue.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1115
    const/4 v1, 0x0

    .line 1118
    .end local v13    # "hthread":Landroid/os/HandlerThread;
    .local v1, "hthread":Landroid/os/HandlerThread;
    const-class v2, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v10, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccManager;

    .line 1119
    .local v2, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz p4, :cond_4

    .line 1120
    const-string v3, "android"

    invoke-static {v10, v3}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    .line 1122
    :cond_4
    invoke-static {v10, v2}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V

    .line 1125
    :goto_2
    const/4 v3, 0x0

    .line 1126
    .local v3, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 1127
    const-string v3, "--shutdown_after"

    .line 1130
    :cond_5
    const/4 v4, 0x0

    .line 1131
    .local v4, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "yyyy-MM-ddTHH:mm:ssZ"

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1133
    .local v5, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1131
    .end local v5    # "timeStamp":Ljava/lang/String;
    :cond_6
    move-object/from16 v8, p2

    .line 1136
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1140
    .local v5, "localeArg":Ljava/lang/String;
    const-string v6, ""

    .line 1141
    .local v6, "extraCmdArg":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n--"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1149
    :cond_7
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1150
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "RecoverySystem"

    const-string v20, "Starting user data Wipe "

    .line 1149
    invoke-static/range {v15 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--wipe_data"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1157
    .local v7, "cmdStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!@[RecoverySystem] rebootWipeUserData: COMMAND String with Extra Command: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    const/4 v9, 0x1

    aput-object v7, v0, v9

    const/4 v9, 0x2

    aput-object v4, v0, v9

    const/4 v9, 0x3

    aput-object v5, v0, v9

    invoke-static {v10, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    .end local v7    # "cmdStr":Ljava/lang/String;
    nop

    .line 1171
    return-void

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "ioE":Ljava/io/IOException;
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1165
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to wipe user data (factory reset). "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1166
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1164
    const-string v19, "RecoverySystem"

    invoke-static/range {v15 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1168
    throw v0
.end method

.method private blacklist rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1886
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1900
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "name"    # Ljava/io/File;

    .line 1769
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1772
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1773
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1771
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1777
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "RecoverySystem"

    if-nez v0, :cond_1

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1780
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :goto_1
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;

    .line 1257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1258
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "euicc_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RecoverySystem"

    if-nez v1, :cond_0

    .line 1261
    const-string v1, "Skip removing eUICC invisible profiles as it is not provisioned."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void

    .line 1263
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1267
    :cond_1
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1268
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 1269
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 1270
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 1271
    .local v3, "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1275
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v2, "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 1277
    .local v5, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1278
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    .end local v5    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_3
    goto :goto_0

    .line 1281
    :cond_4
    invoke-static {p0, v2, p1}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z

    .line 1282
    return-void

    .line 1272
    .end local v2    # "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    :goto_1
    const-string v4, "Skip removing eUICC invisible profiles as no available profiles found."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void

    .line 1264
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    :goto_2
    const-string v1, "Skip removing eUICC invisible profiles as eUICC manager is not available."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/euicc/EuiccManager;",
            ")Z"
        }
    .end annotation

    .line 1286
    .local p1, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v1, "RecoverySystem"

    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    goto/16 :goto_4

    .line 1290
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1291
    .local v2, "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1293
    .local v3, "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v5, Landroid/os/RecoverySystem$5;

    invoke-direct {v5, v3, v2}, Landroid/os/RecoverySystem$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 1311
    .local v5, "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "android"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    const/high16 v8, 0xc000000

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v10, p0

    invoke-static {v10, v4, v6, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1319
    .local v8, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1320
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v9, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    new-instance v7, Landroid/os/HandlerThread;

    const-string v11, "euiccRemovingSubsReceiverThread"

    invoke-direct {v7, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v7, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1324
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1325
    .local v11, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    .line 1326
    invoke-virtual {v12, v5, v9, v13, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1328
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 1329
    .local v13, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remove invisible subscription "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1331
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from card "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1332
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1329
    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v14

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object v14

    .line 1334
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v14, v0, v8}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    .line 1335
    .end local v13    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 1337
    :cond_1
    move-object/from16 v15, p2

    .line 1338
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "euicc_removing_invisible_profiles_timeout_millis"

    const-wide/32 v13, 0xafc8

    .line 1337
    invoke-static {v0, v12, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1341
    .local v12, "waitingTimeMillis":J
    const-wide/16 v16, 0x3a98

    cmp-long v0, v12, v16

    if-gez v0, :cond_2

    .line 1342
    const-wide/16 v12, 0x3a98

    goto :goto_1

    .line 1343
    :cond_2
    const-wide/32 v16, 0x15f90

    cmp-long v0, v12, v16

    if-lez v0, :cond_3

    .line 1344
    const-wide/32 v12, 0x15f90

    .line 1346
    :cond_3
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1347
    const-string v0, "Timeout removing invisible euicc profiles."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    nop

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1356
    nop

    .line 1357
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1348
    return v4

    .line 1355
    .end local v12    # "waitingTimeMillis":J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1356
    nop

    .line 1357
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1360
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    return v0

    .line 1355
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 1352
    const-string v12, "Removing invisible euicc profiles interrupted"

    invoke-static {v1, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    nop

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1356
    nop

    .line 1357
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1353
    return v4

    .line 1355
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1356
    nop

    .line 1357
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1359
    throw v0

    .line 1286
    .end local v2    # "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v5    # "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v8    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "euiccHandler":Landroid/os/Handler;
    :cond_6
    move-object/from16 v10, p0

    move-object/from16 v15, p2

    .line 1287
    :goto_4
    const-string v0, "There are no eUICC invisible profiles needed to be removed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sender"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1844
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not request LSKF capture"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 1911
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1912
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1913
    return-object p0
.end method

.method public static whitelist scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "_s.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 954
    .local v1, "securityUpdate":Z
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 955
    const-string v0, "@/cache/recovery/block.map"

    .line 958
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--security\n"

    .line 962
    .local v4, "securityArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "command":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--security\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 967
    :cond_1
    const-string/jumbo v6, "recovery"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    .line 968
    .local v6, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v6, v5}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 971
    return-void

    .line 969
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private greylist-max-o setupBcb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1800
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1801
    :catch_0
    move-exception v0

    .line 1803
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 1
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 1789
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1790
    :catch_0
    move-exception v0

    .line 1792
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 25
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 334
    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 336
    .local v10, "fileLen":J
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 338
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 339
    .local v5, "startTimeMillis":J
    const/4 v0, 0x0

    if-eqz v9, :cond_0

    .line 340
    invoke-interface {v9, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 343
    :cond_0
    const-wide/16 v1, 0x6

    sub-long v1, v10, v1

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 344
    const/4 v1, 0x6

    new-array v2, v1, [B

    move-object v14, v2

    .line 345
    .local v14, "footer":[B
    invoke-virtual {v13, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 347
    const/4 v2, 0x2

    aget-byte v3, v14, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    const/4 v3, 0x3

    aget-byte v7, v14, v3

    if-ne v7, v4, :cond_f

    .line 351
    const/4 v4, 0x4

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v7, 0x5

    aget-byte v8, v14, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int v15, v4, v8

    .line 352
    .local v15, "commentSize":I
    aget-byte v4, v14, v0

    and-int/lit16 v4, v4, 0xff

    const/4 v8, 0x1

    aget-byte v1, v14, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v4, v1

    .line 354
    .local v4, "signatureStart":I
    add-int/lit8 v1, v15, 0x16

    new-array v1, v1, [B

    .line 355
    .local v1, "eocd":[B
    add-int/lit8 v3, v15, 0x16

    int-to-long v2, v3

    sub-long v2, v10, v2

    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 356
    invoke-virtual {v13, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 360
    aget-byte v2, v1, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_e

    aget-byte v2, v1, v8

    const/16 v8, 0x4b

    if-ne v2, v8, :cond_e

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_e

    const/4 v2, 0x3

    aget-byte v0, v1, v2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_e

    .line 365
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    const/16 v17, 0x3

    add-int/lit8 v2, v2, -0x3

    if-ge v0, v2, :cond_3

    .line 366
    aget-byte v2, v1, v0

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 368
    :cond_1
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v2

    .line 366
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/4 v3, 0x6

    .line 365
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x50

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, v15, 0x16

    sub-int/2addr v3, v4

    invoke-direct {v2, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 378
    .local v0, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object v7, v2

    .line 379
    .local v7, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_d

    array-length v2, v7

    if-eqz v2, :cond_d

    .line 382
    const/4 v2, 0x0

    aget-object v3, v7, v2

    move-object/from16 v16, v3

    .line 383
    .local v16, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 385
    .local v2, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 386
    .local v3, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_c

    array-length v8, v3

    if-eqz v8, :cond_c

    .line 389
    const/4 v8, 0x0

    aget-object v8, v3, v8

    .line 393
    .local v8, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v17, 0x0

    .line 395
    .local v17, "verified":Z
    if-nez p2, :cond_4

    sget-object v18, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    goto :goto_2

    :cond_4
    move-object/from16 v18, p2

    .line 394
    :goto_2
    invoke-static/range {v18 .. v18}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v18

    .line 396
    .local v18, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/security/cert/X509Certificate;

    .line 397
    .local v20, "c":Ljava/security/cert/X509Certificate;
    move-object/from16 v21, v1

    .end local v1    # "eocd":[B
    .local v21, "eocd":[B
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    const/16 v17, 0x1

    .line 399
    goto :goto_4

    .line 401
    .end local v20    # "c":Ljava/security/cert/X509Certificate;
    :cond_5
    move-object/from16 v1, v21

    goto :goto_3

    .line 396
    .end local v21    # "eocd":[B
    .restart local v1    # "eocd":[B
    :cond_6
    move-object/from16 v21, v1

    .line 402
    .end local v1    # "eocd":[B
    .restart local v21    # "eocd":[B
    :goto_4
    if-eqz v17, :cond_b

    .line 408
    move-object/from16 v19, v2

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .local v19, "signatureKey":Ljava/security/PublicKey;
    const-wide/16 v1, 0x0

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 409
    move-object v2, v8

    .end local v8    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v2, "signerInfo":Lsun/security/pkcs/SignerInfo;
    move-object/from16 v8, p1

    .line 410
    .local v8, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    new-instance v1, Landroid/os/RecoverySystem$1;

    move-object/from16 v20, v21

    move-object/from16 v21, v1

    .end local v21    # "eocd":[B
    .local v20, "eocd":[B
    move-object v12, v2

    move-object/from16 v22, v3

    .end local v2    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .local v12, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v22, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    move-wide v2, v10

    move/from16 v23, v4

    .end local v4    # "signatureStart":I
    .local v23, "signatureStart":I
    move v4, v15

    move-object/from16 v24, v7

    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    move-object v7, v13

    invoke-direct/range {v1 .. v8}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v1

    .line 455
    .local v1, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 456
    .local v2, "interrupted":Z
    if-eqz v9, :cond_7

    .line 457
    const/16 v3, 0x64

    invoke-interface {v9, v3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_7
    if-nez v2, :cond_a

    .line 464
    if-eqz v1, :cond_9

    .line 468
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .end local v15    # "commentSize":I
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .end local v17    # "verified":Z
    .end local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 469
    nop

    .line 472
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 475
    return-void

    .line 473
    :cond_8
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "package compatibility verification failed"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    .restart local v0    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .restart local v2    # "interrupted":Z
    .restart local v5    # "startTimeMillis":J
    .restart local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .restart local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v14    # "footer":[B
    .restart local v15    # "commentSize":I
    .restart local v16    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "verified":Z
    .restart local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    :cond_9
    :try_start_1
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "signature digest verification failed"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v3

    .line 461
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_a
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "verification was interrupted"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v3

    .line 403
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v2, "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v8, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v21    # "eocd":[B
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v7

    move-object v12, v8

    move-object/from16 v20, v21

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v8    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v21    # "eocd":[B
    .restart local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature doesn\'t match any trusted key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 386
    .end local v12    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v17    # "verified":Z
    .end local v18    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v1, "eocd":[B
    .restart local v2    # "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_c
    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 387
    .end local v1    # "eocd":[B
    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "eocd":[B
    .restart local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature contains no signedData"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 379
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "eocd":[B
    .end local v22    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "eocd":[B
    .restart local v4    # "signatureStart":I
    .restart local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_d
    move-object/from16 v20, v1

    move/from16 v23, v4

    move-object/from16 v24, v7

    .line 380
    .end local v1    # "eocd":[B
    .end local v4    # "signatureStart":I
    .end local v7    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v20    # "eocd":[B
    .restart local v23    # "signatureStart":I
    .restart local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature contains no certificates"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v1

    .line 360
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v20    # "eocd":[B
    .end local v23    # "signatureStart":I
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "eocd":[B
    .restart local v4    # "signatureStart":I
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_e
    move-object/from16 v20, v1

    move/from16 v23, v4

    .line 362
    .end local v1    # "eocd":[B
    .end local v4    # "signatureStart":I
    .restart local v20    # "eocd":[B
    .restart local v23    # "signatureStart":I
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 348
    .end local v15    # "commentSize":I
    .end local v20    # "eocd":[B
    .end local v23    # "signatureStart":I
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_f
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileLen":J
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .end local v5    # "startTimeMillis":J
    .end local v14    # "footer":[B
    .restart local v10    # "fileLen":J
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 469
    throw v0
.end method

.method public static whitelist verifyPackageCompatibility(Ljava/io/File;)Z
    .locals 3
    .param p0, "compatibilityFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 534
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 534
    return v1

    .line 533
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static greylist verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 487
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 489
    .local v4, "entrySize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 493
    long-to-int v2, v4

    new-array v2, v2, [B

    .line 494
    .local v2, "bytes":[B
    invoke-static {v1, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 495
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v2    # "bytes":[B
    .end local v4    # "entrySize":J
    goto :goto_0

    .line 490
    .restart local v4    # "entrySize":J
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid entry size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in the compatibility file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    .end local v4    # "entrySize":J
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 500
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 498
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "no entries found in the compatibility file"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1181
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1182
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v0, "euicc_provisioned"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    const-string v5, "RecoverySystem"

    if-nez v0, :cond_0

    .line 1185
    const-string v0, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return v4

    .line 1189
    :cond_0
    const-string v0, "euicc"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/euicc/EuiccManager;

    .line 1191
    .local v6, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1192
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 1193
    .local v4, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v7, v0

    .line 1195
    .local v7, "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Landroid/os/RecoverySystem$4;

    invoke-direct {v0, v7, v4}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    move-object v8, v0

    .line 1213
    .local v8, "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1214
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const/high16 v0, 0xc000000

    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v10, v0, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1221
    .local v12, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v0

    .line 1222
    .local v13, "filterConsent":Landroid/content/IntentFilter;
    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v9, "euiccWipeFinishReceiverThread"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 1224
    .local v9, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 1225
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v0, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v14, v0

    .line 1226
    .local v14, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v15, 0x0

    .line 1227
    invoke-virtual {v0, v8, v13, v15, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1228
    invoke-virtual {v6, v12}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 1230
    nop

    .line 1231
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v15, "euicc_factory_reset_timeout_millis"
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v16, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    const-wide/16 v3, 0x7530

    .line 1230
    :try_start_1
    invoke-static {v0, v15, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1234
    .local v3, "waitingTimeMillis":J
    const-wide/16 v17, 0x1388

    cmp-long v0, v3, v17

    if-gez v0, :cond_1

    .line 1235
    const-wide/16 v3, 0x1388

    goto :goto_0

    .line 1236
    :cond_1
    const-wide/32 v17, 0xea60

    cmp-long v0, v3, v17

    if-lez v0, :cond_2

    .line 1237
    const-wide/32 v3, 0xea60

    .line 1239
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v15, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :try_start_2
    invoke-virtual {v15, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1240
    const-string v0, "Timeout wiping eUICC data."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1241
    nop

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1241
    const/4 v5, 0x0

    return v5

    .line 1248
    .end local v3    # "waitingTimeMillis":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1249
    nop

    .line 1250
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 1243
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1248
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v0

    move-object/from16 v15, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 1243
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_1
    move-exception v0

    move-object/from16 v15, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_1

    .line 1248
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v0

    move-object v15, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 1243
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_2
    move-exception v0

    move-object v15, v4

    .line 1244
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1245
    const-string v3, "Wiping eUICC data interrupted"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1246
    nop

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1246
    const/4 v3, 0x0

    return v3

    .line 1248
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1249
    throw v0

    .line 1191
    .end local v7    # "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v8    # "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    .end local v9    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v13    # "filterConsent":Landroid/content/IntentFilter;
    .end local v14    # "euiccHandler":Landroid/os/Handler;
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    move-object/from16 v11, p1

    .line 1252
    const/4 v3, 0x0

    return v3
.end method
