.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public buttonSizePx:Landroid/util/Size;

.field public final defaultBurnInPreventionYOffsetPx:I

.field public indicationAreaBottomMargin:I

.field public indicationAreaSideMargin:I

.field public isOverlayView:Z

.field public shortcutBottomMargin:I

.field public shortcutSideMargin:I

.field public upperFPIndicationBottomMargin:I

.field public usimTextAreaBottomMargin:I


# direct methods
.method public constructor <init>(IIIIILandroid/util/Size;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->defaultBurnInPreventionYOffsetPx:I

    iput p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    iput p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    iput p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    iput p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    iput p7, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    iput p8, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    iput-boolean p9, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIILandroid/util/Size;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v2, p9

    :goto_7
    move-object p2, p0

    move p3, p1

    move p4, v1

    move p5, v3

    move p6, v4

    move/from16 p7, v5

    move-object/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v2

    invoke-direct/range {p2 .. p11}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(IIIIILandroid/util/Size;IIZ)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;
    .locals 10

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->defaultBurnInPreventionYOffsetPx:I

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    iget v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    iget v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    iget v5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    iget v7, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    iget v8, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    iget-boolean v9, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(IIIIILandroid/util/Size;IIZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    iget v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->defaultBurnInPreventionYOffsetPx:I

    iget v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->defaultBurnInPreventionYOffsetPx:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    iget-object v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    iget v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->defaultBurnInPreventionYOffsetPx:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    iget v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    iget v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    iget v5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    iget v6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    iget-boolean v7, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ConfigurationBasedDimensions(defaultBurnInPreventionYOffsetPx="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->defaultBurnInPreventionYOffsetPx:I

    const-string v9, ", indicationAreaSideMargin="

    const-string v10, ", indicationAreaBottomMargin="

    invoke-static {v8, p0, v9, v0, v10}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ", upperFPIndicationBottomMargin="

    const-string v0, ", usimTextAreaBottomMargin="

    invoke-static {v8, v1, p0, v2, v0}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", buttonSizePx="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", shortcutSideMargin="

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", shortcutBottomMargin="

    const-string v0, ", isOverlayView="

    invoke-static {v8, v5, p0, v6, v0}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ")"

    invoke-static {v8, v7, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
