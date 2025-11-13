.class public Lcom/samsung/android/knox/license/ActivationInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


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

    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/ActivationInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/ActivationInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/ActivationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/knox/license/ActivationInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/ActivationInfo;-><init>()V

    const-string v1, "PACKAGE_NAME"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    const-string v1, "LICENSE_STATUS"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/license/ActivationInfo$State;->fromInt(I)Lcom/samsung/android/knox/license/ActivationInfo$State;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    const-string v1, "LICENSE_KEY"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    const-string v1, "SKU"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    const-string v1, "PRODUCT_TYPE"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/util/Date;

    const-string v2, "TIME"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivationDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    return-object p0
.end method

.method public getMaskedLicenseKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    return-object p0
.end method

.method public getSku()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/license/ActivationInfo$State;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo$State;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    return-void
.end method

.method public setActivationDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    return-void
.end method

.method public setMaskedLicenseKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/samsung/android/knox/license/ActivationInfo$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
