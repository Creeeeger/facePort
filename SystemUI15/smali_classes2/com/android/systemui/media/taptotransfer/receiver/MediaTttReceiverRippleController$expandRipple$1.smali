.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $isIconRipple:Z

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->$isIconRipple:Z

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    iget-boolean p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->$isIconRipple:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    invoke-static {p0, p1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->access$layoutIconRipple(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    sget p2, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->$r8$clinit:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
