.class public Lcom/sec/android/iaft/IAFDDiagnosis;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;
    }
.end annotation


# static fields
.field private static final blacklist EXP_REPAIRINFO_AppFlag:I = 0x3

.field private static final blacklist EXP_REPAIRINFO_MainLan:I = 0x4

.field private static final blacklist EXP_REPAIRINFO_NoUpdateFlag:I = 0x2

.field private static final blacklist EXP_REPAIRINFO_Only32BitApp:I = 0x6

.field private static final blacklist EXP_REPAIRINFO_PileFlag:I = 0x0

.field private static final blacklist EXP_REPAIRINFO_RepairModeFlag:I = 0x1

.field private static final blacklist EXP_REPAIRINFO_SubLan:I = 0x5

.field private static final blacklist EXP_RULE_32BITONLY:I = 0x4

.field private static final blacklist EXP_RULE_LIBS:I = 0x2

.field private static final blacklist EXP_RULE_NONE:I = 0x0

.field private static final blacklist EXP_RULE_PKGN:I = 0x1

.field private static final blacklist EXP_UNKNOW:I = -0x1

.field private static final blacklist FLAG_SUPPORT3RDAPP:I = 0x1

.field private static final blacklist FLAG_SUPPORTSYSAPP:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDDiagnosis"


# instance fields
.field private blacklist callstack:Ljava/lang/String;

.field private blacklist component:Ljava/lang/String;

.field private blacklist curAppFlag:I

.field private blacklist curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field private blacklist dualUserId:I

.field private blacklist expType:I

.field private blacklist isCHNModel:Z

.field private blacklist isParseSuccess:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private blacklist mSalesCode:Ljava/lang/String;

.field private blacklist reason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDiagnosis-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;-><init>()V

    return-void
.end method

.method private blacklist findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p4

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-lt v1, v3, :cond_3

    move v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    if-ne v5, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    return v4
.end method

