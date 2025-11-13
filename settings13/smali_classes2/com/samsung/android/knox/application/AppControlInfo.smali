.class public Lcom/samsung/android/knox/application/AppControlInfo;
.super Ljava/lang/Object;
.source "AppControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adminPackageName:Ljava/lang/String;

.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mQueueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/samsung/android/knox/application/AppControlInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/AppControlInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/AppControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->mQueueLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->mQueueLock:Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/AppControlInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/application/AppControlInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/AppControlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/application/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adminPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/application/AppControlInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,appControlType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 99
    iget-object p2, p0, Lcom/samsung/android/knox/application/AppControlInfo;->mQueueLock:Ljava/lang/Object;

    monitor-enter p2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
