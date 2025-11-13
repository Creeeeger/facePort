.class public Lcom/android/internal/content/ReferrerIntent;
.super Landroid/content/Intent;
.source "ReferrerIntent.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mCallerToken:Landroid/os/IBinder;

.field public final greylist mReferrer:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/content/ReferrerIntent$1;

    invoke-direct {v0}, Lcom/android/internal/content/ReferrerIntent$1;-><init>()V

    sput-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/content/ReferrerIntent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/android/internal/content/ReferrerIntent;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/content/ReferrerIntent;

    invoke-virtual {p0, v1}, Lcom/android/internal/content/ReferrerIntent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/internal/content/ReferrerIntent;->filterHashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
