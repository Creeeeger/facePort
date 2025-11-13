.class public final Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $brightnessModeInteger:I

.field public final synthetic $brightnessModeString:Ljava/lang/String;

.field public final synthetic $this_run:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->$this_run:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->$brightnessModeString:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

    iput p4, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->$brightnessModeInteger:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->$this_run:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->$brightnessModeString:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver;->handler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerObserver$onChange$postString$1$1;->$brightnessModeInteger:I

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
