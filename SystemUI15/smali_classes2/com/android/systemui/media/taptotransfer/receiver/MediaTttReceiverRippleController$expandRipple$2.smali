.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $isIconRipple:Z

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->$isIconRipple:Z

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    iget-boolean v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->$isIconRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    invoke-static {v0, p1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->access$layoutIconRipple(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    sget v1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->$r8$clinit:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V

    :goto_0
    sget v0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->$r8$clinit:I

    const-wide/16 v0, 0x14d

    iput-wide v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->isStarted:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->startRipple(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
