.class public final Landroid/permission/RuntimePermissionPresentationInfo;
.super Ljava/lang/Object;
.source "RuntimePermissionPresentationInfo.java"

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
            "Landroid/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_GRANTED:I = 0x1

.field private static final blacklist FLAG_STANDARD:I = 0x2


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/permission/RuntimePermissionPresentationInfo$1;

    invoke-direct {v0}, Landroid/permission/RuntimePermissionPresentationInfo$1;-><init>()V

    sput-object v0, Landroid/permission/RuntimePermissionPresentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p3, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iput v0, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isGranted()Z
    .locals 2

    iget v0, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isStandard()Z
    .locals 1

    iget v0, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/permission/RuntimePermissionPresentationInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
