.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
