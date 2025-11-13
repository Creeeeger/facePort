.class final Lcom/samsung/android/allshare/ItemImpl;
.super Lcom/samsung/android/allshare/Item;
.source "ItemImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/ItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DATETIME_FORMAT:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss"

.field private static final blacklist DATETIME_FORMAT_WITH_MS:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sss"

.field private static final blacklist DATETIME_FORMAT_WITH_MS_OFFSET:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sss+hh:mm"

.field private static final blacklist DATETIME_FORMAT_WITH_MS_OFFSET_Z:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sssZ"

.field private static final blacklist DATETIME_FORMAT_WITH_OFFSET:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss+hh:mm"

.field private static final blacklist DATETIME_FORMAT_WITH_OFFSET_Z:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ssZ"

.field private static final blacklist DATETIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final blacklist DATETIME_PATTERN_WITH_MS:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final blacklist DATETIME_PATTERN_WITH_MS_WITH_OFFSET:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

.field private static final blacklist DATETIME_PATTERN_WITH_MS_WITH_OFFSET_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final blacklist DATETIME_PATTERN_WITH_OFFSET:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

.field private static final blacklist DATETIME_PATTERN_WITH_OFFSET_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final blacklist DATE_FORMAT:Ljava/lang/String; = "CCYY-MM-DD"

.field private static final blacklist DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final blacklist TAG:Ljava/lang/String; = "ItemImpl"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/ItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/ItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 208
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/ItemImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist getFormatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 93
    .local v0, "dateStrLen":I
    const-string v1, "CCYY-MM-DD"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    const-string/jumbo v1, "yyyy-MM-dd"

    return-object v1

    .line 95
    :cond_0
    const-string v1, "CCYY-MM-DDThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 96
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    return-object v1

    .line 97
    :cond_1
    const-string v1, "CCYY-MM-DDThh:mm:ss+hh:mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 98
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    return-object v1

    .line 99
    :cond_2
    const-string v1, "CCYY-MM-DDThh:mm:ssZ"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 100
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    return-object v1

    .line 101
    :cond_3
    const-string v1, "CCYY-MM-DDThh:mm:ss.sss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 102
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    return-object v1

    .line 103
    :cond_4
    const-string v1, "CCYY-MM-DDThh:mm:ss.sss+hh:mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 104
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    return-object v1

    .line 105
    :cond_5
    const-string v1, "CCYY-MM-DDThh:mm:ss.sssZ"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 106
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    return-object v1

    .line 108
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 5
    .param p0, "b"    # Landroid/os/Bundle;

    .line 164
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 165
    return-object v0

    .line 166
    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "typeStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 168
    return-object v0

    .line 170
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    .line 172
    .local v2, "type":Lcom/samsung/android/allshare/Item$MediaType;
    sget-object v3, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 180
    return-object v0

    .line 178
    :pswitch_0
    new-instance v0, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 176
    :pswitch_1
    new-instance v0, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 174
    :pswitch_2
    new-instance v0, Lcom/samsung/android/allshare/AudioItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 198
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 1

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitrate()I
    .locals 1

    .line 357
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 521
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 508
    const-string v0, ""

    return-object v0

    .line 510
    :cond_0
    const-string v1, "BUNDLE_INT_ITEM_CHANNELNR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "channelNr":Ljava/lang/String;
    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 288
    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "itemConstructor":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v1

    .line 295
    .local v1, "conType":Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    sget-object v2, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 307
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 303
    :pswitch_0
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 301
    :pswitch_1
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 299
    :pswitch_2
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 297
    :pswitch_3
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 291
    .end local v1    # "conType":Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getDate()Ljava/util/Date;
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return-object v1

    .line 116
    :cond_0
    const-string v2, "BUNDLE_STRING_ITEM_DATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "dateStr":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 122
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemImpl;->getFormatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "format":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 124
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "dateTime_format":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 126
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 133
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "dateTime_format":Ljava/text/SimpleDateFormat;
    :cond_2
    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "p1":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDate  ParseException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 132
    const-string v5, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v4, "ItemImpl"

    invoke-static {v4, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    .end local v2    # "p1":Ljava/text/ParseException;
    :goto_0
    return-object v1

    .line 119
    .end local v1    # "date":Ljava/util/Date;
    :cond_3
    :goto_1
    return-object v1
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 250
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 1

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 1

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected final blacklist getObjectID()Ljava/lang/String;
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 145
    return-object v1

    .line 147
    :cond_0
    const-string v2, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "objID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 150
    return-object v1

    .line 152
    :cond_1
    return-object v2
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .locals 1

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResourceList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 365
    :cond_0
    nop

    .line 366
    const-string v1, "BUNDLE_PARCELABLE_ITEM_RESOURCE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    .local v0, "resourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$Resource;>;"
    if-nez v0, :cond_1

    .line 370
    return-object v1

    .line 372
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 373
    .local v3, "parcel":Landroid/os/Parcelable;
    new-instance v4, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;-><init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v3    # "parcel":Landroid/os/Parcelable;
    goto :goto_0

    .line 376
    :cond_2
    return-object v1
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1

    .line 352
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 1

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1

    .line 157
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    .line 59
    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    .line 315
    :cond_0
    const-string v1, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "deliveryModeStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v1

    .line 324
    .local v1, "deliveryMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    return-object v1

    .line 318
    .end local v1    # "deliveryMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :cond_2
    :goto_0
    const-string v1, "ItemImpl"

    const-string v2, " getWebContentDeliveryMode() : deliveryModeStr is null or empty! "

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v1
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 334
    :cond_0
    const-string v1, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "playModeStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v1

    .line 341
    .local v1, "playMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    return-object v1

    .line 337
    .end local v1    # "playMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v1
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    return-void
.end method
