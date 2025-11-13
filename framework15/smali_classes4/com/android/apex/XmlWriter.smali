.class public Lcom/android/apex/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist indent:I

.field private blacklist out:Ljava/io/PrintWriter;

.field private blacklist outBuffer:Ljava/lang/StringBuilder;

.field private blacklist startLine:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    return-void
.end method

.method private blacklist printIndent()V
    .locals 3

    nop

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/apex/XmlWriter;->indent:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    return-void
.end method

.method public static blacklist write(Lcom/android/apex/XmlWriter;Lcom/android/apex/ApexInfoList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "apex-info-list"

    invoke-virtual {p1, p0, v0}, Lcom/android/apex/ApexInfoList;->write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/apex/XmlWriter;->printXml()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method blacklist decreaseIndent()V
    .locals 1

    iget v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    return-void
.end method

.method blacklist increaseIndent()V
    .locals 1

    iget v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    return-void
.end method

.method blacklist print(Ljava/lang/String;)V
    .locals 5

    const/4 v0, -0x1

    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/apex/XmlWriter;->printIndent()V

    :cond_0
    iget-object v3, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    array-length v4, v0

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method blacklist printXml()V
    .locals 2

    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
