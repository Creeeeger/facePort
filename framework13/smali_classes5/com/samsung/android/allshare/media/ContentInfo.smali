.class public Lcom/samsung/android/allshare/media/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/media/ContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mStartingPosition:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/samsung/android/allshare/media/ContentInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/media/ContentInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/media/ContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/ContentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/media/ContentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/ContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->-$$Nest$fgetmStartingPosition(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;Lcom/samsung/android/allshare/media/ContentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/ContentInfo;-><init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    .line 128
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStartingPosition()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    return-void
.end method
