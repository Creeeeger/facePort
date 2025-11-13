.class public final Landroid/os/storage/CrateInfo;
.super Ljava/lang/Object;
.source "CrateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CrateInfo"


# instance fields
.field private blacklist mExpiration:J

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/storage/CrateInfo$1;

    invoke-direct {v0}, Landroid/os/storage/CrateInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/CrateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/storage/CrateInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/storage/CrateInfo;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/storage/CrateInfo;-><init>(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Label should not be either null or empty string"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "Expiration should be non negative number"

    invoke-static {p2, p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    iput-object p1, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    iput-wide p2, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    return-void
.end method

.method public static blacklist copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;
    .locals 3

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/storage/CrateInfo;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/os/storage/CrateInfo;-><init>(Ljava/lang/CharSequence;J)V

    iput p0, v0, Landroid/os/storage/CrateInfo;->mUid:I

    iput-object p1, v0, Landroid/os/storage/CrateInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v0, p1, Landroid/os/storage/CrateInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/storage/CrateInfo;

    iget-object v1, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getExpirationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    return-wide v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/CrateInfo;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/CrateInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setExpiration(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    iput-wide p1, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Landroid/os/storage/CrateInfo;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/storage/CrateInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/CrateInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
