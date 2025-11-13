.class public final Landroid/service/games/GameSessionActivityResult;
.super Ljava/lang/Object;
.source "GameSessionActivityResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameSessionActivityResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:Landroid/content/Intent;

.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/games/GameSessionActivityResult$1;

    invoke-direct {v0}, Landroid/service/games/GameSessionActivityResult$1;-><init>()V

    sput-object v0, Landroid/service/games/GameSessionActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    iput-object p2, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getResultCode()I
    .locals 1

    iget v0, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
