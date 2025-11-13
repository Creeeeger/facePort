.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static final sBluetoothService:Landroid/bluetooth/BluetoothManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;


# direct methods
.method public static synthetic $r8$lambda$Fkohf1ZxnDhv3KwYCflIzDNYkYc(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->lambda$getConnectedDevices$0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sBluetoothService:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;

    return-object v0
.end method

.method private static synthetic lambda$getConnectedDevices$0(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/BluetoothAdapterWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
