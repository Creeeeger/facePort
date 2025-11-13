.class final Lcom/android/systemui/stylus/StylusManager$startListener$1$2;
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


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stylus/StylusManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1$2;->this$0:Lcom/android/systemui/stylus/StylusManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/InputDevice;

    const/16 v0, 0x4002

    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1$2;->this$0:Lcom/android/systemui/stylus/StylusManager;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getBatteryState()Landroid/hardware/BatteryState;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/BatteryState;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
