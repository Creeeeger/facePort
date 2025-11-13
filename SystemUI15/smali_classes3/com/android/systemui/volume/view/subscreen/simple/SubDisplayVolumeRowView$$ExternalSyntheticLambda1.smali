.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    sget v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    sget v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_2
    sget v2, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
