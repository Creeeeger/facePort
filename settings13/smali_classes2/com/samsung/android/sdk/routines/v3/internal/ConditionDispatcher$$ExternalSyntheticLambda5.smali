.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;->f$0:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->a(Landroid/os/Bundle;Ljava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/ConditionValidity;)V

    return-void
.end method
