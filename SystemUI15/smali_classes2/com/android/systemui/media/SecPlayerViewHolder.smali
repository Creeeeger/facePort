.class public final Lcom/android/systemui/media/SecPlayerViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final albumView:Landroid/widget/ImageView;

.field public final appIcon:Landroid/widget/ImageView;

.field public final artistText:Landroid/widget/TextView;

.field public final budsButtonExpanded:Landroid/widget/ImageButton;

.field public final cancelText:Landroid/widget/TextView;

.field public final dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

.field public final elapsedTimeView:Landroid/widget/TextView;

.field public final expandedActionButtons$delegate:Lkotlin/Lazy;

.field public final expandedActionButtonsContainer:Landroid/widget/LinearLayout;

.field public final mediaOutputText:Landroid/widget/TextView;

.field public final optionButtons:Landroid/view/View;

.field public final options:Landroid/view/View;

.field public final optionsAppIcon:Landroid/widget/ImageView;

.field public final optionsAppTitle:Landroid/widget/TextView;

.field public final player:Landroid/widget/LinearLayout;

.field public final playerView:Landroid/view/View;

.field public progressBarPrimaryColor:I

.field public progressBarSecondaryColor:I

.field public final remove:Landroid/view/View;

.field public final removeText:Landroid/widget/TextView;

.field public final seamlessText:Landroid/widget/TextView;

.field public final seekBar:Landroid/widget/SeekBar;

.field public final titleText:Landroid/widget/TextView;

.field public final totalTimeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/SecPlayerViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecPlayerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/android/systemui/media/MediaType;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxPrimaryColor:I

    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarPrimaryColor:I

    sget v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxSecondaryColor:I

    iput v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarSecondaryColor:I

    const v0, 0x7f0a0a78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0a79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0a7a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0a0a7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a0a7c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;->INSTANCE:Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getLayout()I

    move-result v1

    invoke-virtual {p1, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a0ac8

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    const p2, 0x7f0a0a7d

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->albumView:Landroid/widget/ImageView;

    const p2, 0x7f0a0aa7

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0aa5

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->artistText:Landroid/widget/TextView;

    const p2, 0x7f0a06d3

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p2, 0x7f0a0aa6

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->titleText:Landroid/widget/TextView;

    const p2, 0x7f0a0ab4

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->mediaOutputText:Landroid/widget/TextView;

    const p2, 0x7f0a0a82

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    const p2, 0x7f0a0ab3

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    const p2, 0x7f0a0ab8

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    const p2, 0x7f0a0ab9

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    const p2, 0x7f0a0071

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtonsContainer:Landroid/widget/LinearLayout;

    const p3, 0x7f0a0210

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonExpanded:Landroid/widget/ImageButton;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtonsContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportSquiggly()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f060639

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->expandedActionButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonExpanded:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_4
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f0a0ac9

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->player:Landroid/widget/LinearLayout;

    :cond_5
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportSettings()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f0a0a81

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->cancelText:Landroid/widget/TextView;

    const p2, 0x7f0a0984

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->options:Landroid/view/View;

    const p2, 0x7f0a0abc

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0abd

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionsAppTitle:Landroid/widget/TextView;

    const p2, 0x7f0a0abe

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->optionButtons:Landroid/view/View;

    const p2, 0x7f0a0abf

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->remove:Landroid/view/View;

    const p2, 0x7f0a0acd

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const-string/jumbo p2, "sec"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    const/16 v1, 0x258

    invoke-static {p2, v1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_3

    :cond_6
    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->removeText:Landroid/widget/TextView;

    :cond_7
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportSquiggly()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move-object p1, v0

    :goto_4
    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz p2, :cond_9

    move-object v0, p2

    :cond_9
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    iput-object p2, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    new-instance p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;-><init>(Landroid/widget/SeekBar;)V

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f08107e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method
