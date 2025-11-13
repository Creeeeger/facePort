.class final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$4;

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

    check-cast p1, Landroid/media/AudioDeviceInfo;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->toLogText(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\t"

    const-string v0, "WifiDisplayDeviceController"

    invoke-static {p1, p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
