.class public abstract Landroidx/picker/features/composable/custom/CustomViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract bindData(Landroidx/picker/model/AppInfoData;)V
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-virtual {p0, p1}, Landroidx/picker/features/composable/custom/CustomViewHolder;->bindData(Landroidx/picker/model/AppInfoData;)V

    :cond_0
    return-void
.end method
