.class Lcom/samsung/android/allshare/IconImpl;
.super Lcom/samsung/android/allshare/Icon;
.source "IconImpl.java"


# instance fields
.field private blacklist mIconBundle:Landroid/os/Bundle;


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/allshare/Icon;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist getDepth()I
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "ICON_DEPTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist getHeight()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "ICON_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist getMimetype()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "ICON_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "ICON_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "ICON_WIDTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method
