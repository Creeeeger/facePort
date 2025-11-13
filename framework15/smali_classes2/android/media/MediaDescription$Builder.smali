.class public Landroid/media/MediaDescription$Builder;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mIcon:Landroid/graphics/Bitmap;

.field private greylist-max-o mIconUri:Landroid/net/Uri;

.field private greylist-max-o mMediaId:Ljava/lang/String;

.field private greylist-max-o mMediaUri:Landroid/net/Uri;

.field private greylist-max-o mSubtitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaDescription;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/media/performance/flags/Flags;->mediaDescriptionAshmemBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    new-instance v1, Landroid/media/MediaDescription;

    iget-object v3, v0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    iget-object v9, v0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v10, v0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription-IA;)V

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/MediaDescription;

    iget-object v13, v0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v15, v0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    iget-object v5, v0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v6, v0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    const/16 v21, 0x0

    move-object v12, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v12 .. v21}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription-IA;)V

    return-object v1
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public whitelist setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
