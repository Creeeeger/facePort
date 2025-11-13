.class public final Lcom/samsung/android/chimera/genie/MemRequest;
.super Ljava/lang/Object;
.source "MemRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/chimera/genie/MemRequest$MemType;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/chimera/genie/MemRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist MEMTYPE_CONTIGUOUS:I = 0x1

.field public static final greylist MEMTYPE_DEFAULT:I


# instance fields
.field private final greylist mSize:I

.field private final greylist mType:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/chimera/genie/MemRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/chimera/genie/MemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mType:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mSize:I

    return-void
.end method

.method public constructor greylist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mType:I

    iput p2, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mSize:I

    return-void
.end method

.method protected constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mSize:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mSize:I

    return v0
.end method

.method public greylist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/chimera/genie/MemRequest;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
