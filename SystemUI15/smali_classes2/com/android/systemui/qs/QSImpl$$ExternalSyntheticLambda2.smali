.class public final synthetic Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/QSImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/QSImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    return-void

    :pswitch_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
