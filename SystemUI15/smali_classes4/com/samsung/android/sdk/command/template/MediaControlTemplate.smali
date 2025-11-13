.class public final Lcom/samsung/android/sdk/command/template/MediaControlTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCurrentActiveMode:I

.field public final mMediaInfo:Ljava/lang/String;

.field public final mModeFlags:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const-string v0, "mediacontrol"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    iput p2, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    iput-object p3, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_current_active_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mCurrentActiveMode:I

    const-string v0, "key_mode_flags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mModeFlags:I

    const-string v0, "key_media_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;->mMediaInfo:Ljava/lang/String;

    return-void
.end method


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
