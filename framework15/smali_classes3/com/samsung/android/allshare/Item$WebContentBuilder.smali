.class public Lcom/samsung/android/allshare/Item$WebContentBuilder;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebContentBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    }
.end annotation


# instance fields
.field private blacklist mAlbumTitle:Ljava/lang/String;

.field private blacklist mArtist:Ljava/lang/String;

.field private blacklist mCaptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

.field private blacklist mDate:Ljava/util/Date;

.field private blacklist mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field private blacklist mDuration:J

.field private blacklist mGenre:Ljava/lang/String;

.field private blacklist mMimetype:Ljava/lang/String;

.field private blacklist mSubtitlePath:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDuration:J

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    return-void
.end method

.method private blacklist checkSubtitlePathValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "file://"

    const-string v3, "file:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string v3, "/data/data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist build()Lcom/samsung/android/allshare/Item;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    const-string v2, "Item"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->checkSubtitlePathValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v3, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    const-string/jumbo v4, "video/*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "video/mp4"

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item build mime : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " item build uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v4, "content"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "file"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v21, v1

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/allshare/Item;->-$$Nest$smconvertItemTypeFromMimeType(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    return-object v3

    :pswitch_0
    new-instance v3, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    sget-object v6, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iget-object v7, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    iget-object v8, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mTitle:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iget-object v13, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iget-object v14, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mArtist:Ljava/lang/String;

    iget-object v15, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mAlbumTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mGenre:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDate:Ljava/util/Date;

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDuration:J

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v1

    invoke-direct/range {v5 .. v20}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V

    return-object v3

    :cond_5
    move-object/from16 v21, v1

    :goto_0
    const-string v1, "build error! scheme == null || scheme.contains(content) || scheme.contains(file)"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_6
    :goto_1
    const-string v1, "build error! mUri == null || mMimetype == null"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAlbumTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mAlbumTitle:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setArtist(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCaptionList(Ljava/util/ArrayList;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;)",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public whitelist setContentAttribute(Lcom/samsung/android/allshare/Item$ContentAttributeType;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object p0
.end method

.method public blacklist setDate(Ljava/util/Date;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setDeliveryMode(Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object p0
.end method

.method public blacklist setDuration(J)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mDuration:J

    return-object p0
.end method

.method public blacklist setGenre(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mGenre:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
