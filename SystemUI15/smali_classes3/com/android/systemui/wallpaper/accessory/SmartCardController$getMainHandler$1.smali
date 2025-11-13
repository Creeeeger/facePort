.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x134b17e

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateState(Z)V

    :cond_0
    return-void
.end method
