.class public final Landroidx/picker/repository/ViewDataRepository$createAppInfoViewData$1;
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

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
