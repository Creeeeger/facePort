.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionButtons:Ljava/util/List;

.field public final appIcon:Landroid/graphics/drawable/Icon;

.field public final artistName:Ljava/lang/CharSequence;

.field public final backgroundCover:Landroid/graphics/drawable/Icon;

.field public final canShowTime:Z

.field public final colorScheme:Lcom/android/systemui/monet/ColorScheme;

.field public final contentDescription:Lkotlin/jvm/functions/Function1;

.field public final gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

.field public final isExplicitVisible:Z

.field public final launcherIcon:Lcom/android/systemui/common/shared/model/Icon;

.field public final onBindSeekbar:Lkotlin/jvm/functions/Function1;

.field public final onClicked:Lkotlin/jvm/functions/Function1;

.field public final onLongClicked:Lkotlin/jvm/functions/Function0;

.field public final onSeek:Lkotlin/jvm/functions/Function0;

.field public final outputSwitcher:Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

.field public final playTurbulenceNoise:Z

.field public final shouldAddGradient:Z

.field public final titleName:Ljava/lang/CharSequence;

.field public final useGrayColorFilter:Z

.field public final useSemanticActions:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Lcom/android/systemui/common/shared/model/Icon;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZZLcom/android/systemui/monet/ColorScheme;ZZZLjava/util/List;Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Lcom/android/systemui/common/shared/model/Icon;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "ZZ",
            "Lcom/android/systemui/monet/ColorScheme;",
            "ZZZ",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;",
            ">;",
            "Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;",
            "Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->backgroundCover:Landroid/graphics/drawable/Icon;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->appIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->launcherIcon:Lcom/android/systemui/common/shared/model/Icon;

    move v1, p5

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useGrayColorFilter:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->artistName:Ljava/lang/CharSequence;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->titleName:Ljava/lang/CharSequence;

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->isExplicitVisible:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->shouldAddGradient:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    move v1, p11

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->canShowTime:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->playTurbulenceNoise:Z

    move v1, p13

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useSemanticActions:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->actionButtons:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->outputSwitcher:Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onSeek:Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onBindSeekbar:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->backgroundCover:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->backgroundCover:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->appIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->launcherIcon:Lcom/android/systemui/common/shared/model/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->launcherIcon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useGrayColorFilter:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useGrayColorFilter:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->artistName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->artistName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->titleName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->titleName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->isExplicitVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->isExplicitVisible:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->shouldAddGradient:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->shouldAddGradient:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->canShowTime:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->canShowTime:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->playTurbulenceNoise:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->playTurbulenceNoise:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useSemanticActions:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useSemanticActions:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->actionButtons:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->actionButtons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->outputSwitcher:Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->outputSwitcher:Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onSeek:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onSeek:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onBindSeekbar:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onBindSeekbar:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->backgroundCover:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->appIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->launcherIcon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useGrayColorFilter:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->artistName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->titleName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->isExplicitVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->shouldAddGradient:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->canShowTime:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->playTurbulenceNoise:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useSemanticActions:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->actionButtons:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->outputSwitcher:Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onSeek:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onBindSeekbar:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->backgroundCover:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->artistName:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->titleName:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->actionButtons:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MediaPlayerViewModel(contentDescription="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->contentDescription:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", backgroundCover="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", launcherIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->launcherIcon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", useGrayColorFilter="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useGrayColorFilter:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", artistName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", titleName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isExplicitVisible="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->isExplicitVisible:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldAddGradient="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->shouldAddGradient:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", colorScheme="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", canShowTime="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->canShowTime:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", playTurbulenceNoise="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->playTurbulenceNoise:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useSemanticActions="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->useSemanticActions:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", actionButtons="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", outputSwitcher="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->outputSwitcher:Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gutsMenu="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->gutsMenu:Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onClicked="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onLongClicked="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onLongClicked:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onSeek="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onSeek:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onBindSeekbar="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;->onBindSeekbar:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
