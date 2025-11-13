.class public final synthetic Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCallback:Lcom/android/systemui/screenshot/ScreenshotController$2;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->finishDismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCallback:Lcom/android/systemui/screenshot/ScreenshotController$2;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController$2;->finishAnimation()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
