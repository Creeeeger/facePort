.class public Lcom/sec/android/iaft/IAFDDBManager;
.super Ljava/lang/Object;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;
    }
.end annotation


# static fields
.field static final blacklist CONTROLINFOTB_code:I = 0x1

.field static final blacklist DB_IAFD_TB:Ljava/lang/String; = "IAFD_TB"

.field static final blacklist DB_IAFD_TB_URI:Landroid/net/Uri;

.field static blacklist DBversion:I = 0x0

.field static final blacklist EXP_32BITAPP:I = 0x1e

.field static final blacklist EXP_AllFilesAccess:I = 0x1b

.field static final blacklist EXP_FeatureControl:I = 0x26

.field static final blacklist EXP_NoEnoughSpace:I = 0x22

.field static final blacklist EXP_NoSettingsProvidersForDual:I = 0x23

.field static final blacklist EXP_OOM:I = 0x19

.field static final blacklist EXP_REMOVABLEAPP:I = 0x1f

.field static final blacklist EXP_RepairLinks:I = 0x25

.field static final blacklist EXP_SUPPORT_AppWhiteLIST:I = 0x24

.field static final blacklist EXP_SUPPORT_CSC:I = 0x21

.field static final blacklist EXP_WEBVIEWREMOVABLEAPP:I = 0x20

.field static final blacklist EXP_WebView:I = 0x13

.field static final blacklist IAFD_AUTOHORITY:Ljava/lang/String; = "com.samsung.android.sm"

.field static final blacklist IAFD_FW_Version:I = 0x4

.field static final blacklist JE_CALLSTACKTB_code:I = 0x4

.field static final blacklist JE_CLASSNAMETB_code:I = 0x2

.field static final blacklist JE_DETAILMSGTB_code:I = 0x3

.field private static final blacklist MAX_DBINIT_RETRY_CNT:I = 0x19

.field static final blacklist NE_CALLSTACKTB_code:I = 0x5

.field static final blacklist NE_HEADERINFOTB_code:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDDBManager"

.field static final blacklist TryInitDB_code:I = 0xfe

