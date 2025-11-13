.class Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionAidlRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .locals 4

    sget-object v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-direct {v3, v0, v1, v2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v3
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

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .locals 1

    new-array v0, p1, [Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

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

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;->newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    move-result-object p1

    return-object p1
.end method
