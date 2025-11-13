.class public Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextSlocationArDistance.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODE_AR_DISTANCE_CMD:I = 0x1

.field public static final blacklist MODE_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->mContext:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->readFromParcel(Landroid/os/Parcel;)V

    .line 140
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->mContext:Landroid/os/Bundle;

    .line 184
    return-void
.end method


# virtual methods
.method public blacklist getDataArray()[I
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->mContext:Landroid/os/Bundle;

    const-string v1, "DataList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 159
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->mContext:Landroid/os/Bundle;

    .line 160
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method
