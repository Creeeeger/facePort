.class public final Landroid/credentials/PrepareGetCredentialResponseInternal;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponseInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/PrepareGetCredentialResponseInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final blacklist mCredentialResultTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHasAuthenticationResults:Z

.field private final blacklist mHasQueryApiPermission:Z

.field private final blacklist mHasRemoteResults:Z

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/PrepareGetCredentialResponseInternal$1;

    invoke-direct {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal$1;-><init>()V

    sput-object v0, Landroid/credentials/PrepareGetCredentialResponseInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/PrepareGetCredentialResponseInternal-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    iput-boolean p3, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    iput-boolean p4, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    iput-object p5, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist hasAuthenticationResults()Z
    .locals 2

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller doesn\'t have the permission to query authentication results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasCredentialResults(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller doesn\'t have the permission to query credential results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasRemoteResults()Z
    .locals 2

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller doesn\'t have the permission to query remote results"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasQueryApiPermission:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mCredentialResultTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasAuthenticationResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mHasRemoteResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponseInternal;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
