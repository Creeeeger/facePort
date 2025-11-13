.class public final synthetic Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;->this$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    invoke-virtual {p0}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->updateController()V

    return-void
.end method
