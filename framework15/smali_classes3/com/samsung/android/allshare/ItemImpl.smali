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

    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/ItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/ItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/ItemImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist getFormatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "CCYY-MM-DD"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "yyyy-MM-dd"

    return-object v1

    :cond_0
    const-string v1, "CCYY-MM-DDThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    return-object v1

    :cond_1
    const-string v1, "CCYY-MM-DDThh:mm:ss+hh:mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    return-object v1

    :cond_2
    const-string v1, "CCYY-MM-DDThh:mm:ssZ"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    return-object v1

    :cond_3
    const-string v1, "CCYY-MM-DDThh:mm:ss.sss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    return-object v1

    :cond_4
    const-string v1, "CCYY-MM-DDThh:mm:ss.sss+hh:mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    return-object v1

    :cond_5
    const-string v1, "CCYY-MM-DDThh:mm:ss.sssZ"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_6

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    return-object v1

    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

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

    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitrate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method blacklist getBundle()Landroid/os/Bundle;
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_INT_ITEM_CHANNELNR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    :pswitch_0
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    :pswitch_1
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    :pswitch_2
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    :pswitch_3
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

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

.method public whitelist getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected final blacklist getObjectID()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
