.class public Lcom/samsung/android/hardware/context/SemContextMovementAlert;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextMovementAlert.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextMovementAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MOVE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NO_MOVE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist UNKNOWN:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementAlert$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;->mContext:Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextMovementAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;->mContext:Landroid/os/Bundle;

    .line 132
    return-void
.end method


# virtual methods
.method public blacklist getAction()I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method
