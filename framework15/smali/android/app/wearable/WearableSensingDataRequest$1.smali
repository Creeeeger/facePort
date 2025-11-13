.class Landroid/app/wearable/WearableSensingDataRequest$1;
.super Ljava/lang/Object;
.source "WearableSensingDataRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wearable/WearableSensingDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/wearable/WearableSensingDataRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/wearable/WearableSensingDataRequest;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    new-instance v2, Landroid/app/wearable/WearableSensingDataRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/app/wearable/WearableSensingDataRequest;-><init>(ILandroid/os/PersistableBundle;Landroid/app/wearable/WearableSensingDataRequest-IA;)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/wearable/WearableSensingDataRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/wearable/WearableSensingDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/wearable/WearableSensingDataRequest;
    .locals 1

    new-array v0, p1, [Landroid/app/wearable/WearableSensingDataRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/wearable/WearableSensingDataRequest$1;->newArray(I)[Landroid/app/wearable/WearableSensingDataRequest;

    move-result-object p1

    return-object p1
.end method
