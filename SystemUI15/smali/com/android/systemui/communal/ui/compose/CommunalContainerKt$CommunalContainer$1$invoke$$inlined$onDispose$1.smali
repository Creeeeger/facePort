.class public final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $dataSourceDelegator$inlined:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1$invoke$$inlined$onDispose$1;->$dataSourceDelegator$inlined:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1$invoke$$inlined$onDispose$1;->$dataSourceDelegator$inlined:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->setDelegate(Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;)V

    return-void
.end method
