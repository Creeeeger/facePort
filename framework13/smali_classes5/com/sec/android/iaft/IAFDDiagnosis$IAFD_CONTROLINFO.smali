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

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(ZILjava/lang/String;IILjava/lang/String;II)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "jcsms"    # I
    .param p3, "jcss"    # Ljava/lang/String;
    .param p4, "ncsms"    # I
    .param p5, "nchms"    # I
    .param p6, "ncss"    # Ljava/lang/String;
    .param p7, "rsms"    # I
    .param p8, "csms"    # I

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    .line 730
    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    .line 731
    iput-object p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    .line 732
    iput p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    .line 733
    iput p5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cHeader_maxSize:I

    .line 734
    iput-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    .line 735
    iput p7, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    .line 736
    iput p8, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    .line 737
    return-void
.end method


# virtual methods
.method blacklist gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method blacklist isInWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 838
    const-string v0, "com.sec.android.iaft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 839
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 841
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 842
    return v1

    .line 840
    .end local v5    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 845
    :cond_3
    return v2
.end method

.method blacklist setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;
    .param p3, "salesCode"    # Ljava/lang/String;

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    .line 769
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    .line 770
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 771
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    .line 775
    :cond_0
    if-eqz p2, :cond_1

    .line 776
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 777
    const-string v2, ">,<"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    .line 780
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableCSCFilter:Z

    if-eqz v2, :cond_5

    .line 781
    const/4 v2, 0x0

    .line 782
    .local v2, "enableTmp":Z
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportCSCs:[Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 783
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 784
    .local v6, "csc":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 785
    const/4 v2, 0x1

    .line 786
    goto :goto_1

    .line 783
    .end local v6    # "csc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 790
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    if-eqz v3, :cond_4

    .line 791
    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    goto :goto_2

    .line 793
    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    .line 795
    .end local v2    # "enableTmp":Z
    :cond_5
    :goto_2
    return-void
.end method

.method blacklist setCallstack_maxSize(I)V
    .locals 0
    .param p1, "csms"    # I

    .line 745
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->callstack_maxSize:I

    return-void
.end method

.method blacklist setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 738
    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enable:Z

    return-void
.end method

.method blacklist setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;
    .param p3, "isCHN"    # Z

    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    .line 798
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 799
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    .line 803
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->IAFDDBControlFeature:Z

    if-nez v1, :cond_1

    .line 804
    return-void

    .line 805
    :cond_1
    if-eqz p2, :cond_4

    .line 806
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 807
    const-string v1, ">,<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "strArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 809
    aget-object v3, v1, v2

    const-string v4, "Repair"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 810
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "CHNONLY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 811
    if-eqz p3, :cond_2

    .line 812
    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 815
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "ALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 816
    invoke-virtual {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 808
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 822
    .end local v1    # "strArray":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method blacklist setJE_cstack_maxSize(I)V
    .locals 0
    .param p1, "jcsms"    # I

    .line 739
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_maxSize:I

    return-void
.end method

.method blacklist setJE_cstack_start(Ljava/lang/String;)V
    .locals 0
    .param p1, "jcss"    # Ljava/lang/String;

    .line 740
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->JE_cstack_start:Ljava/lang/String;

    return-void
.end method

.method blacklist setNE_cHeader_maxSize(I)V
    .locals 0
    .param p1, "nchms"    # I

    .line 742
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cHeader_maxSize:I

    return-void
.end method

.method blacklist setNE_cstack_maxSize(I)V
    .locals 0
    .param p1, "ncsms"    # I

    .line 741
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_maxSize:I

    return-void
.end method

.method blacklist setNE_cstack_start(Ljava/lang/String;)V
    .locals 0
    .param p1, "ncss"    # Ljava/lang/String;

    .line 743
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->NE_cstack_start:Ljava/lang/String;

    return-void
.end method

.method blacklist setReason_maxSize(I)V
    .locals 0
    .param p1, "rsms"    # I

    .line 744
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reason_maxSize:I

    return-void
.end method

.method blacklist setSupportRepair(Z)V
    .locals 1
    .param p1, "isSupport"    # Z

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isSupportRepair:Z

    .line 851
    return-void
.end method

.method blacklist setWhiteList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/String;

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    .line 826
    if-eqz p1, :cond_0

    .line 827
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableWhiteList:Z

    .line 831
    :cond_0
    if-eqz p2, :cond_1

    .line 832
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 833
    const-string v0, ">,<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->whiteList:[Ljava/lang/String;

    .line 836
    :cond_1
    return-void
.end method

.method blacklist setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4
    .param p1, "enable"    # Ljava/lang/Boolean;
    .param p2, "suggestion"    # Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->enableDetectAll32bitApps:Z

    .line 756
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    .line 757
    if-eqz p2, :cond_0

    .line 758
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 759
    const-string v1, ">,<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "strArray":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "supportFlag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->supportflagDetectAll32bitApps:I

    .line 765
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method blacklist sethashMapOfLinkForVocApp(Ljava/lang/String;)V
    .locals 16
    .param p1, "rule"    # Ljava/lang/String;

    .line 853
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    .line 854
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 855
    const-string v2, ">,<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "strArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v3, "linkHMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v4, 0x0

    aget-object v5, v2, v4

    const-string/jumbo v6, "pairlinks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 858
    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->minVocAppVersionCode:J

    .line 859
    const/4 v6, 0x2

    aget-object v7, v2, v6

    iput-object v7, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->domainRepair:Ljava/lang/String;

    .line 860
    const/4 v7, 0x3

    aget-object v8, v2, v7

    iput-object v8, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->prefixRepair:Ljava/lang/String;

    .line 861
    const/4 v8, 0x4

    aget-object v9, v2, v8

    iput-object v9, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->postfixRepair:Ljava/lang/String;

    .line 862
    const/4 v9, 0x5

    aget-object v10, v2, v9

    iput-object v10, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->mainLanguage:Ljava/lang/String;

    .line 863
    const/4 v10, 0x6

    .local v10, "i":I
    :goto_0
    array-length v11, v2

    if-ge v10, v11, :cond_6

    .line 864
    aget-object v11, v2, v10

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 865
    .local v11, "strTmp":[Ljava/lang/String;
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "0"

    aput-object v13, v12, v4

    aput-object v13, v12, v5

    aput-object v13, v12, v6

    aput-object v13, v12, v7

    add-int/lit8 v13, v10, 0x1

    aget-object v13, v2, v13

    aput-object v13, v12, v8

    add-int/lit8 v13, v10, 0x2

    aget-object v13, v2, v13

    aput-object v13, v12, v9

    .line 866
    .local v12, "values":[Ljava/lang/String;
    array-length v13, v11

    move v14, v4

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v11, v14

    .line 867
    .local v15, "str":Ljava/lang/String;
    const-string v8, "Pile"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 868
    aput-object v15, v12, v4

    goto :goto_2

    .line 869
    :cond_0
    const-string v8, "NoOneKey"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 870
    aput-object v15, v12, v5

    goto :goto_2

    .line 871
    :cond_1
    const-string v8, "NoCheckUpdate"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 872
    aput-object v15, v12, v6

    goto :goto_2

    .line 873
    :cond_2
    const-string v8, "SmartMApp"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 874
    aput-object v15, v12, v7

    goto :goto_2

    .line 875
    :cond_3
    const-string v8, "IAFDSelf"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 876
    aput-object v15, v12, v7

    .line 866
    .end local v15    # "str":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x4

    goto :goto_1

    .line 879
    :cond_5
    aget-object v8, v11, v4

    invoke-virtual {v3, v8, v12}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .end local v11    # "strTmp":[Ljava/lang/String;
    .end local v12    # "values":[Ljava/lang/String;
    add-int/lit8 v10, v10, 0x3

    const/4 v8, 0x4

    goto :goto_0

    .line 882
    .end local v10    # "i":I
    :cond_6
    iput-object v3, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->hashMapOfRepairDBInfo:Ljava/util/HashMap;

    .line 885
    .end local v2    # "strArray":[Ljava/lang/String;
    .end local v3    # "linkHMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method blacklist setreMovableAppPaths(Ljava/lang/String;)V
    .locals 1
    .param p1, "rule"    # Ljava/lang/String;

    .line 747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 748
    const-string v0, ">,<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    goto :goto_0

    .line 750
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->reMovableAppPaths:[Ljava/lang/String;

    .line 752
    :goto_0
    return-void
.end method

.method blacklist setwebView_pkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 753
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->webView_pkgName:Ljava/lang/String;

    return-void
.end method
