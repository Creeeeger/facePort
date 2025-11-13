.class public final Landroid/service/quickaccesswallet/GetWalletCardsRequest;
.super Ljava/lang/Object;
.source "GetWalletCardsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardHeightPx:I

.field private final blacklist mCardWidthPx:I

.field private final blacklist mIconSizePx:I

.field private final blacklist mMaxCards:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    iput p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    iput p3, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    iput p4, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCardHeightPx()I
    .locals 1

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    return v0
.end method

.method public whitelist getCardWidthPx()I
    .locals 1

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    return v0
.end method

.method public whitelist getIconSizePx()I
    .locals 1

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    return v0
.end method

.method public whitelist getMaxCards()I
    .locals 1

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
