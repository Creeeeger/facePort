.class public Lcom/samsung/android/knox/ContextInfo;
.super Ljava/lang/Object;
.source "ContextInfo.java"

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


# instance fields
.field public final mCallerUid:I

.field public final mContainerId:I

.field public final mDALessCallerUid:I

.field public final mParent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lcom/samsung/android/knox/ContextInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 77
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 78
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 79
    iput v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0

    .line 81
    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 83
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 93
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 94
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    iput v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0

    .line 97
    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 99
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 p1, -0x1

    .line 101
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 126
    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 p1, -0x1

    .line 130
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 139
    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 141
    iput-boolean p3, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 143
    iput p4, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, -0x1

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 111
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 112
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 116
    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 117
    iput p3, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/ContextInfo-IA;)V
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

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 174
    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
