.class public final Landroid/view/SurfaceControlViewHost$SurfacePackage;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfacePackage"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field private final blacklist mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage$1;

    invoke-direct {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfacePackage(Parcel)"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/InputTransferToken;

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISurfaceControlViewHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControlViewHost$SurfacePackage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/window/InputTransferToken;Landroid/view/ISurfaceControlViewHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p2, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object p3, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    iput-object p4, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/SurfaceControl;

    const-string v2, "SurfacePackage"

    invoke-direct {v1, v0, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method public whitelist getInputTransferToken()Landroid/window/InputTransferToken;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    return-object v0
.end method

.method public blacklist getRemoteInterface()Landroid/view/ISurfaceControlViewHost;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-object v0
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist notifyDetachedFromWindow()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHost;->onDispatchDetachedFromWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist release()V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{inputTransferToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/InputTransferToken;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHost;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
