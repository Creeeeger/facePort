.class public Lcom/sec/android/iaft/IAFDDBManager;
.super Ljava/lang/Object;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;
    }
.end annotation


# static fields
.field static final blacklist CONTROLINFOTB_code:I = 0x1

.field static final blacklist DB_IAFD_TB:Ljava/lang/String; = "IAFD_TB"

.field static final blacklist DB_IAFD_TB_URI_SM:Landroid/net/Uri;

.field static blacklist DBversion:I = 0x0

.field static final blacklist EXP_32BITAPP:I = 0x1e

.field static final blacklist EXP_AllFilesAccess:I = 0x1b

.field static final blacklist EXP_FeatureControl:I = 0x26

.field static final blacklist EXP_NoEnoughSpace:I = 0x22

.field static final blacklist EXP_NoSettingsProvidersForDual:I = 0x23

.field static final blacklist EXP_OOM:I = 0x19

.field static final blacklist EXP_REMOVABLEAPP:I = 0x1f

.field static final blacklist EXP_RepairLinks:I = 0x25

.field static final blacklist EXP_RepairOnlyShowList:I = 0x27

.field static final blacklist EXP_SUPPORT_AppWhiteLIST:I = 0x24

.field static final blacklist EXP_SUPPORT_CSC:I = 0x21

.field static final blacklist EXP_WEBVIEWREMOVABLEAPP:I = 0x20

.field static final blacklist EXP_WebView:I = 0x13

.field static final blacklist HandleDB_HotfixARDB_Update:I = 0xfb

.field static final blacklist HandleDB_HotfixDB_TryInit:I = 0xfa

.field static final blacklist HandleDB_HotfixIAFDDB_Update:I = 0xfc

.field static final blacklist HandleDB_SMDCDB_TryInit:I = 0xfe

.field static final blacklist HandleDB_SMDCDB_Update:I = 0xfd

.field static final blacklist HandleDB_allDB_init:I = 0xff

.field private static final blacklist IAFDDBTYPE_HC:I = 0x0

.field private static final blacklist IAFDDBTYPE_HOTFIX:I = 0x2

.field private static final blacklist IAFDDBTYPE_SMDC:I = 0x1

.field static final blacklist IAFD_AUTOHORITY_SM:Ljava/lang/String; = "com.samsung.android.sm"

.field static final blacklist IAFD_FW_Version:I = 0x5

.field static final blacklist JE_CALLSTACKTB_code:I = 0x4

.field static final blacklist JE_CLASSNAMETB_code:I = 0x2

.field static final blacklist JE_DETAILMSGTB_code:I = 0x3

.field private static final blacklist MAX_DBINIT_RETRY_CNT:I = 0x64

.field static final blacklist NE_CALLSTACKTB_code:I = 0x5

.field static final blacklist NE_HEADERINFOTB_code:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDDBManager"

