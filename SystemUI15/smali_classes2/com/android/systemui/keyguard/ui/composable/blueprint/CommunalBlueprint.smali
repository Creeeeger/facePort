.class public final Lcom/android/systemui/keyguard/ui/composable/blueprint/CommunalBlueprint;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ui/composable/blueprint/ComposableLockscreenSceneBlueprint;


# instance fields
.field public final id:Ljava/lang/String;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "communal"

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/composable/blueprint/CommunalBlueprint;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/composable/blueprint/CommunalBlueprint;->id:Ljava/lang/String;

    return-object p0
.end method
