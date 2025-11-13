.class public final Landroid/app/ondeviceintelligence/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/TokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCount:J

.field private final blacklist mInfoParams:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ondeviceintelligence/TokenInfo$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/TokenInfo$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/TokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor whitelist <init>(JLandroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    iput-object p3, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    return-wide v0
.end method

.method public whitelist getInfoParams()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
