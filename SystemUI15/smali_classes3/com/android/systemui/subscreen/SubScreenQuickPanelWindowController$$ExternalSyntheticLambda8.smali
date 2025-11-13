.class public final synthetic Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 2

    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    float-to-double v0, p0

    return-wide v0

    :pswitch_0
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    float-to-double v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
