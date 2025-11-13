.class public final Landroid/hardware/face/FaceAuthenticationFrame;
.super Ljava/lang/Object;
.source "FaceAuthenticationFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceAuthenticationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:Landroid/hardware/face/FaceDataFrame;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticationFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceAuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/face/FaceDataFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceDataFrame;

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceAuthenticationFrame-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getData()Landroid/hardware/face/FaceDataFrame;
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
