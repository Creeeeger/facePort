.class final Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/slice/SliceViewManager$SliceCallback;

.field final synthetic $sliceUri:Landroid/net/Uri;

.field final synthetic $this_sliceForUri:Landroidx/slice/SliceViewManager;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;->$this_sliceForUri:Landroidx/slice/SliceViewManager;

    iput-object p2, p0, Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;->$sliceUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;->$callback:Landroidx/slice/SliceViewManager$SliceCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;->$this_sliceForUri:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;->$sliceUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/slice/SliceViewManagerExtKt$sliceForUri$1$1;->$callback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, p0}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
