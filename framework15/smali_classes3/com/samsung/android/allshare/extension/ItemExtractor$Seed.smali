.class public Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/ItemExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# static fields
.field private static final blacklist DELIMITER:Ljava/lang/String; = ",@,#,"

.field private static final blacklist FIELD_NUMBER:I = 0x9


# instance fields
.field private blacklist mDuration:J

.field private blacklist mFileSize:J

.field private blacklist mItemType:Ljava/lang/String;

.field private blacklist mItemUri:Landroid/net/Uri;

.field private blacklist mMimeType:Ljava/lang/String;

.field private blacklist mObjectId:Ljava/lang/String;

.field private blacklist mProviderId:Ljava/lang/String;

.field private blacklist mSubtitle:Landroid/net/Uri;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDuration(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFileSize(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemUri(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMimeType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObjectId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProviderId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    return-void
.end method

.method public static blacklist parseSeedString(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v1, p0

    const-string/jumbo v2, "null"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseSeedString : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ItemExtractor"

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ",@,#,"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/16 v0, 0x9

    if-eq v5, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v11, -0x1

    :try_start_1
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v11, v13

    goto :goto_2

    :catch_1
    move-exception v0

    const-wide/16 v11, -0x1

    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v14, -0x1

    :try_start_3
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-wide/from16 v14, v16

    goto :goto_5

    :catch_3
    move-exception v0

    const-wide/16 v14, -0x1

    :goto_5
    new-instance v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    iput-object v8, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    iput-wide v11, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    iput-object v2, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    iput-object v13, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    iput-wide v14, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-object v0
.end method

.method public static blacklist parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .locals 19

    move-object/from16 v1, p0

    const-string/jumbo v2, "null"

    const/4 v0, 0x0

    const-string v3, "ItemExtractor"

    if-nez v1, :cond_0

    const-string/jumbo v2, "seedString == null"

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseSeedStringUsingSplit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ",@,#,"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/16 v7, 0x9

    if-eq v5, v7, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v6, 0x1

    aget-object v3, v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-object v7, v4, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v6, v4, v6

    add-int/lit8 v8, v0, 0x1

    aget-object v9, v4, v0

    add-int/lit8 v10, v8, 0x1

    aget-object v8, v4, v8

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v11, 0x0

    :goto_1
    add-int/lit8 v12, v10, 0x1

    aget-object v8, v4, v10

    const-wide/16 v13, -0x1

    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v13, v15

    goto :goto_2

    :catch_1
    move-exception v0

    const-wide/16 v13, -0x1

    :goto_2
    add-int/lit8 v10, v12, 0x1

    aget-object v8, v4, v12

    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v0, v10, 0x1

    aget-object v10, v4, v10

    add-int/lit8 v12, v0, 0x1

    aget-object v8, v4, v0

    const-wide/16 v15, -0x1

    :try_start_3
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-wide/from16 v15, v17

    move-wide v0, v15

    goto :goto_5

    :catch_3
    move-exception v0

    const-wide/16 v15, -0x1

    move-wide v0, v15

    :goto_5
    new-instance v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v15}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    iput-object v3, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    iput-object v7, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    iput-object v6, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    iput-object v9, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    iput-object v11, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    iput-wide v13, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    iput-object v2, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    iput-object v10, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    iput-wide v0, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-object v15
.end method


# virtual methods
.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-wide v0
.end method

.method public blacklist getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-wide v0
.end method

.method public blacklist getItemType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getItemUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getObjectID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSeedString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    const-string/jumbo v1, "null"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getSubtitle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-object v0
.end method
