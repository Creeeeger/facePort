.class final Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/DisconnectedDeviceController$updateDevices$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisconnectedDeviceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
