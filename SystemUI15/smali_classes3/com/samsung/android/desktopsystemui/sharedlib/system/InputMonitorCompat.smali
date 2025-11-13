.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mForReturn:Z

.field private final mInputMonitor:Landroid/view/InputMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat$1;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat$1;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    sget-object v0, Landroid/view/InputMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputMonitor;

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/InputMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;
    .locals 1

    const-class v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;

    return-object p0
.end method

.method public static obtainReturnValue(Landroid/view/InputMonitor;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->dispose()V

    return-void
.end method

.method public getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat$InputEventListener;)V

    return-object v0
.end method

.method public pilferPointers()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputMonitorCompat;->mForReturn:Z

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/view/InputMonitor;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
