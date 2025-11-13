.class public Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperSlowRegion"
.end annotation


# static fields
.field public static final whitelist CANCELED_REGION:I = 0x0

.field static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NORMAL_REGION:I = 0x2

.field public static final whitelist TITLE_REGION:I = 0x1


# instance fields
.field blacklist endTime:I

.field blacklist startTime:I

.field blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion$1;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->startTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->endTime:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->endTime:I

    return v0
.end method

.method public whitelist getRegionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->type:I

    return v0
.end method

.method public whitelist getStartTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->startTime:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
