.class public final Landroid/credentials/selection/DisabledProviderData;
.super Landroid/credentials/selection/ProviderData;
.source "DisabledProviderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/DisabledProviderData$1;

    invoke-direct {v0}, Landroid/credentials/selection/DisabledProviderData$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/DisabledProviderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/DisabledProviderData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/DisabledProviderData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toDisabledProviderInfo()Landroid/credentials/selection/DisabledProviderInfo;
    .locals 2

    new-instance v0, Landroid/credentials/selection/DisabledProviderInfo;

    invoke-virtual {p0}, Landroid/credentials/selection/DisabledProviderData;->getProviderFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/selection/DisabledProviderInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/credentials/selection/ProviderData;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
