.class public final Lcom/android/settingslib/drawer/Tile$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/settingslib/drawer/ProviderTile;

    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;-><init>(Landroid/os/Parcel;)V

    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    check-cast p1, Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mAuthority:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mMetaData:Landroid/os/Bundle;

    const-string v0, "com.android.settings.keyhint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/settingslib/drawer/ActivityTile;

    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;-><init>(Landroid/os/Parcel;)V

    :goto_0
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/android/settingslib/drawer/Tile;

    return-object p0
.end method
