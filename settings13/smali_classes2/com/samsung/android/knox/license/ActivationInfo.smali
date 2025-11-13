.class public Lcom/samsung/android/knox/license/ActivationInfo;
.super Ljava/lang/Object;
.source "ActivationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/license/ActivationInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/ActivationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activationDate:Ljava/util/Date;

.field private maskedLicenseKey:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private productType:Ljava/lang/String;

.field private sku:Ljava/lang/String;

.field private state:Lcom/samsung/android/knox/license/ActivationInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/ActivationInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/ActivationInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/license/ActivationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/ActivationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {v0}, Lcom/samsung/android/knox/license/ActivationInfo$State;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo$State;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 251
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 230
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
