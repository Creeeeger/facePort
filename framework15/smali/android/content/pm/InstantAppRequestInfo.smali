.class public final Landroid/content/pm/InstantAppRequestInfo;
.super Ljava/lang/Object;
.source "InstantAppRequestInfo.java"

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
            "Landroid/content/pm/InstantAppRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHostDigestPrefix:[I

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mRequesterInstantApp:Z

.field private final blacklist mToken:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/InstantAppRequestInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppRequestInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    iput-object p3, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean p4, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    iput-object p5, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    :goto_1
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v2, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    iput-object v5, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    iput-object v6, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHostDigestPrefix()[I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist isRequesterInstantApp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_2
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
