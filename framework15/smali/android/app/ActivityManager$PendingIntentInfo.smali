.class public final Landroid/app/ActivityManager$PendingIntentInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntentInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$PendingIntentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCreatorPackage:Ljava/lang/String;

.field private final blacklist mCreatorUid:I

.field private final blacklist mImmutable:Z

.field private final blacklist mIntentSenderType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$PendingIntentInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$PendingIntentInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$PendingIntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mCreatorPackage:Ljava/lang/String;

    iput p2, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mCreatorUid:I

    iput-boolean p3, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mImmutable:Z

    iput p4, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mIntentSenderType:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCreatorPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mCreatorPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCreatorUid()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mCreatorUid:I

    return v0
.end method

.method public blacklist getIntentSenderType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mIntentSenderType:I

    return v0
.end method

.method public blacklist isImmutable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mImmutable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mCreatorPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mCreatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mImmutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/ActivityManager$PendingIntentInfo;->mIntentSenderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
