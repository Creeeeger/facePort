.class public final Landroid/app/AppOpsManager$OpEventProxyInfo;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEventProxyInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEventProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default:0"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    const-string v8, "from"

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput-object v2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object v4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object v3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    return v0
.end method

.method public blacklist reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    iput-object p2, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_1
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEventProxyInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
