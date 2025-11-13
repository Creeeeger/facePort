.class public final Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$Companion;

.field public static final ids:Ljava/util/Set;


# instance fields
.field public final cancel:Landroid/view/View;

.field public final cancelText:Landroid/widget/TextView;

.field public colorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final dismiss:Landroid/view/ViewGroup;

.field public final dismissText:Landroid/widget/TextView;

.field public final gutsText:Landroid/widget/TextView;

.field public isDismissible:Z

.field public final settings:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$Companion;

    const v0, 0x7f0a09b7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0241

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0390

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0a0b33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->ids:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a09b7

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    const v0, 0x7f0a0241

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancel:Landroid/view/View;

    const v0, 0x7f0a0244

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    const v0, 0x7f0a0390

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    const v0, 0x7f0a0394

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    const v0, 0x7f0a0b33

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->isDismissible:Z

    return-void
.end method


# virtual methods
.method public final setAccentPrimaryColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setSurfaceColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->isDismissible:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final setTextPrimaryColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->isDismissible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
