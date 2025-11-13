.class public final Landroid/window/WindowContainerTransaction$ContainerChange;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$ContainerChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mChange:Landroid/window/WindowContainerTransaction$Change;

.field blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction$ContainerChange$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$ContainerChange$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$ContainerChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    sget-object v0, Landroid/window/WindowContainerTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChange()Landroid/window/WindowContainerTransaction$Change;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$ContainerChange;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$ContainerChange;->mChange:Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction$Change;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
