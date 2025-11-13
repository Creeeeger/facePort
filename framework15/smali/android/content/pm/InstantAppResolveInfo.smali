.class public final Landroid/content/pm/InstantAppResolveInfo;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY_DIGEST:[B

.field private static final greylist-max-o SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final greylist-max-o mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mShouldLetInstallerDecide:Z

.field private final greylist-max-o mVersionCode:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->EMPTY_DIGEST:[B

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;I)V"
        }
    .end annotation

    int-to-long v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;J",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    if-eqz p3, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    :goto_1
    iput-object p2, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    iput-wide p4, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    iput-object p6, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    iput-boolean p7, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 8

    sget-object v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    goto :goto_0

    :cond_0
    const-class v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    sget-object v1, Landroid/content/pm/InstantAppIntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-direct {v1, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDigestBytes()[B
    .locals 2

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-static {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->-$$Nest$fgetmDigestBytes(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;)[[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo;->EMPTY_DIGEST:[B

    :goto_0
    return-object v0
.end method

.method public whitelist getDigestPrefix()I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIntentFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLongVersionCode()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist shouldLetInstallerDecide()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
