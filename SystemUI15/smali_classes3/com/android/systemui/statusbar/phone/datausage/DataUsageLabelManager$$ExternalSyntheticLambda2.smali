.class public final synthetic Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelViewColor()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->onPanelConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
