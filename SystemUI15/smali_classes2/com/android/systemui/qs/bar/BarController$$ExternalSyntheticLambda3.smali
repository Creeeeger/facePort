.class public final synthetic Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->updateHeightMargins()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onUiModeChanged()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onKnoxPolicyChanged()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    const-string p0, "BarController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->setUnderneathQqs(Z)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->setUnderneathQqs(Z)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    const-string p0, "BarController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
