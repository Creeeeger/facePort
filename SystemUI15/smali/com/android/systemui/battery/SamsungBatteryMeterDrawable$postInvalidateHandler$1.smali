.class public final Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;->this$0:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;->this$0:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iget-boolean p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagDrawIcon:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagDrawIcon:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidate()V

    :cond_1
    return-void
.end method
