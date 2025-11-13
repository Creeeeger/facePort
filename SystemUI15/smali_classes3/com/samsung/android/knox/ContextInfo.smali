.class public Lcom/samsung/android/knox/ContextInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_CONTAINER_ID:I = 0x0

.field public static final NON_DALESS_CALLER:I = -0x1


# instance fields
.field public final mCallerUid:I

.field public final mContainerId:I

.field public final mDALessCallerUid:I

.field public final mParent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ContextInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    iput p4, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    iput p3, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caller uid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,Container id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
