.class public Lcom/samsung/android/knox/datetime/NtpInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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

.field public static final NOT_SET_INT:I

.field public static final NOT_SET_LONG:J


# instance fields
.field public mMaxAttempts:I

.field public mPollingInterval:J

.field public mPollingIntervalShorter:J

.field public mServer:Ljava/lang/String;

.field public mTimeErrorThreshold:I

.field public mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/datetime/NtpInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/datetime/NtpInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/datetime/NtpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v3, 0x1070132

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const-string v5, ""

    if-lez v4, :cond_0

    aget-object v2, v3, v2

    const-string v3, "ntp://"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_ntpTimeout"

    const-string v4, "integer"

    const-string v6, "android"

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    const-string v0, "ntp_server"

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "ntp_timeout"

    invoke-static {v1, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    if-eqz v0, :cond_1

    move-object v5, v0

    :cond_1
    iput-object v5, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_ntpPollingInterval"

    invoke-virtual {v1, v2, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_ntpPollingIntervalShorter"

    invoke-virtual {v1, v2, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_ntpRetry"

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    iput v2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
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

.method public getMaxAttempts()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    return p0
.end method

.method public getPollingInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    return-wide v0
.end method

.method public getPollingIntervalShorter()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    return-wide v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeErrorThreshold()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeErrorThreshold:I

    return p0
.end method

.method public getTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    return-wide v0
.end method

.method public setMaxAttempts(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    return-void
.end method

.method public setPollingInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    return-void
.end method

.method public setPollingIntervalShorter(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    return-void
.end method

.method public setTimeErrorThreshold(I)V
    .locals 0

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "server="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    iget-object p2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mServer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mMaxAttempts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/datetime/NtpInfo;->mPollingIntervalShorter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
