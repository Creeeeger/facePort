.class final Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;->INSTANCE:Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;

    iget-object p0, p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
