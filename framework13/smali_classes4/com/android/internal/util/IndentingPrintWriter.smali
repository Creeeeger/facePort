.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Landroid/util/IndentingPrintWriter;
.source "IndentingPrintWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "wrapLength"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic greylist-max-r decreaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    return-object p0
.end method

.method public bridge synthetic greylist-max-r increaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 56
    return-object p0
.end method

.method public greylist-max-o printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 76
    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;

    .line 77
    return-object p0
.end method

.method public greylist-max-o printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 66
    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 67
    return-object p0
.end method

.method public greylist-max-o printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 71
    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 72
    return-object p0
.end method

.method public bridge synthetic blacklist setIndent(I)Landroid/util/IndentingPrintWriter;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0
    .param p1, "indent"    # I

    .line 49
    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(I)Landroid/util/IndentingPrintWriter;

    .line 50
    return-object p0
.end method

.method public greylist-max-o setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0
    .param p1, "indent"    # Ljava/lang/String;

    .line 44
    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    .line 45
    return-object p0
.end method
