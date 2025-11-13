.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    check-cast p1, Lcom/android/systemui/plugins/GlobalActions;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions;->destroy()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    return-void
.end method
