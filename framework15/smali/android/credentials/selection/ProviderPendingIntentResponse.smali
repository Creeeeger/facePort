.class public final Landroid/credentials/selection/ProviderPendingIntentResponse;
.super Ljava/lang/Object;
.source "ProviderPendingIntentResponse.java"

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
            "Landroid/credentials/selection/ProviderPendingIntentResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mResultCode:I

.field private final blacklist mResultData:Landroid/content/Intent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/ProviderPendingIntentResponse$1;

    invoke-direct {v0}, Landroid/credentials/selection/ProviderPendingIntentResponse$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/ProviderPendingIntentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    iput-object p2, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/ProviderPendingIntentResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResultCode()I
    .locals 1

    iget v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    return v0
.end method

.method public whitelist getResultData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/credentials/selection/ProviderPendingIntentResponse;->mResultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
