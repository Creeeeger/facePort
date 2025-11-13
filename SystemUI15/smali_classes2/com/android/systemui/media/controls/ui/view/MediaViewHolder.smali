.class public final Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

.field public static final backgroundIds:Ljava/util/Set;

.field public static final controlsIds:Ljava/util/Set;

.field public static final detailIds:Ljava/util/Set;

.field public static final expandedBottomActionIds:Ljava/util/Set;

.field public static final genericButtonIds:Ljava/util/Set;


# instance fields
.field public final action0:Landroid/widget/ImageButton;

.field public final action1:Landroid/widget/ImageButton;

.field public final action2:Landroid/widget/ImageButton;

.field public final action3:Landroid/widget/ImageButton;

.field public final action4:Landroid/widget/ImageButton;

.field public final actionNext:Landroid/widget/ImageButton;

.field public final actionPlayPause:Landroid/widget/ImageButton;

.field public final actionPrev:Landroid/widget/ImageButton;

.field public final albumView:Landroid/widget/ImageView;

.field public final appIcon:Landroid/widget/ImageView;

.field public final artistText:Landroid/widget/TextView;

.field public final explicitIndicator:Lcom/android/internal/widget/CachingIconView;

.field public final gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

.field public final loadingEffectView:Lcom/android/systemui/surfaceeffects/loadingeffect/LoadingEffectView;

.field public final multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

.field public final player:Lcom/android/systemui/util/animation/TransitionLayout;

.field public final scrubbingElapsedTimeView:Landroid/widget/TextView;

.field public final scrubbingTotalTimeView:Landroid/widget/TextView;

.field public final seamless:Landroid/view/ViewGroup;

.field public final seamlessButton:Landroid/view/View;

.field public final seamlessIcon:Landroid/widget/ImageView;

.field public final seamlessText:Landroid/widget/TextView;

.field public final seekBar:Landroid/widget/SeekBar;

.field public final titleText:Landroid/widget/TextView;

.field public final turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    const v0, 0x7f0a0505

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v1, v16

    const v0, 0x7f0a0101

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f0a04e5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    const v4, 0x7f0a04da

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object v4, v15

    const v5, 0x7f0a06d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v5, v14

    const v6, 0x7f0a06e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0a06df

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v7, v19

    const v8, 0x7f0a0062

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v8, v13

    const v9, 0x7f0a0061

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v9, v20

    const v10, 0x7f0a0063

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v10, v21

    const v11, 0x7f0a0059

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v11, v12

    const v17, 0x7f0a005a

    move-object/from16 v27, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v28, v12

    move-object v12, v0

    const v17, 0x7f0a005b

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v29, v13

    move-object v13, v0

    const v17, 0x7f0a005c

    move-object/from16 v23, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v30, v14

    move-object v14, v0

    const v17, 0x7f0a005d

    move-object/from16 v24, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v31, v15

    move-object v15, v0

    const v17, 0x7f0a06e6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v17, v25

    const v18, 0x7f0a06e7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v18, v26

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->controlsIds:Ljava/util/Set;

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v1, v28

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    move-object/from16 v17, v19

    move-object/from16 v18, v21

    move-object/from16 v19, v20

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v0

    filled-new-array/range {v17 .. v26}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->expandedBottomActionIds:Ljava/util/Set;

    move-object/from16 v0, v27

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->detailIds:Ljava/util/Set;

    const v0, 0x7f0a00bf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0da3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0647

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0a0d71

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->backgroundIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    const v0, 0x7f0a00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    const v0, 0x7f0a0d71

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    const v0, 0x7f0a0da3

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    const v0, 0x7f0a0647

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/surfaceeffects/loadingeffect/LoadingEffectView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->loadingEffectView:Lcom/android/systemui/surfaceeffects/loadingeffect/LoadingEffectView;

    const v0, 0x7f0a0505

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a04e5

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->titleText:Landroid/widget/TextView;

    const v0, 0x7f0a04da

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->artistText:Landroid/widget/TextView;

    const v0, 0x7f0a06d2

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->explicitIndicator:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x7f0a06e8

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    const v0, 0x7f0a06ea

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a06eb

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    const v0, 0x7f0a06e9

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessButton:Landroid/view/View;

    const v0, 0x7f0a06df

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a06e6

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    const v0, 0x7f0a06e7

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    const v0, 0x7f0a0062

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    const v0, 0x7f0a0061

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    const v0, 0x7f0a0059

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    const v0, 0x7f0a005a

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    const v0, 0x7f0a005b

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    const v0, 0x7f0a005c

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    const v0, 0x7f0a005d

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    const p0, 0x7f0a06c0

    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Barrier;

    return-void
.end method


# virtual methods
.method public final getAction(I)Landroid/widget/ImageButton;
    .locals 1

    const v0, 0x7f0a0062

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0061

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0063

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0059

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_3
    const v0, 0x7f0a005a

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_4
    const v0, 0x7f0a005b

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_5
    const v0, 0x7f0a005c

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_6
    const v0, 0x7f0a005d

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
