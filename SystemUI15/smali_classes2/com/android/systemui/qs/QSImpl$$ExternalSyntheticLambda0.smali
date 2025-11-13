.class public final synthetic Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSImpl;

    packed-switch p1, :pswitch_data_0

    sub-int/2addr p7, p9

    sub-int/2addr p3, p5

    if-eq p7, p3, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    iget p2, p0, Lcom/android/systemui/qs/QSImpl;->mLastPanelFraction:F

    const/4 p3, 0x0

    iget p4, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSImpl;->setQsExpansion(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsBounds()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
