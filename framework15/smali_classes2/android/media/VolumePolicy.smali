.class public final Landroid/media/VolumePolicy;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o A11Y_MODE_INDEPENDENT_A11Y_VOLUME:I = 0x1

.field public static final greylist-max-o A11Y_MODE_MEDIA_A11Y_VOLUME:I

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEFAULT:Landroid/media/VolumePolicy;


# instance fields
.field public final greylist-max-o doNotDisturbWhenSilent:Z

.field public final greylist-max-o vibrateToSilentDebounce:I

.field public final greylist-max-o volumeDownToEnterSilent:Z

.field public final greylist-max-o volumeUpToExitSilent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/media/VolumePolicy;

    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    sput-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    new-instance v0, Landroid/media/VolumePolicy$1;

    invoke-direct {v0}, Landroid/media/VolumePolicy$1;-><init>()V

    sput-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iput-boolean p2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iput-boolean p3, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iput p4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

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

    instance-of v0, p1, Landroid/media/VolumePolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/VolumePolicy;

    iget-boolean v3, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-boolean v4, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    iget v4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumePolicy[volumeDownToEnterSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",volumeUpToExitSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",doNotDisturbWhenSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vibrateToSilentDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
