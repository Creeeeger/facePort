.class public final Landroidx/compose/material3/ColorScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final background:J

.field public defaultButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field public defaultCardColorsCached:Landroidx/compose/material3/CardColors;

.field public defaultCenterAlignedTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

.field public defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field public defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

.field public defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field public defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

.field public defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

.field public defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

.field public final error:J

.field public final errorContainer:J

.field public final inverseOnSurface:J

.field public final inversePrimary:J

.field public final inverseSurface:J

.field public final onBackground:J

.field public final onError:J

.field public final onErrorContainer:J

.field public final onPrimary:J

.field public final onPrimaryContainer:J

.field public final onSecondary:J

.field public final onSecondaryContainer:J

.field public final onSurface:J

.field public final onSurfaceVariant:J

.field public final onTertiary:J

.field public final onTertiaryContainer:J

.field public final outline:J

.field public final outlineVariant:J

.field public final primary:J

.field public final primaryContainer:J

.field public final scrim:J

.field public final secondary:J

.field public final secondaryContainer:J

.field public final surface:J

.field public final surfaceBright:J

.field public final surfaceContainer:J

.field public final surfaceContainerHigh:J

.field public final surfaceContainerHighest:J

.field public final surfaceContainerLow:J

.field public final surfaceContainerLowest:J

.field public final surfaceDim:J

.field public final surfaceTint:J

.field public final surfaceVariant:J

.field public final tertiary:J

.field public final tertiaryContainer:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 75

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v72, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v74, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-wide/from16 v30, p29

    move-wide/from16 v32, p31

    move-wide/from16 v34, p33

    move-wide/from16 v36, p35

    move-wide/from16 v38, p37

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move-wide/from16 v46, p45

    move-wide/from16 v48, p47

    move-wide/from16 v50, p49

    move-wide/from16 v52, p51

    move-wide/from16 v54, p53

    move-wide/from16 v56, p55

    move-wide/from16 v58, p57

    move-wide/from16 v60, v72

    move-wide/from16 v62, v72

    move-wide/from16 v64, v72

    move-wide/from16 v66, v72

    move-wide/from16 v68, v72

    move-wide/from16 v70, v72

    invoke-direct/range {v1 .. v74}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->background:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    move-wide/from16 v1, p33

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    move-wide/from16 v1, p35

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    move-wide/from16 v1, p37

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    move-wide/from16 v1, p39

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    move-wide/from16 v1, p41

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    move-wide/from16 v1, p43

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    move-wide/from16 v1, p45

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->error:J

    move-wide/from16 v1, p47

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    move-wide/from16 v1, p49

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    move-wide/from16 v1, p51

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    move-wide/from16 v1, p53

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    move-wide/from16 v1, p55

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    move-wide/from16 v1, p57

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    move-wide/from16 v1, p59

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    move-wide/from16 v1, p61

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    move-wide/from16 v1, p63

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    move-wide/from16 v1, p65

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    move-wide/from16 v1, p67

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    move-wide/from16 v1, p69

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    move-wide/from16 v1, p71

    iput-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p72}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p58}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorScheme(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    const-string v3, "onPrimary="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    const-string v3, "primaryContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    const-string v3, "onPrimaryContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    const-string v3, "inversePrimary="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    const-string v3, "secondary="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondary:J

    const-string v3, "onSecondary="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    const-string v3, "secondaryContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    const-string v3, "onSecondaryContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    const-string/jumbo v3, "tertiary="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    const-string v3, "onTertiary="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    const-string/jumbo v3, "tertiaryContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    const-string v3, "onTertiaryContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    const-string v3, "background="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->background:J

    const-string v3, "onBackground="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    const-string/jumbo v3, "surface="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surface:J

    const-string v3, "onSurface="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    const-string/jumbo v3, "surfaceVariant="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    const-string v3, "onSurfaceVariant="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    const-string/jumbo v3, "surfaceTint="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    const-string v3, "inverseSurface="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    const-string v3, "inverseOnSurface="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    const-string v3, "error="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->error:J

    const-string v3, "onError="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onError:J

    const-string v3, "errorContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    const-string v3, "onErrorContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    const-string v3, "outline="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->outline:J

    const-string v3, "outlineVariant="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    const-string v3, "scrim="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->scrim:J

    const-string/jumbo v3, "surfaceBright="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    const-string/jumbo v3, "surfaceDim="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    const-string/jumbo v3, "surfaceContainer="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    const-string/jumbo v3, "surfaceContainerHigh="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    const-string/jumbo v3, "surfaceContainerHighest="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    const-string/jumbo v3, "surfaceContainerLow="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    const-string/jumbo v3, "surfaceContainerLowest="

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/OverscrollConfiguration$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
