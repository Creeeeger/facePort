.class public final Landroid/view/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "InputMonitor"


# instance fields
.field private final blacklist mHost:Landroid/view/IInputMonitorHost;

.field private final blacklist mInputChannel:Landroid/view/InputChannel;

.field private final blacklist mSurface:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InputMonitor$1;

    invoke-direct {v0}, Landroid/view/InputMonitor$1;-><init>()V

    sput-object v0, Landroid/view/InputMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IInputMonitorHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputMonitorHost;

    move-result-object v1

    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;Landroid/view/SurfaceControl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispose()V
    .locals 1

    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :try_start_0
    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-interface {v0}, Landroid/view/IInputMonitorHost;->dispose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist getHost()Landroid/view/IInputMonitorHost;
    .locals 1

    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    return-object v0
.end method

.method public blacklist getInputChannel()Landroid/view/InputChannel;
    .locals 1

    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.method public blacklist getSurface()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist pilferPointers()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-interface {v0}, Landroid/view/IInputMonitorHost;->pilferPointers()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMonitor { inputChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", host = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/InputMonitor;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InputMonitor;->mHost:Landroid/view/IInputMonitorHost;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v0, p0, Landroid/view/InputMonitor;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
