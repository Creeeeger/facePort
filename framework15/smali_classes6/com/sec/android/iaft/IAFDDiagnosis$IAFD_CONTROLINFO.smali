.class Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IAFD_CONTROLINFO"
.end annotation


# instance fields
.field private blacklist IAFDDBControlFeature:Z

.field private blacklist JE_cstack_maxSize:I

.field private blacklist JE_cstack_start:Ljava/lang/String;

.field private blacklist NE_cHeader_maxSize:I

.field private blacklist NE_cstack_maxSize:I

.field private blacklist NE_cstack_start:Ljava/lang/String;

.field private blacklist callstack_maxSize:I

.field private blacklist dbVersion:I

.field private blacklist domainRepair:Ljava/lang/String;

.field private blacklist enable:Z

.field private blacklist enableCSCFilter:Z

.field private blacklist enableDetectAll32bitApps:Z

.field private blacklist enableWhiteList:Z

.field private blacklist hashMapOfRepairDBInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isSupportRepair:Z

.field private blacklist mainLanguage:Ljava/lang/String;

.field private blacklist minVocAppVersionCode:J

.field private blacklist minVocAppVersionCodeForOnlyShow:J

.field private blacklist postfixRepair:Ljava/lang/String;

.field private blacklist prefixRepair:Ljava/lang/String;

.field private blacklist reMovableAppPaths:[Ljava/lang/String;

.field private blacklist reason_maxSize:I

.field private blacklist supportCSCs:[Ljava/lang/String;

.field private blacklist supportflagDetectAll32bitApps:I

.field private blacklist webView_pkgName:Ljava/lang/String;

.field private blacklist whiteList:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetJE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetNE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetNE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->domainRepair:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableDetectAll32bitApps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isSupportRepair:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmainLanguage(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->mainLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetminVocAppVersionCode(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCode:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCodeForOnlyShow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->postfixRepair:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->prefixRepair:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreMovableAppPaths(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwebView_pkgName(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->webView_pkgName:Ljava/lang/String;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(ZILjava/lang/String;IILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    iput-object p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cHeader_maxSize:I

    iput-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    iput p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    iput p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    return-void
.end method


# virtual methods
.method blacklist getDBVersion()I
    .locals 1

    iget v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->dbVersion:I

    return v0
.end method

.method blacklist gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method blacklist inithashMapValues(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v4, "vocApp"

    const-string v7, "0"

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    move-object v5, p3

    move-object v6, p4

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v0, v4

    const-string v6, "Pile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aput-object v5, v1, v3

    goto :goto_1

    :cond_0
    const-string v6, "onekey"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    aput-object v5, v1, v7

    goto :goto_1

    :cond_1
    const-string v6, "onejump"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aput-object v5, v1, v7

    goto :goto_1

    :cond_2
    const-string v6, "NoCheckUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    aput-object v5, v1, v6

    goto :goto_1

    :cond_3
    const-string v6, "SmartMApp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_4

    aput-object v5, v1, v7

    goto :goto_1

    :cond_4
    const-string v6, "IAFDSelf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aput-object v5, v1, v7

    goto :goto_1

    :cond_5
    const-string v6, "Only32bit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x6

    aput-object v5, v1, v6

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    aget-object v2, v0, v3

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method blacklist isInWhiteList(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "com.sec.android.iaft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method blacklist setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ">,<"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    if-eqz v3, :cond_4

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    :cond_5
    :goto_2
    return-void
.end method

.method blacklist setCallstack_maxSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    return-void
.end method

.method blacklist setDBVersion(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->dbVersion:I

    return-void
.end method

.method blacklist setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    return-void
.end method

.method blacklist setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, ">,<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    const-string v3, "Repair"

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "CHNONLY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "ALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    return-void
.end method

.method blacklist setJE_cstack_maxSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    return-void
.end method

.method blacklist setJE_cstack_start(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    return-void
.end method

.method blacklist setNE_cHeader_maxSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cHeader_maxSize:I

    return-void
.end method

.method blacklist setNE_cstack_maxSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    return-void
.end method

.method blacklist setNE_cstack_start(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    return-void
.end method

.method blacklist setReason_maxSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    return-void
.end method

.method blacklist setSupportRepair(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isSupportRepair:Z

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isSupportRepair:Z

    return-void
.end method

.method blacklist setWhiteList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ">,<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method blacklist setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableDetectAll32bitApps:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ">,<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "supportFlag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    :cond_0
    return-void
.end method

.method blacklist sethashMapOfLinkForVocApp(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "pairlinks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCode:J

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->domainRepair:Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->prefixRepair:Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->postfixRepair:Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->mainLanguage:Ljava/lang/String;

    const/4 v2, 0x6

    move v8, v2

    :goto_0
    array-length v2, v0

    if-ge v8, v2, :cond_0

    aget-object v4, v0, v8

    add-int/lit8 v2, v8, 0x1

    aget-object v5, v0, v2

    add-int/lit8 v2, v8, 0x2

    aget-object v6, v0, v2

    const-string v7, "_"

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->inithashMapValues(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x3

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method blacklist sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "OnlyShowList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCodeForOnlyShow:J

    const/4 v1, 0x2

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    aget-object v5, v0, v1

    add-int/lit8 v2, v1, 0x1

    aget-object v6, v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-object v7, v0, v2

    const-string v8, ":;"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->inithashMapValues(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist setreMovableAppPaths(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method blacklist setwebView_pkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->webView_pkgName:Ljava/lang/String;

    return-void
.end method
