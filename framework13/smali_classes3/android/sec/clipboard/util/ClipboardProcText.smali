.class public Landroid/sec/clipboard/util/ClipboardProcText;
.super Ljava/lang/Object;
.source "ClipboardProcText.java"


# static fields
.field private static final blacklist IMG_BEGIN:Ljava/lang/String; = "<img"

.field private static final blacklist IMG_SRC:Ljava/lang/String; = "src=\""

.field private static final blacklist TAG:Ljava/lang/String; = "ClipboardProcText"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sSource"    # Ljava/lang/String;

    .line 37
    move-object v0, p0

    .line 38
    .local v0, "sSourceOriginal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "sSourceLower":Ljava/lang/String;
    const-string v2, ""

    .line 42
    .local v2, "sResult":Ljava/lang/String;
    const-string v3, "<img"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 43
    .local v4, "iIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 44
    :goto_0
    if-le v4, v5, :cond_2

    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string/jumbo v6, "src=\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 49
    .local v7, "iSubIndex":I
    if-lez v7, :cond_2

    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    .line 52
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 56
    .local v6, "i1":I
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 61
    .local v8, "resultLength":I
    if-lez v8, :cond_0

    const/16 v9, 0xff

    if-ge v8, v9, :cond_0

    .line 62
    goto :goto_1

    .line 67
    .end local v6    # "i1":I
    .end local v8    # "resultLength":I
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 70
    .end local v7    # "iSubIndex":I
    :cond_1
    const-string v3, "<iframe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "ClipboardProcText"

    const-string v5, "This is using a iframe tag."

    invoke-static {v3, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    :goto_1
    return-object v2
.end method
