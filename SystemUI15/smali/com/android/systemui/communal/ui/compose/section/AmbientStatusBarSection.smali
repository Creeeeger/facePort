.class public final Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final factory:Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;->factory:Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent$Factory;

    return-void
.end method


# virtual methods
.method public final AmbientStatusBar(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    const/4 v0, 0x2

    move-object v3, p3

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x6f78616c

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/high16 v5, -0x80000000

    and-int v5, p5, v5

    if-eqz v5, :cond_0

    or-int/lit8 v5, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v4, 0xe

    if-nez v5, :cond_2

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v5, v4

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object v7, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v4, 0x70

    if-nez v7, :cond_3

    move-object v7, p2

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :goto_3
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v0, v4, 0x380

    if-nez v0, :cond_8

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_4

    :cond_7
    const/16 v0, 0x80

    :goto_4
    or-int/2addr v5, v0

    :cond_8
    :goto_5
    and-int/lit16 v0, v5, 0x2db

    const/16 v5, 0x92

    if-ne v0, v5, :cond_a

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_8

    :cond_a
    :goto_6
    if-eqz v6, :cond_b

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_b
    move-object v0, v7

    :goto_7
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v5, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$1;-><init>(Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;)V

    sget-object v6, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->StatusBar:Lcom/android/compose/animation/scene/ElementKey;

    invoke-interface {p1, v0, v6}, Lcom/android/compose/animation/scene/SceneScope;->element(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/ElementKey;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v3

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v0

    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v8, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;-><init>(Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;II)V

    iput-object v8, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
