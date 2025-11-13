.class Lcom/samsung/android/allshare/ProviderImpl$RootFolderItem;
.super Lcom/samsung/android/allshare/FolderItemImpl;
.source "ProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootFolderItem"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    invoke-super {p0, p1}, Lcom/samsung/android/allshare/FolderItemImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/samsung/android/allshare/FolderItemImpl;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method
