.class Landroid/os/ServiceDebugInfo$1;
.super Ljava/lang/Object;
.source "ServiceDebugInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ServiceDebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ServiceDebugInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/ServiceDebugInfo;
    .locals 1

    new-instance v0, Landroid/os/ServiceDebugInfo;

    invoke-direct {v0}, Landroid/os/ServiceDebugInfo;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/ServiceDebugInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
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

    invoke-virtual {p0, p1}, Landroid/os/ServiceDebugInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ServiceDebugInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ServiceDebugInfo;
    .locals 1

    new-array v0, p1, [Landroid/os/ServiceDebugInfo;

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

    invoke-virtual {p0, p1}, Landroid/os/ServiceDebugInfo$1;->newArray(I)[Landroid/os/ServiceDebugInfo;

    move-result-object p1

    return-object p1
.end method
