.class public final Lcom/samsung/android/sdk/command/template/MediaControlTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCurrentActiveMode:I

.field public mMediaInfo:Ljava/lang/String;

.field public mModeFlags:I


# virtual methods
.method public final getDataBundle()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_current_active_mode"

    iget v2, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_mode_flags"

    iget v2, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_media_info"

    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTemplateType()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method
