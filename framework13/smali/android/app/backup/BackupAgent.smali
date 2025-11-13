.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$IncludeExcludeRules;,
        Landroid/app/backup/BackupAgent$FailRunnable;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;,
        Landroid/app/backup/BackupAgent$BackupTransportFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_OPERATION_TYPE:I = 0x0

.field public static final whitelist FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED:I = 0x1

.field public static final whitelist FLAG_DEVICE_TO_DEVICE_TRANSFER:I = 0x2

.field public static final greylist-max-o FLAG_FAKE_CLIENT_SIDE_ENCRYPTION_ENABLED:I = -0x80000000

.field public static final blacklist RESULT_ERROR:I = -0x1

.field public static final blacklist RESULT_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupAgent"

.field public static final whitelist TYPE_DIRECTORY:I = 0x2

.field public static final greylist-max-o TYPE_EOF:I = 0x0

.field public static final whitelist TYPE_FILE:I = 0x1

.field public static final greylist-max-o TYPE_SYMLINK:I = 0x3


# instance fields
.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private volatile blacklist mOperationType:I

.field blacklist mSmartSwitchBackupPath:[Ljava/lang/String;

.field private blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->getBackupUserId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 204
    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/backup/BackupAgent;->mOperationType:I

    .line 1054
    new-instance v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v1, p0, v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$BackupServiceBinder-IA;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    .line 241
    return-void
.end method

.method private blacklist applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domainToken"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;>;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    .local p3, "includeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .local p4, "filterSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p5, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v7, p0

    move-object v8, p2

    move-object v9, p3

    if-eqz v9, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 643
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 644
    .local v11, "includeFile":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v11}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getRequiredFlags()I

    move-result v0

    .line 645
    invoke-virtual/range {p6 .. p6}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v1

    .line 644
    invoke-direct {p0, v0, v1}, Landroid/app/backup/BackupAgent;->areIncludeRequiredTransportFlagsSatisfied(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v11}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 649
    .end local v11    # "includeFile":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    :cond_1
    goto :goto_0

    .line 636
    :cond_2
    :goto_1
    iget v0, v7, Landroid/app/backup/BackupAgent;->mOperationType:I

    .line 637
    invoke-static {p0, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .line 638
    invoke-virtual {v0, p2}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 651
    :cond_3
    return-void
.end method

.method private greylist-max-o areIncludeRequiredTransportFlagsSatisfied(II)Z
    .locals 1
    .param p1, "includeFlags"    # I
    .param p2, "transportFlags"    # I

    .line 656
    and-int v0, p2, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getBackupUserId()I
    .locals 1

    .line 621
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/content/ContextWrapper;->getUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_0
    return v0
.end method

.method private blacklist getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 570
    .local v0, "excludedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o isFileEligibleForRestore(Ljava/io/File;)Z
    .locals 11
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    iget v0, p0, Landroid/app/backup/BackupAgent;->mOperationType:I

    invoke-static {p0, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .line 930
    .local v0, "bs":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullRestoreEnabled()Z

    move-result v1

    const-string/jumbo v2, "onRestoreFile \""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BackupXmlParserLogging"

    if-nez v1, :cond_1

    .line 931
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 933
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" : fullBackupContent not enabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 934
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    return v3

    .line 939
    :cond_1
    const/4 v1, 0x0

    .line 940
    .local v1, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    const/4 v6, 0x0

    .line 941
    .local v6, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, "destinationCanonicalPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v8

    move-object v1, v8

    .line 944
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .end local v6    # "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v2, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    nop

    .line 955
    if-eqz v2, :cond_3

    .line 956
    invoke-static {p1, v2}, Landroid/app/backup/BackupUtils;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 957
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestoreFile: \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\": listed in excludes; skipping."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_2
    return v3

    .line 965
    :cond_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 968
    const/4 v6, 0x0

    .line 969
    .local v6, "explicitlyIncluded":Z
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 970
    .local v9, "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    nop

    .line 971
    invoke-static {p1, v9}, Landroid/app/backup/BackupUtils;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v10

    or-int/2addr v6, v10

    .line 972
    if-eqz v6, :cond_4

    .line 973
    goto :goto_1

    .line 975
    .end local v9    # "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :cond_4
    goto :goto_0

    .line 976
    :cond_5
    :goto_1
    if-nez v6, :cond_7

    .line 977
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRestoreFile: Trying to restore \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\" but it isn\'t specified in the included files; skipping."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_6
    return v3

    .line 986
    .end local v6    # "explicitlyIncluded":Z
    :cond_7
    const/4 v3, 0x1

    return v3

    .line 945
    .end local v2    # "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local v6, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    :catch_0
    move-exception v8

    .line 946
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" : Exception trying to parse fullBackupContent xml file! Aborting onRestoreFile."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    :cond_8
    return v3
.end method

.method private blacklist manifestExcludesContainFilePath(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 4
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 884
    .local p1, "manifestExcludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;

    .line 885
    .local v1, "exclude":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    invoke-virtual {v1}, Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, "excludePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 887
    const/4 v0, 0x1

    return v0

    .line 889
    .end local v1    # "exclude":Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;
    .end local v2    # "excludePath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 890
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o waitForSharedPrefs()V
    .locals 3

    .line 230
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 231
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    invoke-direct {v1, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    .line 232
    .local v1, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 234
    :try_start_0
    iget-object v2, v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 236
    return-void
.end method


# virtual methods
.method public greylist-max-o attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1058
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    .line 1059
    return-void
.end method

.method public final whitelist fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 29
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .line 693
    const-string v1, "BackupAgent"

    const-string v0, "foo"

    const/4 v2, 0x0

    .line 696
    .local v2, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 701
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 702
    .local v4, "ceContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, "rootDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, "filesDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 705
    .local v7, "nbFilesDir":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 706
    .local v8, "dbDir":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, "spDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 708
    .local v10, "cacheDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 710
    .local v11, "codeCacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v12

    .line 711
    .local v12, "deContext":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 712
    .local v13, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .line 713
    .local v14, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 714
    .local v15, "deviceNbFilesDir":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 715
    .local v17, "deviceDbDir":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "deviceSpDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 718
    .local v18, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v16

    .line 720
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "efDir":Ljava/lang/String;
    .local v16, "efDir":Ljava/lang/String;
    :try_start_1
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v20, v4

    .end local v4    # "ceContext":Landroid/content/Context;
    .local v20, "ceContext":Landroid/content/Context;
    if-nez v2, :cond_0

    .line 721
    const/4 v2, 0x0

    goto :goto_0

    .line 722
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 725
    .local v2, "libDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v22, v3

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v22, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x3e8

    if-eq v4, v3, :cond_1

    .line 726
    const/4 v4, 0x0

    move-object/from16 v3, p0

    :try_start_2
    invoke-virtual {v3, v4}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 727
    .local v4, "efLocation":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 728
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v21
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v21

    move-object/from16 v4, v16

    goto :goto_1

    .line 736
    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v4    # "efLocation":Ljava/io/File;
    .end local v5    # "rootDir":Ljava/lang/String;
    .end local v6    # "filesDir":Ljava/lang/String;
    .end local v7    # "nbFilesDir":Ljava/lang/String;
    .end local v8    # "dbDir":Ljava/lang/String;
    .end local v9    # "spDir":Ljava/lang/String;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "deContext":Landroid/content/Context;
    .end local v13    # "deviceRootDir":Ljava/lang/String;
    .end local v14    # "deviceFilesDir":Ljava/lang/String;
    .end local v15    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v17    # "deviceDbDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .end local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v20    # "ceContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_4

    .line 725
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .restart local v5    # "rootDir":Ljava/lang/String;
    .restart local v6    # "filesDir":Ljava/lang/String;
    .restart local v7    # "nbFilesDir":Ljava/lang/String;
    .restart local v8    # "dbDir":Ljava/lang/String;
    .restart local v9    # "spDir":Ljava/lang/String;
    .restart local v10    # "cacheDir":Ljava/lang/String;
    .restart local v11    # "codeCacheDir":Ljava/lang/String;
    .restart local v12    # "deContext":Landroid/content/Context;
    .restart local v13    # "deviceRootDir":Ljava/lang/String;
    .restart local v14    # "deviceFilesDir":Ljava/lang/String;
    .restart local v15    # "deviceNbFilesDir":Ljava/lang/String;
    .restart local v17    # "deviceDbDir":Ljava/lang/String;
    .restart local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v20    # "ceContext":Landroid/content/Context;
    :cond_1
    move-object/from16 v3, p0

    .line 735
    :cond_2
    move-object/from16 v4, v16

    .end local v16    # "efDir":Ljava/lang/String;
    .local v4, "efDir":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v12, v16

    .line 739
    .end local v20    # "ceContext":Landroid/content/Context;
    .local v12, "filePath":Ljava/lang/String;
    nop

    .line 741
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_12

    .line 742
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_11

    .line 743
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_10

    .line 744
    move-object/from16 v3, v18

    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .local v3, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 745
    move-object/from16 v16, v3

    move-object/from16 v3, v19

    .end local v19    # "deviceCodeCacheDir":Ljava/lang/String;
    .local v3, "deviceCodeCacheDir":Ljava/lang/String;
    .local v16, "deviceCacheDir":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 746
    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 747
    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 753
    :cond_3
    const/16 v18, 0x0

    .line 754
    .local v18, "rootpath":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 755
    const-string v1, "db"

    .line 756
    .local v1, "domain":Ljava/lang/String;
    move-object/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    goto/16 :goto_2

    .line 757
    .end local v1    # "domain":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 758
    const-string/jumbo v1, "sp"

    .line 759
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    goto :goto_2

    .line 760
    .end local v1    # "domain":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 761
    const-string v1, "f"

    .line 762
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    goto :goto_2

    .line 763
    .end local v1    # "domain":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 764
    const-string/jumbo v1, "r"

    .line 765
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    goto :goto_2

    .line 766
    .end local v1    # "domain":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v2, v17

    .end local v17    # "deviceDbDir":Ljava/lang/String;
    .local v2, "deviceDbDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 767
    const-string v1, "d_db"

    .line 768
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v2

    goto :goto_2

    .line 769
    .end local v1    # "domain":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 770
    const-string v1, "d_sp"

    .line 771
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v0

    goto :goto_2

    .line 772
    .end local v1    # "domain":Ljava/lang/String;
    :cond_9
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 773
    const-string v1, "d_f"

    .line 774
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v14

    goto :goto_2

    .line 775
    .end local v1    # "domain":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 776
    const-string v1, "d_r"

    .line 777
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v13

    goto :goto_2

    .line 778
    .end local v1    # "domain":Ljava/lang/String;
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 779
    const-string v1, "ef"

    .line 780
    .restart local v1    # "domain":Ljava/lang/String;
    move-object/from16 v18, v4

    .line 792
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v24, v1

    move-object/from16 v26, v18

    move-object/from16 v27, v12

    move-object/from16 v28, p2

    invoke-static/range {v23 .. v28}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 793
    return-void

    .line 782
    .end local v1    # "domain":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v0

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "deviceDbDir":Ljava/lang/String;
    .local v20, "deviceDbDir":Ljava/lang/String;
    const-string v2, "File "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is in an unsupported location; skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 746
    .end local v18    # "rootpath":Ljava/lang/String;
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .local v2, "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .restart local v19    # "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_3

    .line 745
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .restart local v19    # "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_3

    .line 744
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v3, "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v3

    move-object/from16 v20, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .local v3, "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_3

    .line 743
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .local v18, "deviceCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_10
    move-object/from16 v20, v17

    move-object/from16 v16, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_3

    .line 742
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .restart local v18    # "deviceCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_11
    move-object/from16 v20, v17

    move-object/from16 v16, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    goto :goto_3

    .line 741
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    .restart local v0    # "deviceSpDir":Ljava/lang/String;
    .restart local v2    # "libDir":Ljava/lang/String;
    .local v17, "deviceDbDir":Ljava/lang/String;
    .restart local v18    # "deviceCacheDir":Ljava/lang/String;
    .local v19, "deviceCodeCacheDir":Ljava/lang/String;
    :cond_12
    move-object/from16 v20, v17

    move-object/from16 v16, v18

    move-object/from16 v3, v19

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    .line 748
    .end local v0    # "deviceSpDir":Ljava/lang/String;
    .end local v2    # "libDir":Ljava/lang/String;
    .end local v18    # "deviceCacheDir":Ljava/lang/String;
    .restart local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .restart local v16    # "deviceCacheDir":Ljava/lang/String;
    .local v17, "deviceSpDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    .restart local v20    # "deviceDbDir":Ljava/lang/String;
    :goto_3
    const-string v0, "lib, cache, code_cache, and no_backup files are not backed up"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 736
    .end local v3    # "deviceCodeCacheDir":Ljava/lang/String;
    .end local v5    # "rootDir":Ljava/lang/String;
    .end local v6    # "filesDir":Ljava/lang/String;
    .end local v7    # "nbFilesDir":Ljava/lang/String;
    .end local v8    # "dbDir":Ljava/lang/String;
    .end local v9    # "spDir":Ljava/lang/String;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "deviceRootDir":Ljava/lang/String;
    .end local v14    # "deviceFilesDir":Ljava/lang/String;
    .end local v15    # "deviceNbFilesDir":Ljava/lang/String;
    .end local v16    # "deviceCacheDir":Ljava/lang/String;
    .end local v17    # "deviceSpDir":Ljava/lang/String;
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "deviceDbDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_4

    .end local v4    # "efDir":Ljava/lang/String;
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "efDir":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v2, v16

    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_4

    .end local v16    # "efDir":Ljava/lang/String;
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "efDir":Ljava/lang/String;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v22, v3

    .line 737
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4
    const-string v3, "Unable to obtain canonical paths"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method

.method protected final blacklist fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "startingPath"    # Ljava/lang/String;
    .param p6, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .line 809
    .local p4, "manifestExcludes":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .local p5, "systemExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "BackupXmlParserLogging"

    iget v5, v1, Landroid/app/backup/BackupAgent;->mOperationType:I

    invoke-static {v1, v5}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v5

    .line 810
    invoke-virtual {v5, v0}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 811
    .local v5, "domainPath":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 813
    return-void

    .line 816
    :cond_0
    const-string v6, "/storage/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 817
    const-string v6, "ef_s"

    .line 818
    .local v6, "specificDomain":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 819
    .local v7, "slash":I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 820
    .end local p2    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 821
    move-object v0, v6

    move-object v12, v0

    goto :goto_0

    .line 816
    .end local v0    # "domain":Ljava/lang/String;
    .end local v6    # "specificDomain":Ljava/lang/String;
    .end local v7    # "slash":I
    .restart local p2    # "domain":Ljava/lang/String;
    :cond_1
    move-object v12, v0

    .line 824
    .end local p2    # "domain":Ljava/lang/String;
    .local v12, "domain":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    move-object/from16 v13, p3

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 825
    .local v14, "rootFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 826
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v15, v0

    .line 827
    .local v15, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 829
    :goto_1
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 830
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/io/File;

    .line 834
    .local v11, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v7

    .line 835
    .local v7, "stat":Landroid/system/StructStat;
    iget v8, v7, Landroid/system/StructStat;->st_mode:I

    invoke-static {v8}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v8, :cond_2

    :try_start_1
    iget v8, v7, Landroid/system/StructStat;->st_mode:I

    .line 836
    invoke-static {v8}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_2

    .line 838
    goto :goto_1

    .line 868
    .end local v7    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    move-object v1, v11

    goto :goto_3

    .line 862
    :catch_1
    move-exception v0

    move-object v1, v11

    goto/16 :goto_4

    .line 842
    .restart local v7    # "stat":Landroid/system/StructStat;
    :cond_2
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v8

    .line 845
    .local v10, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 846
    :try_start_3
    invoke-direct {v1, v2, v10}, Landroid/app/backup/BackupAgent;->manifestExcludesContainFilePath(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 847
    goto :goto_1

    .line 849
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v8, :cond_4

    .line 850
    goto :goto_1

    .line 854
    :cond_4
    :try_start_4
    iget v8, v7, Landroid/system/StructStat;->st_mode:I

    invoke-static {v8}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v8, :cond_5

    .line 855
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 856
    .local v8, "contents":[Ljava/io/File;
    if-eqz v8, :cond_5

    .line 857
    array-length v9, v8

    move v6, v0

    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v16, v8, v6

    move-object/from16 v17, v16

    .line 858
    .local v17, "entry":Ljava/io/File;
    move-object/from16 v1, v17

    .end local v17    # "entry":Ljava/io/File;
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v15, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 857
    .end local v1    # "entry":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_2

    .line 874
    .end local v7    # "stat":Landroid/system/StructStat;
    .end local v8    # "contents":[Ljava/io/File;
    :cond_5
    nop

    .line 877
    const/4 v8, 0x0

    move-object/from16 v6, p1

    move-object v7, v12

    move-object v9, v5

    move-object v0, v10

    .end local v10    # "filePath":Ljava/lang/String;
    .local v0, "filePath":Ljava/lang/String;
    move-object v1, v11

    .end local v11    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 878
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    move-object/from16 v1, p0

    goto :goto_1

    .line 868
    .restart local v11    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object v1, v11

    .line 870
    .end local v11    # "file":Ljava/io/File;
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v1    # "file":Ljava/io/File;
    :goto_3
    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error scanning file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_6
    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 862
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object v1, v11

    .line 864
    .end local v11    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    :goto_4
    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error canonicalizing path of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_7
    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 880
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v15    # "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_8
    return-void
.end method

.method greylist-max-o getHandler()Landroid/os/Handler;
    .locals 2

    .line 212
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getIncludeExcludeRules(Landroid/app/backup/FullBackup$BackupScheme;)Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .locals 3
    .param p1, "backupScheme"    # Landroid/app/backup/FullBackup$BackupScheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 583
    nop

    .line 584
    invoke-virtual {p1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v0

    .line 585
    .local v0, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    invoke-virtual {p1}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;

    move-result-object v1

    .line 587
    .local v1, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    new-instance v2, Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    invoke-direct {v2, v0, v1}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v2
.end method

.method public abstract whitelist onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final greylist-max-o onBind()Landroid/os/IBinder;
    .locals 1

    .line 1051
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 0

    .line 250
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;I)V

    .line 257
    return-void
.end method

.method public blacklist onCreate(Landroid/os/UserHandle;I)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "operationType"    # I

    .line 268
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 270
    iput-object p1, p0, Landroid/app/backup/BackupAgent;->mUser:Landroid/os/UserHandle;

    .line 271
    iput p2, p0, Landroid/app/backup/BackupAgent;->mOperationType:I

    .line 272
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 281
    return-void
.end method

.method public whitelist onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 33
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    move-object/from16 v8, p0

    iget v0, v8, Landroid/app/backup/BackupAgent;->mOperationType:I

    invoke-static {v8, v0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v9

    .line 419
    .local v9, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/FullBackupDataOutput;->getTransportFlags()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 425
    :cond_0
    :try_start_0
    invoke-virtual {v8, v9}, Landroid/app/backup/BackupAgent;->getIncludeExcludeRules(Landroid/app/backup/FullBackup$BackupScheme;)Landroid/app/backup/BackupAgent$IncludeExcludeRules;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .local v0, "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    nop

    .line 434
    nop

    .line 435
    invoke-static {v0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->-$$Nest$mgetIncludeMap(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Map;

    move-result-object v10

    .line 436
    .local v10, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    nop

    .line 437
    invoke-static {v0}, Landroid/app/backup/BackupAgent$IncludeExcludeRules;->-$$Nest$mgetExcludeSet(Landroid/app/backup/BackupAgent$IncludeExcludeRules;)Ljava/util/Set;

    move-result-object v11

    .line 439
    .local v11, "manifestExcludeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 440
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 444
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v14

    .line 445
    .local v14, "ceContext":Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 446
    .local v15, "rootDir":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, "filesDir":Ljava/lang/String;
    const-string v1, "foo"

    invoke-virtual {v14, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "databaseDir":Ljava/lang/String;
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 453
    .local v4, "deContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "deviceRootDir":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    .line 456
    move-object/from16 v17, v0

    .end local v0    # "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .local v17, "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "deviceDatabaseDir":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "deviceSharedPrefsDir":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "deviceRootDir":Ljava/lang/String;
    .local v16, "deviceRootDir":Ljava/lang/String;
    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v18, v9

    .end local v9    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .local v18, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    if-eqz v3, :cond_1

    .line 461
    new-instance v3, Ljava/io/File;

    iget-object v9, v13, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 462
    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v9, v3

    .line 467
    .local v9, "libDir":Ljava/lang/String;
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 470
    .local v3, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 478
    if-eqz v9, :cond_2

    .line 479
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_2
    move-object/from16 v19, v9

    .end local v9    # "libDir":Ljava/lang/String;
    .local v19, "libDir":Ljava/lang/String;
    invoke-direct {v8, v14}, Landroid/app/backup/BackupAgent;->getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 483
    .local v9, "extraExcludedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v20, v13

    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v20, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {v8, v4}, Landroid/app/backup/BackupAgent;->getExtraExcludeDirsIfAny(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v13

    .line 484
    .local v13, "extraExcludedDeviceDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 485
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 488
    const-string/jumbo v21, "r"

    move-object/from16 v22, v14

    move-object v14, v1

    .end local v1    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v14, "deviceSharedPrefsDir":Ljava/lang/String;
    .local v22, "ceContext":Landroid/content/Context;
    move-object/from16 v1, p0

    move-object v8, v2

    .end local v2    # "deviceFilesDir":Ljava/lang/String;
    .local v8, "deviceFilesDir":Ljava/lang/String;
    move-object v2, v12

    move-object/from16 v23, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v3

    .end local v3    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "deviceRootDir":Ljava/lang/String;
    .local v16, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "deviceSharedPrefsDir":Ljava/lang/String;
    move-object/from16 v3, v21

    move-object/from16 v21, v4

    .end local v4    # "deContext":Landroid/content/Context;
    .local v21, "deContext":Landroid/content/Context;
    move-object v4, v10

    move-object/from16 v24, v5

    .end local v5    # "sharedPrefsDir":Ljava/lang/String;
    .local v24, "sharedPrefsDir":Ljava/lang/String;
    move-object v5, v11

    move-object/from16 v25, v0

    move-object v0, v6

    .end local v6    # "databaseDir":Ljava/lang/String;
    .local v0, "databaseDir":Ljava/lang/String;
    .local v25, "deviceDatabaseDir":Ljava/lang/String;
    move-object/from16 v6, v16

    move-object/from16 v26, v0

    move-object v0, v7

    .end local v7    # "filesDir":Ljava/lang/String;
    .local v0, "filesDir":Ljava/lang/String;
    .local v26, "databaseDir":Ljava/lang/String;
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 491
    move-object/from16 v7, v16

    .end local v16    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 495
    const-string v3, "d_r"

    move-object v6, v7

    move-object/from16 v16, v9

    move-object v9, v7

    .end local v7    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v9, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "extraExcludedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 498
    invoke-virtual {v9, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v9, v13}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 503
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 504
    const-string v3, "f"

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 507
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 510
    const-string v3, "d_f"

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 513
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v7, v26

    .end local v26    # "databaseDir":Ljava/lang/String;
    .local v7, "databaseDir":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 517
    const-string v3, "db"

    move-object/from16 v26, v0

    move-object v0, v7

    .end local v7    # "databaseDir":Ljava/lang/String;
    .local v0, "databaseDir":Ljava/lang/String;
    .local v26, "filesDir":Ljava/lang/String;
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 520
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 522
    move-object/from16 v7, v25

    .end local v25    # "deviceDatabaseDir":Ljava/lang/String;
    .local v7, "deviceDatabaseDir":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 523
    const-string v3, "d_db"

    move-object/from16 v25, v0

    move-object v0, v7

    .end local v7    # "deviceDatabaseDir":Ljava/lang/String;
    .local v0, "deviceDatabaseDir":Ljava/lang/String;
    .local v25, "databaseDir":Ljava/lang/String;
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 526
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 529
    move-object/from16 v7, v24

    .end local v24    # "sharedPrefsDir":Ljava/lang/String;
    .local v7, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 530
    const-string/jumbo v3, "sp"

    move-object/from16 v24, v0

    move-object v0, v7

    .end local v7    # "sharedPrefsDir":Ljava/lang/String;
    .local v0, "sharedPrefsDir":Ljava/lang/String;
    .local v24, "deviceDatabaseDir":Ljava/lang/String;
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 533
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 535
    move-object/from16 v7, v23

    .end local v23    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v7, "deviceSharedPrefsDir":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 536
    const-string v3, "d_sp"

    move-object/from16 v23, v0

    move-object v0, v7

    .end local v7    # "deviceSharedPrefsDir":Ljava/lang/String;
    .local v0, "deviceSharedPrefsDir":Ljava/lang/String;
    .local v23, "sharedPrefsDir":Ljava/lang/String;
    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 539
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_4

    .line 549
    const/4 v1, 0x0

    move-object/from16 v27, v8

    move-object/from16 v8, p0

    .end local v8    # "deviceFilesDir":Ljava/lang/String;
    .local v27, "deviceFilesDir":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v28

    .line 550
    .local v28, "efLocation":Ljava/io/File;
    if-eqz v28, :cond_5

    .line 551
    const-string v3, "ef"

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v10

    move-object v5, v11

    move-object v6, v9

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 555
    iget-object v7, v8, Landroid/app/backup/BackupAgent;->mSmartSwitchBackupPath:[Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 556
    array-length v6, v7

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v29, v7, v5

    .line 557
    .local v29, "path":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v29

    move-object v4, v10

    move/from16 v30, v5

    move-object v5, v11

    move/from16 v31, v6

    move-object v6, v9

    move-object/from16 v32, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    .line 556
    .end local v29    # "path":Ljava/lang/String;
    add-int/lit8 v5, v30, 0x1

    move/from16 v6, v31

    move-object/from16 v7, v32

    goto :goto_1

    .line 561
    :cond_3
    const/4 v1, 0x0

    iput-object v1, v8, Landroid/app/backup/BackupAgent;->mSmartSwitchBackupPath:[Ljava/lang/String;

    goto :goto_2

    .line 548
    .end local v27    # "deviceFilesDir":Ljava/lang/String;
    .end local v28    # "efLocation":Ljava/io/File;
    .restart local v8    # "deviceFilesDir":Ljava/lang/String;
    :cond_4
    move-object/from16 v27, v8

    move-object/from16 v8, p0

    .line 566
    .end local v8    # "deviceFilesDir":Ljava/lang/String;
    .restart local v27    # "deviceFilesDir":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 426
    .end local v0    # "deviceSharedPrefsDir":Ljava/lang/String;
    .end local v10    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;>;"
    .end local v11    # "manifestExcludeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/backup/FullBackup$BackupScheme$PathWithRequiredFlags;>;"
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "extraExcludedDeviceDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "deviceRootDir":Ljava/lang/String;
    .end local v15    # "rootDir":Ljava/lang/String;
    .end local v16    # "extraExcludedDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "includeExcludeRules":Landroid/app/backup/BackupAgent$IncludeExcludeRules;
    .end local v18    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .end local v19    # "libDir":Ljava/lang/String;
    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "deContext":Landroid/content/Context;
    .end local v22    # "ceContext":Landroid/content/Context;
    .end local v23    # "sharedPrefsDir":Ljava/lang/String;
    .end local v24    # "deviceDatabaseDir":Ljava/lang/String;
    .end local v25    # "databaseDir":Ljava/lang/String;
    .end local v26    # "filesDir":Ljava/lang/String;
    .end local v27    # "deviceFilesDir":Ljava/lang/String;
    .local v9, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    :catch_0
    move-exception v0

    move-object/from16 v18, v9

    .line 427
    .end local v9    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    const/4 v1, 0x2

    const-string v2, "BackupXmlParserLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 428
    const-string v1, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    :cond_6
    return-void
.end method

.method public whitelist onQuotaExceeded(JJ)V
    .locals 0
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    .line 618
    return-void
.end method

.method public abstract whitelist onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    long-to-int v0, p2

    invoke-virtual {p0, p1, v0, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 359
    return-void
.end method

.method public blacklist onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    .local p5, "excludedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V

    .line 381
    return-void
.end method

.method protected greylist-max-o onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 24
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 997
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    const/4 v0, 0x0

    .line 1003
    .local v0, "basePath":Ljava/lang/String;
    iget v1, v10, Landroid/app/backup/BackupAgent;->mOperationType:I

    invoke-static {v10, v1}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1005
    .end local v0    # "basePath":Ljava/lang/String;
    .local v12, "basePath":Ljava/lang/String;
    const-string v0, "ef"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ef_s"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v22, p7

    goto :goto_1

    .line 1006
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    move-wide/from16 v22, v0

    .line 1010
    .end local p7    # "mode":J
    .local v22, "mode":J
    :goto_1
    if-eqz v12, :cond_2

    .line 1012
    new-instance v4, Ljava/io/File;

    move-object/from16 v14, p6

    invoke-direct {v4, v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .local v4, "outFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 1014
    .local v13, "outPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v5, p4

    move-wide/from16 v6, v22

    move-wide/from16 v8, p9

    invoke-virtual/range {v0 .. v9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 1017
    return-void

    .line 1010
    .end local v4    # "outFile":Ljava/io/File;
    .end local v13    # "outPath":Ljava/lang/String;
    :cond_2
    move-object/from16 v14, p6

    .line 1030
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move/from16 v16, p4

    move-wide/from16 v17, v22

    move-wide/from16 v19, p9

    invoke-static/range {v13 .. v21}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 1031
    return-void
.end method

.method public whitelist onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 13
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {p0, v1}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    move-result v2

    .line 925
    .local v2, "accept":Z
    if-eqz v2, :cond_0

    move-object v12, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v12, v3

    :goto_0
    move-object v4, p1

    move-wide v5, p2

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 926
    return-void
.end method

.method public whitelist onRestoreFinished()V
    .locals 0

    .line 1045
    return-void
.end method
