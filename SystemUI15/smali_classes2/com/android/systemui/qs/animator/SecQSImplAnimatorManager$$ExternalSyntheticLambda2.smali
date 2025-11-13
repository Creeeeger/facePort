.class public final synthetic Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iget p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onStateChanged(I)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onUserSwitched(I)V

    return-void

    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onNotificationScrolled(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
