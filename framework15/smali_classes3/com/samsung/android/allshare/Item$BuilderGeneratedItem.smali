.class Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;
.super Lcom/samsung/android/allshare/Item;
.source "Item.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderGeneratedItem"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;",
            ">;"
        }
    .end annotation
.end field


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

.field private blacklist mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field private blacklist mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

.field private blacklist mDate:Ljava/util/Date;

.field private blacklist mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field private blacklist mDuration:J

.field private blacklist mGenre:Ljava/lang/String;

.field private blacklist mItemFilepath:Ljava/lang/String;

.field private blacklist mItemMimetype:Ljava/lang/String;

.field private blacklist mItemTitle:Ljava/lang/String;

.field private blacklist mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object p8, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    move-object v3, p1

    iput-object v3, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    move-wide/from16 v12, p13

    iput-wide v12, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    iput-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;Lcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-static {v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    instance-of v2, p1, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public blacklist getBitrate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_FILEPATH"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_CONTENT_ATTRIBUTE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_ARTIST"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUNDLE_STRING_ITEM_GENRE"

    iget-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "BUNDLE_LONG_ITEM_DURATION"

    iget-wide v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 2

    sget-object v0, Lcom/samsung/android/allshare/Item$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

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

    iget-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
