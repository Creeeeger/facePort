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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 7
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p8, p4, v0}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private blacklist initENTITY(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->tbID:I

    iput p2, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->expID:I

    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->enable:Z

    iput-object p4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->keyWord:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    const-string v2, ">,<"

    const/4 v3, 0x1

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->rules:[Ljava/lang/String;

    const-string v5, "pkgName"

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    goto :goto_0

    :cond_0
    const-string v5, "libs"

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    goto :goto_0

    :cond_1
    const-string v5, "32bit"

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->ruleType:I

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->suggestion:Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iput-object p6, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->suggestion:Ljava/lang/String;

    invoke-virtual {p6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    const-string v2, "supportFlag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->supportFlag:I

    :cond_3
    return-void
.end method
