.class public final Landroid/app/contentsuggestions/SelectionsRequest;
.super Ljava/lang/Object;
.source "SelectionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/SelectionsRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contentsuggestions/SelectionsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInterestPoint:Landroid/graphics/Point;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest$1;

    invoke-direct {v0}, Landroid/app/contentsuggestions/SelectionsRequest$1;-><init>()V

    sput-object v0, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/graphics/Point;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    iput-object p2, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    iput-object p3, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/graphics/Point;Landroid/os/Bundle;Landroid/app/contentsuggestions/SelectionsRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/contentsuggestions/SelectionsRequest;-><init>(ILandroid/graphics/Point;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    :goto_0
    return-object v0
.end method

.method public whitelist getInterestPoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getTaskId()I
    .locals 1

    iget v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