.method private blacklist getCallstack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    shl-int/lit8 v0, p3, 0x4

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, p3, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    move v5, p3

    :goto_0
    const/4 v6, 0x2

    if-ge v4, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    const-string v6, "Caused by:"

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    if-ltz v6, :cond_2

    sub-int v7, v3, v6

    if-ge v7, v5, :cond_1

    sub-int v7, v3, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, v6, v7

    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sub-int/2addr v5, v7

    move v3, v6

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private blacklist getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    const-string v1, "Cause:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v3, "Abort message:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v0, 0xe

    if-gez v1, :cond_0

    return-object v2

    :cond_0
    add-int v3, v1, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    move v3, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    move v1, v0

    add-int v2, v1, p2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    move v2, v3

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_5

    if-gt v2, v3, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    move v2, v5

    :cond_5
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getComponent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4

    const-string v0, "com."

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p2, :cond_8

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    const-string v2, "/data/app/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v2, "/app/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-gez v2, :cond_4

    if-ltz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_4
    :goto_0
    if-ltz v2, :cond_8

    const-string v0, "\n"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    add-int v3, v2, p3

    if-gt v0, v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    add-int v3, v2, p3

    :goto_1
    move v0, v3

    goto :goto_3

    :cond_6
    add-int v0, v2, p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    move v0, v3

    :goto_3
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_8
    return-object p1
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;
    .locals 1

    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getRepairType(ILjava/lang/String;)I
    .locals 9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "com.samsung.android.voc"

    const/16 v4, 0x4000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCode(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    return v2

    :cond_2
    const/16 v4, 0x27

    if-ne p1, v4, :cond_4

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v7, v7, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    return v2

    :cond_3
    move-object v0, p2

    :cond_4
    if-ne p1, v4, :cond_5

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    return v2

    :cond_5
    nop

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v3, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    aget-object v2, v3, v2

    const-string v4, "Pile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_6
    const/4 v2, 0x2

    return v2

    :cond_7
    return v2

    :catch_0
    move-exception v3

    return v2
.end method

.method private blacklist getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 5

    const-string v0, "backtrace:"

    if-eqz p3, :cond_5

    const/4 v1, 0x0

    const-string v2, "ABI:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x36

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "pid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_1

    const-string v3, " x0 "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    const-string v3, " r0 "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_0
    if-gt v3, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v2, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    add-int v0, v2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    move v0, v4

    if-gt v3, v0, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    move v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0xb

    :goto_3
    add-int v1, v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_4
    move v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist initData(Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-eqz p1, :cond_0

    const/16 v0, 0x14

    const/16 v1, 0xa

    :goto_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    const-string v2, "IAFDDiagnosis"

    const-string v3, "initData wait..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "==IAFD=="

    const-string v2, "initData fail, callstack as the following:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private blacklist is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v4

    :cond_0
    const-string v2, "arm64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lib64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private blacklist isAllFilesAccessOff(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const-string v2, "android:manage_external_storage"

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isAvalilableSizeNoEnough()Z
    .locals 8

    const-wide/32 v0, 0x8000000

    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v5, v3

    cmp-long v7, v5, v0

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isContainExpClassName(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_4

    return v0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    iput-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    if-lez v5, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method private blacklist isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v4

    and-int/2addr v4, p4

    if-ne v4, p4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetkeyWord(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    iput-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    if-eq v1, v4, :cond_6

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    return v4

    :cond_6
    :goto_2
    return v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method private blacklist isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    return v2
.end method

.method private blacklist isNativeCrash(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Native crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private blacklist isRemovableApp(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreMovableAppPaths(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v3, 0x13

    if-ne p3, v3, :cond_1

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method private blacklist parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v8, "IAFDDiagnosis"

    const/4 v9, 0x0

    iput v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    iput-boolean v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    if-nez v7, :cond_0

    return v9

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-eqz v2, :cond_2

    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_1

    and-int/lit16 v10, v4, 0x80

    if-nez v10, :cond_1

    const-string v10, "com.samsung."

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.sec."

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const/4 v10, 0x2

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    :cond_2
    invoke-direct {v1, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    const/4 v10, -0x1

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    const/4 v10, 0x0

    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v11, :cond_3

    return v9

    :cond_3
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v11

    if-nez v11, :cond_4

    return v9

    :cond_4
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v11, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isInWhiteList(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    return v9

    :cond_5
    const-string v11, "parseExpType start"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/sec/android/iaft/IAFDDiagnosis;->isNativeCrash(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v15, v15, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v15}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v15

    invoke-direct {v1, v7, v15, v9}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    invoke-direct {v1, v7, v15, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    if-eqz v11, :cond_6

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v12

    invoke-direct {v1, v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    :cond_6
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_7

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    move v12, v13

    :cond_7
    invoke-virtual {v14, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    :cond_8
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v12, v14, v13, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    and-int/2addr v12, v13

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne v12, v13, :cond_9

    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v10, 0x1e

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0

    :cond_9
    if-eqz v14, :cond_b

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v14, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_a

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v14, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_b
    if-eqz v11, :cond_c

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_c

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_c
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz v12, :cond_e

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    if-ne v12, v0, :cond_d

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_d

    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v14, v10, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_d
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_e

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_e

    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_e
    goto/16 :goto_1

    :cond_f
    const-string v11, ""

    if-eqz v6, :cond_11

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_10

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    move v12, v13

    :cond_10
    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    :cond_11
    if-eqz v7, :cond_13

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v7, v12, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    goto :goto_0

    :cond_12
    move v13, v12

    :goto_0
    invoke-virtual {v11, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    :cond_13
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v12, v11, v13, v9}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    and-int/2addr v12, v13

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne v12, v13, :cond_14

    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/16 v10, 0x1e

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0

    :cond_14
    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v5, v12}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpClassName(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_15

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_15
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v6, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_16

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_16
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v6, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_17

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_17
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_18

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_18
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_19

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_19
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_1a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz v12, :cond_1c

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    if-ne v12, v0, :cond_1b

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_1b

    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v11, v10, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    :cond_1b
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1c

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_1c

    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1c
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v10, "parseExpType fail, skip, callstack as the following:"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v9
.end method

.method private blacklist parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const-string v3, "Only32bit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method


# virtual methods
.method public blacklist getExpType()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExpType() expType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0
.end method

.method public blacklist getParseStatus()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAFDDiagnosis Parse successful,expType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    return-void
.end method

.method public blacklist parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    iput p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    return v3

    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    invoke-direct {p0, v1, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAvalilableSizeNoEnough()Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :sswitch_2
    invoke-direct {p0, p4, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAllFilesAccessOff(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetwebView_pkgName(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    const/16 v4, 0x13

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/iaft/IAFDDiagnosis;->isRemovableApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :goto_0
    if-eqz v1, :cond_1

    iput v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    :cond_1
    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x1b -> :sswitch_2
        0x22 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    return-void
.end method

.method public blacklist showIAFDCrashDialogs(IILjava/lang/String;)Z
    .locals 11

    const-string v0, "com.sec.android.iaft.IAFDService"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v3

    invoke-direct {p0, v3, p3}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.sm.ACTION_START_THIRD_APP_ERROR_DIALOG"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v6, "com.samsung.android.lool"

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IAFDDiagnosis"

    const-string v5, "Show3rdAppErrorUiExt() startService SM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    const-string v6, "com.sec.android.iaft"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v0

    const/16 v6, 0x27

    if-ne v0, v6, :cond_1

    move-object v5, p3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v6, "onekey"

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "OneKeyRepairMode"

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v6, "onejump"

    aget-object v10, v0, v4

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v6, "0"

    aget-object v8, v0, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, "CheckUpdateFlag"

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    const/4 v6, 0x4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetmainLanguage(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v6, 0x5

    :cond_5
    const-string v9, "null"

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-string v10, "targetUrl"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "repairTrigAPP"

    aget-object v7, v0, v7

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string v0, "pkgName"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "userId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "type"

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "repeat"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "component"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "error_stack"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pkgUserId"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "repairType"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "dualUserId"

    iget v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isCHNModel"

    iget-boolean v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-lez v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v0, p3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const-string v6, "versionCode"

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "versionName"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "appName"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "hasUpdate"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v5, "commandType"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
