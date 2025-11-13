.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;
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
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$sceneTransitions$1$3$1;

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

    check-cast p1, Lcom/android/compose/animation/scene/BaseTransitionBuilder;

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Communal$Elements;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->Grid:Lcom/android/compose/animation/scene/ElementKey;

    check-cast p1, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;

    invoke-virtual {p1, p0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->fade(Lcom/android/compose/animation/scene/ElementMatcher;)V

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->IndicationArea:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {p1, p0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->fade(Lcom/android/compose/animation/scene/ElementMatcher;)V

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->LockIcon:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {p1, p0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->fade(Lcom/android/compose/animation/scene/ElementMatcher;)V

    sget-object p0, Lcom/android/systemui/communal/ui/compose/Communal$Elements;->StatusBar:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {p1, p0}, Lcom/android/compose/animation/scene/BaseTransitionBuilderImpl;->fade(Lcom/android/compose/animation/scene/ElementMatcher;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
