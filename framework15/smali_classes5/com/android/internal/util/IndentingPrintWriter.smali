.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Landroid/util/IndentingPrintWriter;
.source "IndentingPrintWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic greylist-max-r decreaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public bridge synthetic greylist-max-r increaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public greylist-max-o printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public greylist-max-o printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public greylist-max-o printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public bridge synthetic blacklist setIndent(I)Landroid/util/IndentingPrintWriter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(I)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method

.method public greylist-max-o setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;
    .locals 0

    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    return-object p0
.end method
