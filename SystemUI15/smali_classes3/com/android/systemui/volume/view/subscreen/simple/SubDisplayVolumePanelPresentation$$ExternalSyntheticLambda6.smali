.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    iput-boolean p3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;->f$1:Z

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    iget-boolean p0, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