.field static final blacklist columnsSMTB:[Ljava/lang/String;

.field static final blacklist initDB_code:I = 0xff

.field static blacklist isDBInit:Z = false

.field static blacklist isDBIniting:Z = false

.field static blacklist mDBInitReTryCnt:I = 0x0

.field private static final blacklist mReTryInterval:J = 0x1388L


# instance fields
.field private blacklist isCHNModel:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

.field private blacklist mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

.field private blacklist mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private blacklist mRegisteredSmartManagerIAFDObserver:Z

.field private blacklist mSalesCode:Ljava/lang/String;

.field private blacklist mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;


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

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initTBs()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 62
    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 63
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    .line 66
    const-string/jumbo v2, "tbID"

    const-string v3, "expID"

    const-string v4, "enable"

    const-string v5, "keyWord"

    const-string/jumbo v6, "rule"

    const-string/jumbo v7, "suggestion"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    .line 71
    const-string v1, "content://com.samsung.android.sm/IAFD_TB"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    .line 73
    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    .line 81
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    .line 85
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    .line 86
    sput-boolean v1, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDDBManager;
    .locals 1

    .line 94
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initTBs()V
    .locals 28

    .line 207
    move-object/from16 v1, p0

    const-string v0, "1"

    const-string v2, "mDBInitReTryCnt="

    iget-object v3, v1, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 208
    sput-boolean v4, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    .line 209
    return-void

    .line 211
    :cond_0
    sget-boolean v5, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    const-string v6, "IAFDDBManager"

    if-eqz v5, :cond_1

    .line 212
    const-string v0, "DB is initing, double initTBs, skip!"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 215
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 217
    const/4 v7, 0x0

    .line 220
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    sget-object v14, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v7, v3

    .line 221
    if-eqz v7, :cond_f

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eqz v3, :cond_4

    .line 224
    iget-object v3, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    new-instance v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-direct {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;-><init>()V

    iput-object v10, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    .line 225
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "tmpStr":Ljava/lang/String;
    const-string v10, ">,<"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "strArray":[Ljava/lang/String;
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setEnable(Z)V

    .line 229
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_maxSize(I)V

    .line 230
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v14

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_start(Ljava/lang/String;)V

    .line 231
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v15

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_maxSize(I)V

    .line 232
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cHeader_maxSize(I)V

    .line 233
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v8

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_start(Ljava/lang/String;)V

    .line 236
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v12, 0x100

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    .line 237
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v12, 0x200

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    .line 238
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v8, 0x0

    invoke-virtual {v11, v12, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 240
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sput v11, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    .line 241
    if-le v11, v5, :cond_2

    .line 242
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v12, v10, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    .line 243
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v12, 0x7

    aget-object v19, v10, v12

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    .line 245
    :cond_2
    sget v11, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-ge v11, v15, :cond_3

    .line 246
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v11, v8, v8, v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_3
    iget-object v8, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v11, "android.app.stubs>,<com.android.cts>,<com.android.test>,<com.android.app1>,<com.android.app2>,<com.android.app3"

    invoke-virtual {v8, v0, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v4}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 256
    .end local v3    # "tmpStr":Ljava/lang/String;
    .end local v10    # "strArray":[Ljava/lang/String;
    :cond_4
    const/16 v0, 0x9

    new-array v0, v0, [I

    aput v4, v0, v4

    aput v4, v0, v5

    aput v4, v0, v14

    aput v4, v0, v15

    aput v4, v0, v9

    const/4 v3, 0x5

    aput v4, v0, v3

    aput v4, v0, v13

    const/4 v3, 0x7

    aput v4, v0, v3

    const/16 v3, 0x8

    aput v4, v0, v3

    .line 257
    .local v0, "arrayCnt":[I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v3, "hashMapCN":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    new-array v8, v8, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 260
    .local v8, "tmpTB":[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    const/4 v10, 0x0

    .line 261
    .local v10, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 262
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 263
    .local v11, "iTB":I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 264
    .local v12, "curDBVersion":I
    if-gt v12, v9, :cond_5

    move/from16 v18, v5

    goto :goto_1

    :cond_5
    move/from16 v18, v4

    .line 265
    .local v18, "enable":Z
    :goto_1
    if-nez v12, :cond_6

    .line 266
    const/16 v18, 0x0

    .line 269
    :cond_6
    if-ne v11, v14, :cond_8

    .line 271
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 300
    :pswitch_0
    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    goto/16 :goto_3

    .line 296
    :pswitch_1
    if-eqz v18, :cond_7

    .line 297
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-boolean v14, v1, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v4, v13, v15, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 292
    :pswitch_2
    if-eqz v18, :cond_7

    .line 293
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocApp(Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :pswitch_3
    if-eqz v18, :cond_7

    .line 289
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v13, v15}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 284
    :pswitch_4
    if-eqz v18, :cond_7

    .line 285
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v14, v1, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v13, v15, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 280
    :pswitch_5
    if-eqz v18, :cond_7

    .line 281
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setwebView_pkgName(Ljava/lang/String;)V

    goto :goto_2

    .line 276
    :pswitch_6
    if-eqz v18, :cond_7

    .line 277
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setreMovableAppPaths(Ljava/lang/String;)V

    goto :goto_2

    .line 273
    :pswitch_7
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x5

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v13, v15}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 274
    nop

    .line 261
    .end local v11    # "iTB":I
    .end local v12    # "curDBVersion":I
    .end local v18    # "enable":Z
    :cond_7
    :goto_2
    const/4 v4, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_0

    .line 300
    .restart local v11    # "iTB":I
    .restart local v12    # "curDBVersion":I
    .restart local v18    # "enable":Z
    :goto_3
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const/4 v13, 0x3

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v13, 0x5

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v4

    move/from16 v20, v11

    move/from16 v26, v10

    move-object/from16 v27, v3

    invoke-direct/range {v19 .. v27}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v4, v8, v10

    .line 301
    aget v4, v0, v11

    add-int/2addr v4, v5

    aput v4, v0, v11

    add-int/lit8 v10, v10, 0x1

    .line 302
    const/4 v4, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_0

    .line 306
    :cond_8
    new-instance v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const/4 v13, 0x3

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v13, 0x5

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v19, v4

    move/from16 v20, v11

    invoke-direct/range {v19 .. v25}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v8, v10

    .line 307
    aget v4, v0, v11

    add-int/2addr v4, v5

    aput v4, v0, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_0

    .line 310
    .end local v11    # "iTB":I
    .end local v12    # "curDBVersion":I
    .end local v18    # "enable":Z
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v4, 0x0

    .local v4, "iStart":I
    const/4 v11, 0x0

    .line 314
    .local v11, "iEnd":I
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v3, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    .line 315
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v13, 0x2

    aget v14, v0, v13

    new-array v14, v14, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v14, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 316
    aget v12, v0, v13

    add-int/2addr v11, v12

    .line 317
    const/4 v10, 0x0

    :goto_4
    if-ge v4, v11, :cond_a

    .line 318
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v13, v8, v4

    aput-object v13, v12, v10

    .line 317
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 321
    :cond_a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v13, 0x3

    aget v14, v0, v13

    new-array v14, v14, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v14, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 322
    aget v12, v0, v13

    add-int/2addr v11, v12

    .line 323
    const/4 v10, 0x0

    :goto_5
    if-ge v4, v11, :cond_b

    .line 324
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v13, v8, v4

    aput-object v13, v12, v10

    .line 323
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 327
    :cond_b
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget v13, v0, v9

    new-array v13, v13, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v13, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 328
    aget v9, v0, v9

    add-int/2addr v11, v9

    .line 329
    const/4 v9, 0x0

    .end local v10    # "i":I
    .local v9, "i":I
    :goto_6
    if-ge v4, v11, :cond_c

    .line 330
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v4

    aput-object v12, v10, v9

    .line 329
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 333
    :cond_c
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v12, 0x5

    aget v13, v0, v12

    new-array v13, v13, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v13, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 334
    aget v10, v0, v12

    add-int/2addr v11, v10

    .line 335
    const/4 v9, 0x0

    :goto_7
    if-ge v4, v11, :cond_d

    .line 336
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v4

    aput-object v12, v10, v9

    .line 335
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 339
    :cond_d
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v12, 0x6

    aget v13, v0, v12

    new-array v13, v13, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v13, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 340
    aget v10, v0, v12

    add-int/2addr v11, v10

    .line 341
    const/4 v9, 0x0

    :goto_8
    if-ge v4, v11, :cond_e

    .line 342
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v4

    aput-object v12, v10, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 343
    .end local v0    # "arrayCnt":[I
    .end local v3    # "hashMapCN":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "iStart":I
    .end local v8    # "tmpTB":[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    .end local v9    # "i":I
    .end local v11    # "iEnd":I
    :cond_e
    nop

    .line 366
    nop

    .line 367
    sput-boolean v5, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    .line 368
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 369
    return-void

    .line 344
    :cond_f
    :try_start_1
    const-string v0, "cursor is null, get TB fail!"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    .line 346
    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v0, v5

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 347
    iget-object v3, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    if-eqz v3, :cond_10

    const/16 v3, 0x19

    if-ge v0, v3, :cond_10

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v3, 0xfe

    invoke-virtual {v0, v3}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v8, 0x1388

    invoke-virtual {v0, v4, v8, v9}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    :cond_10
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_11

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_11
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    .line 357
    const-string v3, "happened Exception : get TB fail!"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    sget v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v3, v5

    sput v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 360
    iget-object v4, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    if-eqz v4, :cond_12

    const/16 v4, 0x19

    if-ge v3, v4, :cond_12

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, v1, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v3, 0xfe

    invoke-virtual {v2, v3}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 364
    :cond_12
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 365
    return-void

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist deInit()V
    .locals 3

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IAFDDBManager"

    const-string v2, "exception occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .locals 1

    .line 102
    sget-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "salesCode"    # Ljava/lang/String;
    .param p3, "isCHN"    # Z

    .line 107
    sget-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDBManager;->setContext(Landroid/content/Context;)V

    .line 110
    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    .line 111
    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    .line 113
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-direct {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    const-string v2, "IAFDDBManagerThread"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    .line 118
    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->start()V

    goto :goto_1

    .line 120
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    if-nez v0, :cond_5

    .line 122
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    if-nez v2, :cond_3

    .line 123
    new-instance v2, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    .line 129
    sget v1, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    add-int/2addr v1, v0

    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 130
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    if-eqz v0, :cond_4

    const/16 v0, 0x19

    if-ge v1, v0, :cond_4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDBInitReTryCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDBManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    :cond_4
    return-void

    .line 138
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    if-eqz v1, :cond_6

    .line 139
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    :cond_6
    :goto_1
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method
