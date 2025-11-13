.class public final Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionAidlRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
