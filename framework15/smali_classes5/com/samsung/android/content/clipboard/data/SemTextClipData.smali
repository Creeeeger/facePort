.class public Lcom/samsung/android/content/clipboard/data/SemTextClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemTextClipData.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemTextClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist mNumberOfTrailingWhiteLines:I

.field private transient blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist setClipData()V
    .locals 3

    const-string/jumbo v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-void
.end method


# virtual methods
.method public blacklist convertForRemote()V
    .locals 0

    return-void
.end method

.method public blacklist deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "SemTextClipData"

    const-string/jumbo v1, "text equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected blacklist getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected blacklist readFromSource(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    return v1

    :sswitch_0
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    :goto_0
    return v0

    :cond_1
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_1

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toLoad()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/sec/clipboard/util/HtmlUtils;->isHtml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string v2, "&#10;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    if-le v1, v2, :cond_4

    iget v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    :cond_4
    const-string v2, "SemTextClipData"

    const-string/jumbo v3, "textclipdata toLoad called"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public blacklist toSave()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    :goto_1
    const-string v0, "SemTextClipData"

    const-string/jumbo v1, "textclipdata toSave called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SemTextClipData class."

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "SemTextClipData"

    const-string/jumbo v1, "text write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
