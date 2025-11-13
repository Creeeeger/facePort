.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZII)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->f$0:Z

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->f$0:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    sget v1, Lcom/android/wm/shell/pip/phone/PipController;->$r8$clinit:I

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/pip/phone/PipController;->setLauncherKeepClearAreaHeight(IZ)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->f$0:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    sget v1, Lcom/android/wm/shell/pip/phone/PipController;->$r8$clinit:I

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/pip/phone/PipController;->setLauncherKeepClearAreaHeight(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
