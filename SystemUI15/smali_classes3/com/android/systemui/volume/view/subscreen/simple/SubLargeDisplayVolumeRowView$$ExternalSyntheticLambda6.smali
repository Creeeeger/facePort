.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;->f$0:I

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    sget v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
