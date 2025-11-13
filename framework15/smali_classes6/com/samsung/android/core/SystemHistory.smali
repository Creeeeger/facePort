.class public Lcom/samsung/android/core/SystemHistory;
.super Ljava/lang/Object;
.source "SystemHistory.java"


# instance fields
.field private blacklist mEnableLog:Z

.field private blacklist mFormat:Ljava/text/SimpleDateFormat;

.field blacklist mLogMaxCount:I

.field private final blacklist mLogQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/SystemHistory;->mEnableLog:Z

    iput p1, p0, Lcom/samsung/android/core/SystemHistory;->mLogMaxCount:I

    iput-object p2, p0, Lcom/samsung/android/core/SystemHistory;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "<< MM-dd HH:mm:ss.SSS >>"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private blacklist discardOldest()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogMaxCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogMaxCount:I

    iget-object v1, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/core/SystemHistory;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/SystemHistory;->discardOldest()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/core/SystemHistory;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/SystemHistory;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist enableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/SystemHistory;->mEnableLog:Z

    return-void
.end method
