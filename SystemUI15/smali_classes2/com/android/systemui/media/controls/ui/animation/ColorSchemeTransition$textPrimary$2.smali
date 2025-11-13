.class final Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;
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

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/ImageButton;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->setTextPrimaryColor(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
