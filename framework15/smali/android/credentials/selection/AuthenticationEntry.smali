.class public final Landroid/credentials/selection/AuthenticationEntry;
.super Ljava/lang/Object;
.source "AuthenticationEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/AuthenticationEntry$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_LOCKED:I = 0x0

.field public static final whitelist STATUS_UNLOCKED_BUT_EMPTY_LESS_RECENT:I = 0x1

.field public static final whitelist STATUS_UNLOCKED_BUT_EMPTY_MOST_RECENT:I = 0x2


# instance fields
.field private blacklist mFrameworkExtrasIntent:Landroid/content/Intent;

.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mSlice:Landroid/app/slice/Slice;

.field private final blacklist mStatus:I

.field private final blacklist mSubkey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/AuthenticationEntry$1;

    invoke-direct {v0}, Landroid/credentials/selection/AuthenticationEntry$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/AuthenticationEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mSubkey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mStatus:I

    sget-object v0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/Slice;

    iput-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mSlice:Landroid/app/slice/Slice;

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/AuthenticationEntry;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/AuthenticationEntry;->mSubkey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/AuthenticationEntry;->mSlice:Landroid/app/slice/Slice;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/AuthenticationEntry-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/AuthenticationEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/AuthenticationEntry;->mKey:Ljava/lang/String;

    iput-object p2, p0, Landroid/credentials/selection/AuthenticationEntry;->mSubkey:Ljava/lang/String;

    iput-object p3, p0, Landroid/credentials/selection/AuthenticationEntry;->mSlice:Landroid/app/slice/Slice;

    iput p4, p0, Landroid/credentials/selection/AuthenticationEntry;->mStatus:I

    iput-object p5, p0, Landroid/credentials/selection/AuthenticationEntry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFrameworkExtrasIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mSlice:Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    iget v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mStatus:I

    return v0
.end method

.method public whitelist getSubkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mSubkey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mSubkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/credentials/selection/AuthenticationEntry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
