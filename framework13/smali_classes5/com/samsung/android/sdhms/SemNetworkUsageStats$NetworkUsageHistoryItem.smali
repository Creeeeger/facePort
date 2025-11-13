.class public Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;
.super Ljava/lang/Object;
.source "SemNetworkUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemNetworkUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkUsageHistoryItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist packageName:Ljava/lang/String;

.field private blacklist uid:I

.field private blacklist usage:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->packageName:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->uid:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->usage:J

    .line 244
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->-$$Nest$fgetpackageName(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->packageName:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->-$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->uid:I

    .line 234
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->-$$Nest$fgetusage(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->usage:J

    .line 235
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;)V
    .locals 2
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->packageName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->uid:I

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->getUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->usage:J

    .line 168
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->uid:I

    return v0
.end method

.method public whitelist getUsage()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->usage:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 274
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;->usage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 277
    return-void
.end method
