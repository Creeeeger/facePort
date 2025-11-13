.class public Lcom/samsung/android/knox/container/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/knox/container/EnterpriseContainerConstants;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public admin:I

.field public containerType:I

.field public email:Ljava/lang/String;

.field public id:I

.field public lockType:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContainerAdmin()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    return p0
.end method

.method public getContainerEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getContainerId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    return p0
.end method

.method public getContainerLockType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    return p0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getContainerType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return p0
.end method

.method public setContainerAdmin(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    return-void
.end method

.method public setContainerEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-void
.end method

.method public setContainerId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    return-void
.end method

.method public setContainerLockType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    return-void
.end method

.method public setContainerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setContainerType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
