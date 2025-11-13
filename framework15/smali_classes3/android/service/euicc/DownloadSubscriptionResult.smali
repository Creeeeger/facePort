.class public final Landroid/service/euicc/DownloadSubscriptionResult;
.super Ljava/lang/Object;
.source "DownloadSubscriptionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/DownloadSubscriptionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardId:I

.field private final blacklist mResolvableErrors:I

.field private final blacklist mResult:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/euicc/DownloadSubscriptionResult$1;

    invoke-direct {v0}, Landroid/service/euicc/DownloadSubscriptionResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/DownloadSubscriptionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResult:I

    iput p2, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResolvableErrors:I

    iput p3, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mCardId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResolvableErrors:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mCardId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/euicc/DownloadSubscriptionResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/euicc/DownloadSubscriptionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCardId()I
    .locals 1

    iget v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mCardId:I

    return v0
.end method

.method public whitelist getResolvableErrors()I
    .locals 1

    iget v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResolvableErrors:I

    return v0
.end method

.method public whitelist getResult()I
    .locals 1

    iget v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResult:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mResolvableErrors:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/euicc/DownloadSubscriptionResult;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
