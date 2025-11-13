.class public abstract Landroidx/picker/features/composable/custom/CustomViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H$J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/picker/features/composable/custom/CustomViewHolder;",
        "Landroidx/picker/features/composable/ComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bindData",
        "",
        "appData",
        "Landroidx/picker/model/AppInfoData;",
        "viewData",
        "Landroidx/picker/model/viewdata/ViewData;",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract bindData(Landroidx/picker/model/AppInfoData;)V
.end method

.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 1

    const-string/jumbo v0, "viewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-virtual {p0, p1}, Landroidx/picker/features/composable/custom/CustomViewHolder;->bindData(Landroidx/picker/model/AppInfoData;)V

    :cond_0
    return-void
.end method
