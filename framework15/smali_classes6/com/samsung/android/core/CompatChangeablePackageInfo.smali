.class public Lcom/samsung/android/core/CompatChangeablePackageInfo;
.super Ljava/lang/Object;
.source "CompatChangeablePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/core/CompatChangeablePackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mHasGameCategory:Z

.field final blacklist mHasLauncherActivity:Z

.field final blacklist mIsActivityEmbeddingSplitsEnabled:Z

.field final blacklist mIsMinAspectRatioOverrideDisallowed:Z

.field final blacklist mIsOrientationOverrideDisallowed:Z

.field final blacklist mIsResizeableActivityOverrideDisallowed:Z

.field final blacklist mPackageName:Ljava/lang/String;

.field final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/core/CompatChangeablePackageInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/core/CompatChangeablePackageInfo;-><init>(Ljava/lang/String;IZZZZZZ)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZZZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mUid:I

    iput-boolean p3, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasLauncherActivity:Z

    iput-boolean p4, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasGameCategory:Z

    iput-boolean p5, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsResizeableActivityOverrideDisallowed:Z

    iput-boolean p6, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsOrientationOverrideDisallowed:Z

    iput-boolean p7, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsMinAspectRatioOverrideDisallowed:Z

    iput-boolean p8, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsActivityEmbeddingSplitsEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IZZZZZZLcom/samsung/android/core/CompatChangeablePackageInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/core/CompatChangeablePackageInfo;-><init>(Ljava/lang/String;IZZZZZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasLauncherActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mHasGameCategory:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsResizeableActivityOverrideDisallowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsOrientationOverrideDisallowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsMinAspectRatioOverrideDisallowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/core/CompatChangeablePackageInfo;->mIsActivityEmbeddingSplitsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
