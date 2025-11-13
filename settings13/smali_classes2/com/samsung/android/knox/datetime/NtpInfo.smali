.class public Lcom/samsung/android/knox/datetime/NtpInfo;
.super Ljava/lang/Object;
.source "NtpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/datetime/NtpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMaxAttempts:I

.field private mPollingInterval:J

.field private mPollingIntervalShorter:J

.field private mServer:Ljava/lang/String;

.field private mTimeErrorThreshold:I

.field private mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/samsung/android/knox/datetime/NtpInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/datetime/NtpInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/datetime/NtpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    .line 34
    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    .line 39
    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    .line 44
    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/datetime/NtpInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/datetime/NtpInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pollingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pollingIntervalShorter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 123
    iget-object p2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget p2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
