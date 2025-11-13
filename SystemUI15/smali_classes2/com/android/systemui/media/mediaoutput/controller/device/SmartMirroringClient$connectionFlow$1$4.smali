.class final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;
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
.field final synthetic $connection:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/content/ServiceConnection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;->$isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "SmartMirroringClient"

    const-string/jumbo v1, "unbindService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;->$isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Landroid/content/ServiceConnection;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
