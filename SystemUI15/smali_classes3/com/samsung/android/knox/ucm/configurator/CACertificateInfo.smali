.class public Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public certLength:I

.field public certificate:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certificate:[B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certificate:[B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certLength:I

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certificate:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certLength:I

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certificate:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
