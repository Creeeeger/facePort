.class public final Landroidx/picker/model/viewdata/AppInfoViewData$dimmedItem$1;
.super Landroidx/picker/features/observable/UpdateMutableState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setDimmed(Z)V

    return-void
.end method
