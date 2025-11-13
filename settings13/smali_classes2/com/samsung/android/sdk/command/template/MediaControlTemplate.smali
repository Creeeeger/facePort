.class public Lcom/samsung/android/sdk/command/template/MediaControlTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "MediaControlTemplate.java"


# instance fields
.field private mCurrentActiveMode:I

.field private mMediaInfo:Ljava/lang/String;

.field private mModeFlags:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_current_active_mode"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    const-string v0, "key_mode_flags"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    const-string v0, "key_media_info"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 150
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    const-string v2, "key_current_active_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    iget v1, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    const-string v2, "key_mode_flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    const-string v1, "key_media_info"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTemplateType()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method
