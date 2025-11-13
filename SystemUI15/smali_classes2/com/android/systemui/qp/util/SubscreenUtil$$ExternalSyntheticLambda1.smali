.class public final synthetic Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qp/util/SubscreenUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/util/SubscreenUtil;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenUtil;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
