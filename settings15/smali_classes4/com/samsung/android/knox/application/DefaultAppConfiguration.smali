.class public Lcom/samsung/android/knox/application/DefaultAppConfiguration;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/DefaultAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mTaskType:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/DefaultAppConfiguration$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    iput-object p2, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getTaskType()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setTaskType(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    return-void
.end method
