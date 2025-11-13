.class Landroid/text/TextUtils$StringWithRemovedChars;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringWithRemovedChars"
.end annotation


# instance fields
.field private final blacklist mOriginal:Ljava/lang/String;

.field private blacklist mRemovedChars:Ljava/util/BitSet;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method blacklist codePointAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method blacklist length()I
    .locals 1

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method blacklist removeAllCharAfter(I)V
    .locals 2

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    :cond_0
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method blacklist removeAllCharBefore(I)V
    .locals 2

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    :cond_0
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method blacklist removeRange(II)V
    .locals 2

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    :cond_0
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
