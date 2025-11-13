.class public Lcom/android/modules/utils/SynchronousResultReceiver$Result;
.super Ljava/lang/Object;
.source "SynchronousResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/SynchronousResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mException:Ljava/lang/RuntimeException;

.field private final blacklist mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;

    invoke-direct {v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/modules/utils/SynchronousResultReceiver$Result-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/RuntimeException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->mException:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
