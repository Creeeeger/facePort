.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsFlexMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    return-void
.end method
