.class public Landroid/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private blacklist mCurrentIndent:[C

.field private blacklist mCurrentLength:I

.field private blacklist mEmptyLine:Z

.field private blacklist mIndentBuilder:Ljava/lang/StringBuilder;

.field private blacklist mSingleChar:[C

.field private final blacklist mSingleIndent:Ljava/lang/String;

.field private final blacklist mWrapLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .locals 2

    const-string v0, "  "

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    iput-object p2, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    iput p4, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private blacklist maybeWriteIndent()V
    .locals 3

    iget-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    :cond_0
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v2, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v2

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist decreaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 3

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public blacklist increaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 2

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public blacklist print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;
    .locals 3

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2

    move-object v0, p2

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3

    move-object v0, p2

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4

    move-object v0, p2

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5

    move-object v0, p2

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6

    move-object v0, p2

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7

    move-object v0, p2

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_8

    move-object v0, p2

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api println()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->write(I)V

    return-void
.end method

.method public blacklist setIndent(I)Landroid/util/IndentingPrintWriter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public blacklist setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .locals 3

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .locals 3

    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v2, p3}, Landroid/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public whitelist test-api write([CII)V
    .locals 10

    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int v1, p2, p3

    move v2, p2

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-char v3, p1, v3

    iget v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v5, 0x0

    const/16 v7, 0xa

    if-ne v3, v7, :cond_0

    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    move v2, v4

    iput-boolean v6, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_0
    iget v8, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v8, :cond_2

    iget v8, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    iget v9, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v9, v0

    if-lt v8, v9, :cond_2

    iget-boolean v8, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v8, :cond_1

    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    iput-boolean v6, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    sub-int v5, v4, v2

    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    iput-boolean v6, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    move v2, v4

    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_2
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    if-eq v2, v3, :cond_4

    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v4, v3, v2

    invoke-super {p0, p1, v2, v4}, Ljava/io/PrintWriter;->write([CII)V

    :cond_4
    return-void
.end method
