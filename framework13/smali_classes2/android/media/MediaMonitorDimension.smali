.class public Landroid/media/MediaMonitorDimension;
.super Ljava/lang/Object;
.source "MediaMonitorDimension.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaMonitorDimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_NUM:I = 0x1

.field public static final blacklist TYPE_TEXT:I = 0x0

.field public static final blacklist TYPE_UNKNOWN:I = -0x1


# instance fields
.field public final blacklist mName:Ljava/lang/String;

.field private blacklist mNumber:J

.field private blacklist mText:Ljava/lang/String;

.field public final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/media/MediaMonitorDimension$1;

    invoke-direct {v0}, Landroid/media/MediaMonitorDimension$1;-><init>()V

    sput-object v0, Landroid/media/MediaMonitorDimension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    .line 56
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    .line 61
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumber()J
    .locals 2

    .line 92
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    iget-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    return-wide v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .locals 1

    .line 85
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    iget-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    :cond_1
    :goto_0
    return-void
.end method
