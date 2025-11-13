.class public Lcom/sec/ims/IMSParameter;
.super Ljava/lang/Object;
.source "IMSParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

.field private mPrimitiveMap:Landroid/os/Bundle;

.field private mProfileParams:[Lcom/sec/ims/IMSProfileParams;

.field private mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 490
    new-instance v0, Lcom/sec/ims/IMSParameter$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSParameter$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    .line 16
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    .line 17
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    .line 16
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    .line 17
    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-class v0, Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSAPCSInfo;

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-class v0, Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSRegistrationInfo;

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 173
    new-array v1, v0, [Lcom/sec/ims/IMSProfileParams;

    iput-object v1, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 176
    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const-class v3, Lcom/sec/ims/IMSProfileParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/IMSProfileParams;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 466
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 476
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 480
    :goto_1
    iget-object v0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    if-nez v0, :cond_2

    .line 481
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 483
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object p0, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v1, p0, v2

    .line 485
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
