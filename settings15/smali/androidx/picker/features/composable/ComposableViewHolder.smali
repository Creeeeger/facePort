.class public abstract Landroidx/picker/features/composable/ComposableViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH&J\u0015\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0003H\u0011\u00a2\u0006\u0002\u0008\u0010J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0003H\u0017R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/picker/features/composable/ComposableViewHolder;",
        "",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "getFrameView",
        "()Landroid/view/View;",
        "bindAdapter",
        "",
        "adapter",
        "Landroidx/picker/adapter/AbsAdapter;",
        "bindData",
        "viewData",
        "Landroidx/picker/model/viewdata/ViewData;",
        "onBind",
        "itemView",
        "onBind$picker_app_release",
        "onViewRecycled",
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


# instance fields
.field private final frameView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableViewHolder;->frameView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 0

    const-string p0, "adapter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end method

.method public final getFrameView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableViewHolder;->frameView:Landroid/view/View;

    return-object p0
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 0

    const-string p0, "itemView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    const-string p0, "itemView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
