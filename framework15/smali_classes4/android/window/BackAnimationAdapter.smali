.class public Landroid/window/BackAnimationAdapter;
.super Ljava/lang/Object;
.source "BackAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRunner:Landroid/window/IBackAnimationRunner;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/BackAnimationAdapter$1;

    invoke-direct {v0}, Landroid/window/BackAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IBackAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IBackAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRunner()Landroid/window/IBackAnimationRunner;
    .locals 1

    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/BackAnimationAdapter;->mRunner:Landroid/window/IBackAnimationRunner;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
