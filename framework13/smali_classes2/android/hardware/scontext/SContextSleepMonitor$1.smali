.class Landroid/hardware/scontext/SContextSleepMonitor$1;
.super Ljava/lang/Object;
.source "SContextSleepMonitor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextSleepMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/scontext/SContextSleepMonitor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextSleepMonitor;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextSleepMonitor;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextSleepMonitor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextSleepMonitor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/scontext/SContextSleepMonitor;
    .locals 1
    .param p1, "size"    # I

    .line 148
    new-array v0, p1, [Landroid/hardware/scontext/SContextSleepMonitor;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextSleepMonitor$1;->newArray(I)[Landroid/hardware/scontext/SContextSleepMonitor;

    move-result-object p1

    return-object p1
.end method
