.class final Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;
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


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$surfaceColor$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->setSurfaceColor(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
