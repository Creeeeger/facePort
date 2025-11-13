.class Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IAFD_ENTITY"
.end annotation


# instance fields
.field private blacklist enable:Z

.field private blacklist expID:I

.field private blacklist keyWord:Ljava/lang/String;

.field private blacklist ruleType:I

.field private blacklist rules:[Ljava/lang/String;

.field private blacklist suggestion:Ljava/lang/String;

.field private blacklist supportFlag:I

.field private blacklist tbID:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->enable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->expID:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyWord(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->keyWord:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    return p0
.end method

.method constructor blacklist <init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "tbID"    # I
    .param p2, "expID"    # I
    .param p3, "enable"    # Ljava/lang/Boolean;
    .param p4, "keyWord"    # Ljava/lang/String;
    .param p5, "rule"    # Ljava/lang/String;
    .param p6, "suggestion"    # Ljava/lang/String;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 7
    .param p1, "tbID"    # I
    .param p2, "expID"    # I
    .param p3, "enable"    # Ljava/lang/Boolean;
    .param p4, "keyWord"    # Ljava/lang/String;
    .param p5, "rule"    # Ljava/lang/String;
    .param p6, "suggestion"    # Ljava/lang/String;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 935
    .local p8, "hmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p8, p4, v0}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_0
    return-void
.end method

.method private blacklist initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "tbID"    # I
    .param p2, "expID"    # I
    .param p3, "enable"    # Z
    .param p4, "keyWord"    # Ljava/lang/String;
    .param p5, "rule"    # Ljava/lang/String;
    .param p6, "suggestion"    # Ljava/lang/String;

    .line 903
    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->tbID:I

    .line 904
    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->expID:I

    .line 905
    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->enable:Z

    .line 906
    iput-object p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->keyWord:Ljava/lang/String;

    .line 907
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    .line 908
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    .line 909
    const-string v2, ">,<"

    const/4 v3, 0x1

    if-eqz p5, :cond_2

    .line 910
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 911
    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 912
    .local v4, "strArray":[Ljava/lang/String;
    iput-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    .line 913
    aget-object v5, v4, v0

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    goto :goto_0

    .line 914
    :cond_0
    aget-object v5, v4, v0

    const-string v6, "libs"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    goto :goto_0

    .line 915
    :cond_1
    aget-object v5, v4, v0

    const-string v6, "32bit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    .line 918
    .end local v4    # "strArray":[Ljava/lang/String;
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->suggestion:Ljava/lang/String;

    .line 919
    iput v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    .line 920
    if-eqz p6, :cond_3

    .line 921
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 922
    iput-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->suggestion:Ljava/lang/String;

    .line 923
    invoke-virtual {p6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "strArray":[Ljava/lang/String;
    aget-object v0, v1, v0

    const-string/jumbo v2, "supportFlag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    .line 929
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_3
    return-void
.end method
