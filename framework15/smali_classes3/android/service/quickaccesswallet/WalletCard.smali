.class public final Landroid/service/quickaccesswallet/WalletCard;
.super Ljava/lang/Object;
.source "WalletCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/WalletCard$Builder;,
        Landroid/service/quickaccesswallet/WalletCard$CardType;
    }
.end annotation


# static fields
.field public static final whitelist CARD_TYPE_NON_PAYMENT:I = 0x2

.field public static final whitelist CARD_TYPE_PAYMENT:I = 0x1

.field public static final whitelist CARD_TYPE_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mCardId:Ljava/lang/String;

.field private final blacklist mCardImage:Landroid/graphics/drawable/Icon;

.field private final blacklist mCardLabel:Ljava/lang/CharSequence;

.field private blacklist mCardLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCardType:I

.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private final blacklist mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;
    .locals 0

    invoke-static {p0}, Landroid/service/quickaccesswallet/WalletCard;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/quickaccesswallet/WalletCard$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletCard$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/quickaccesswallet/WalletCard$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardId(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardType(Landroid/service/quickaccesswallet/WalletCard$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardType:I

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmContentDescription(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmPendingIntent(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardIcon(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardLabel(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmNonPaymentCardSecondaryImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardLocations(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLocations:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/WalletCard$Builder;Landroid/service/quickaccesswallet/WalletCard-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/WalletCard;-><init>(Landroid/service/quickaccesswallet/WalletCard$Builder;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;
    .locals 15

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    :goto_0
    move-object v11, v0

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Icon;

    :goto_1
    move-object v13, v1

    new-instance v14, Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-object v0, v14

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/service/quickaccesswallet/WalletCard$Builder;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v14, v11}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardLabel(Ljava/lang/CharSequence;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-result-object v0

    const/4 v1, 0x2

    if-ne v7, v1, :cond_2

    invoke-virtual {v0, v13}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setNonPaymentCardSecondaryImage(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardLocations(Ljava/util/List;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard$Builder;->build()Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v2

    return-object v2
.end method

.method private blacklist writeIconIfNonNull(Landroid/graphics/drawable/Icon;Landroid/os/Parcel;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCardIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCardImage()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getCardLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCardLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLocations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCardType()I
    .locals 1

    iget v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardType:I

    return v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getNonPaymentCardSecondaryImage()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist removeCardLocations()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLocations:Ljava/util/List;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v0, p1, p2}, Landroid/service/quickaccesswallet/WalletCard;->writeIconIfNonNull(Landroid/graphics/drawable/Icon;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v0, p1, p2}, Landroid/service/quickaccesswallet/WalletCard;->writeIconIfNonNull(Landroid/graphics/drawable/Icon;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLocations:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method