.field static final blacklist columnsSMTB:[Ljava/lang/String;

.field static blacklist isDBIniting:Z = false

.field static blacklist mCurDBIndex:I = 0x0

.field static blacklist mHotfixDBInitReTryCnt:I = 0x0

.field private static final blacklist mReTryInterval:J = 0x1388L

.field static blacklist mSMDBInitReTryCnt:I


# instance fields
.field private blacklist isCHNModel:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

.field private blacklist mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

.field private blacklist mIAFDDBObserver:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

.field private blacklist mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private blacklist mRegisteredHotfixDBObserver:Z

.field private blacklist mRegisteredSmartManagerIAFDObserver:Z

.field private blacklist mSalesCode:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBObserver:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIfadDBData(Lcom/sec/android/iaft/IAFDDBManager;)[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredHotfixDBObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredHotfixDBObserver:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIAFDDBObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBObserver:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegisteredHotfixDBObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredHotfixDBObserver:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitDBByURIOrFile(Lcom/sec/android/iaft/IAFDDBManager;ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitIAFDDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initIAFDDBHotfix()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initTBs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncDBType(Lcom/sec/android/iaft/IAFDDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mSMDBInitReTryCnt:I

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mHotfixDBInitReTryCnt:I

    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    const-string v5, "rule"

    const-string v6, "suggestion"

    const-string v1, "tbID"

    const-string v2, "expID"

    const-string v3, "enable"

    const-string v4, "keyWord"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm/IAFD_TB"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI_SM:Landroid/net/Uri;

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredHotfixDBObserver:Z

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDDBManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initARDBHotfix()V
    .locals 0

    return-void
.end method

.method private blacklist initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "1"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v7, v1, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI_SM:Landroid/net/Uri;

    sget-object v10, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    move-object/from16 v7, p3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_b

    :cond_0
    move-object/from16 v7, p3

    :try_start_1
    invoke-static {v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v9, "IAFD_TB"

    sget-object v10, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v3

    move-object v3, v8

    :goto_0
    if-eqz v4, :cond_d

    :try_start_3
    new-instance v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-direct {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;-><init>()V

    move-object v2, v8

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x0

    if-eqz v8, :cond_3

    new-instance v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-direct {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;-><init>()V

    iput-object v8, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v15, ">,<"

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    iget-object v9, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v5, v15, v14

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9, v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setEnable(Z)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_maxSize(I)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v10

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_start(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_maxSize(I)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cHeader_maxSize(I)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v12

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_start(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v9, 0x100

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v9, 0x200

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v5, v9, v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    sget v9, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setDBVersion(I)V

    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-le v5, v6, :cond_1

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v9, 0x6

    aget-object v13, v15, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v9, 0x7

    aget-object v9, v15, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    :cond_1
    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-ge v5, v11, :cond_2

    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v9, "android.app.stubs>,<com.android.cts>,<com.android.test>,<com.android.app1>,<com.android.app2>,<com.android.app3"

    invoke-virtual {v5, v0, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    :cond_3
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    sub-int/2addr v8, v6

    new-array v8, v8, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-gt v15, v12, :cond_4

    move/from16 v16, v6

    goto :goto_2

    :cond_4
    move/from16 v16, v14

    :goto_2
    if-nez v15, :cond_5

    const/16 v16, 0x0

    move/from16 v25, v16

    goto :goto_3

    :cond_5
    move/from16 v25, v16

    :goto_3
    if-ne v13, v10, :cond_7

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    new-instance v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    goto/16 :goto_5

    :pswitch_1
    if-eqz v25, :cond_6

    iget-object v14, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    if-eqz v25, :cond_6

    iget-object v10, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v6, v1, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v10, v14, v11, v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :pswitch_3
    if-eqz v25, :cond_6

    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocApp(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    if-eqz v25, :cond_6

    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    if-eqz v25, :cond_6

    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v14, v1, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v11, v10, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    if-eqz v25, :cond_6

    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setwebView_pkgName(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_7
    if-eqz v25, :cond_6

    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setreMovableAppPaths(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_8
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    nop

    :cond_6
    :goto_4
    const/4 v6, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_1

    :goto_5
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v13

    move/from16 v23, v9

    move-object/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v6, v8, v9

    aget v6, v0, v13

    const/4 v10, 0x1

    add-int/2addr v6, v10

    aput v6, v0, v13

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_7
    new-instance v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v13

    invoke-direct/range {v16 .. v22}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v8, v9

    aget v6, v0, v13

    const/4 v10, 0x1

    add-int/2addr v6, v10

    aput v6, v0, v13

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    iput-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    const/4 v11, 0x2

    aget v13, v0, v11

    new-array v13, v13, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v13, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget v11, v0, v11

    add-int/2addr v10, v11

    const/4 v9, 0x0

    :goto_6
    if-ge v6, v10, :cond_9

    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v13, v8, v6

    aput-object v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x3

    aget v13, v0, v11

    new-array v13, v13, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v13, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget v11, v0, v11

    add-int/2addr v10, v11

    const/4 v9, 0x0

    :goto_7
    if-ge v6, v10, :cond_a

    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v13, v8, v6

    aput-object v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v11, 0x4

    aget v13, v0, v11

    new-array v13, v13, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v13, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget v11, v0, v11

    add-int/2addr v10, v11

    const/4 v9, 0x0

    :goto_8
    if-ge v6, v10, :cond_b

    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v13, v8, v6

    aput-object v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    aget v11, v0, v12

    new-array v11, v11, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget v11, v0, v12

    add-int/2addr v10, v11

    const/4 v9, 0x0

    :goto_9
    if-ge v6, v10, :cond_c

    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v11, 0x6

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget v11, v0, v11

    add-int/2addr v10, v11

    const/4 v9, 0x0

    :goto_a
    if-ge v6, v10, :cond_d

    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_d
    return-object v2

    :catch_1
    move-exception v0

    move-object v3, v8

    goto :goto_b

    :catch_2
    move-exception v0

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    const/4 v5, 0x0

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private blacklist initIAFDDBHotfix()V
    .locals 8

    const-string v0, "iafddbhotfix_db.bin.enc.dec"

    const-string v1, "/data/user/0/com.sec.android.iaft/iafd/db/"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v6, v0}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aput-object v0, v1, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v6, v1}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aput-object v1, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method private blacklist initTBs()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/iaft/IAFDHCDatabase;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v0, v2, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v2, 0xfe

    invoke-virtual {v0, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v2, 0xfa

    invoke-virtual {v0, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IAFDDBManager"

    const-string v3, "happened Exception : get TB fail!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    sput-boolean v1, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    return-void
.end method

.method private blacklist syncDBType()V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, -0x1

    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->getDBVersion()I

    move-result v2

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->getDBVersion()I

    move-result v0

    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncDBType(): mCurDBIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curDBVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAFDDBManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist deInit()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBObserver:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredHotfixDBObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IAFDDBManager"

    const-string v2, "exception occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 2

    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    sget v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDBManager;->setContext(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/iaft/IAFDHCDatabase;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDHCDatabase;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    const-string v2, "IAFDDBManagerThread"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public blacklist updateHotfixDB_ARDB()V
    .locals 0

    return-void
.end method

.method public blacklist updateHotfixDB_IAFDDB()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
