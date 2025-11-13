.class public final Landroid/app/PictureInPictureUiState;
.super Ljava/lang/Object;
.source "PictureInPictureUiState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureUiState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureUiState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsStashed:Z

.field private final blacklist mIsTransitioningToPip:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/PictureInPictureUiState$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureUiState$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/PictureInPictureUiState;-><init>(ZZ)V

    return-void
.end method

.method private constructor blacklist <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    iput-boolean p2, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/app/PictureInPictureUiState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/PictureInPictureUiState;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/PictureInPictureUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/PictureInPictureUiState;

    iget-boolean v3, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    iget-boolean v4, v1, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    iget-boolean v4, v1, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isStashed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    return v0
.end method

.method public whitelist isTransitioningToPip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
