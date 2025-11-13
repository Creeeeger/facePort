.class public Lcom/samsung/android/allshare/Item$LocalContentBuilder;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalContentBuilder"
.end annotation


# instance fields
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

.field private blacklist mFilepath:Ljava/lang/String;

.field private blacklist mMimetype:Ljava/lang/String;

.field private blacklist mSubtitlePath:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    return-void
.end method

.method protected static blacklist checkFilePathValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "file://"

    const-string v3, "file:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

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
    const-string v1, "Item"

    const-string v2, "[checkFilePathValid] filePath is null or length is 0"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public whitelist build()Lcom/samsung/android/allshare/Item;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->checkFilePathValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    const-string v2, "content:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    sget-object v3, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iget-object v4, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iget-object v9, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;Lcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/allshare/Item;->-$$Nest$smconvertItemTypeFromMimeType(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "Item"

    const-string v3, "build error!"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    new-instance v1, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    sget-object v4, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iget-object v5, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iget-object v10, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;Lcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setCaptionList(Ljava/util/ArrayList;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;)",
            "Lcom/samsung/android/allshare/Item$LocalContentBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mCaptionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public whitelist setContentAttribute(Lcom/samsung/android/allshare/Item$ContentAttributeType;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
