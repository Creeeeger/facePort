.class public Lcom/sec/ims/IMSAPCSInfo;
.super Ljava/lang/Object;
.source "IMSAPCSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSAPCSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mServiceStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/sec/ims/IMSAPCSInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSAPCSInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSAPCSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSAPCSInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/IMSAPCSInfo;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/sec/ims/IMSAPCSInfo;->clone()Lcom/sec/ims/IMSAPCSInfo;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
