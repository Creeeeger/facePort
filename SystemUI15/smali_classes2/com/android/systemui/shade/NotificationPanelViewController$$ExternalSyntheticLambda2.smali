.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard$1()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
