.class public final Landroid/service/notification/NotificationStats;
.super Ljava/lang/Object;
.source "NotificationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationStats$DismissalSentiment;,
        Landroid/service/notification/NotificationStats$DismissalSurface;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISMISSAL_AOD:I = 0x2

.field public static final blacklist DISMISSAL_BUBBLE:I = 0x4

.field public static final blacklist DISMISSAL_LOCKSCREEN:I = 0x5

.field public static final whitelist DISMISSAL_NOT_DISMISSED:I = -0x1

.field public static final whitelist DISMISSAL_OTHER:I = 0x0

.field public static final whitelist DISMISSAL_PEEK:I = 0x1

.field public static final whitelist DISMISSAL_SHADE:I = 0x3

.field public static final whitelist DISMISS_SENTIMENT_NEGATIVE:I = 0x0

.field public static final whitelist DISMISS_SENTIMENT_NEUTRAL:I = 0x1

.field public static final whitelist DISMISS_SENTIMENT_POSITIVE:I = 0x2

.field public static final whitelist DISMISS_SENTIMENT_UNKNOWN:I = -0x3e8


# instance fields
.field private greylist-max-o mDirectReplied:Z

.field private blacklist mDismissalSentiment:I

.field private greylist-max-o mDismissalSurface:I

.field private greylist-max-o mExpanded:Z

.field private greylist-max-o mInteracted:Z

.field private greylist-max-o mSeen:Z

.field private blacklist mSmartReplied:Z

.field private greylist-max-o mSnoozed:Z

.field private greylist-max-o mViewedSettings:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationStats$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationStats$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    const/16 v0, -0x3e8

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    const/16 v0, -0x3e8

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

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
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotificationStats;

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSeen:Z

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mExpanded:Z

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mInteracted:Z

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    iget v3, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    iget v4, v2, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    if-ne v3, v4, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public whitelist getDismissalSentiment()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    return v0
.end method

.method public whitelist getDismissalSurface()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return v0
.end method

.method public whitelist hasDirectReplied()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    return v0
.end method

.method public whitelist hasExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    return v0
.end method

.method public whitelist hasInteracted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return v0
.end method

.method public whitelist hasSeen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return v0
.end method

.method public blacklist hasSmartReplied()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    return v0
.end method

.method public whitelist hasSnoozed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    return v0
.end method

.method public whitelist hasViewedSettings()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    add-int/2addr v0, v2

    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    add-int v0, v1, v2

    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist setDirectReplied()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public whitelist setDismissalSentiment(I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    return-void
.end method

.method public whitelist setDismissalSurface(I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return-void
.end method

.method public whitelist setExpanded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public whitelist setSeen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return-void
.end method

.method public blacklist setSmartReplied()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public whitelist setSnoozed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public whitelist setViewedSettings()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDirectReplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", mSmartReplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", mSnoozed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewedSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInteracted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissalSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    :cond_0
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
