.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    sget v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->getStreamLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->getStreamLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    sget v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->updateContentDescription$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
