.class final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$smartMirroringClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $audioManager:Landroid/media/AudioManager;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$smartMirroringClient$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$smartMirroringClient$2;->$audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$smartMirroringClient$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$smartMirroringClient$2;->$audioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-object v0
.end method
