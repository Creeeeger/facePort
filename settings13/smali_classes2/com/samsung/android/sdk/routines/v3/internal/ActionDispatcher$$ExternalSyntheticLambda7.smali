.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;->f$0:Landroid/os/Bundle;

    iput-wide p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;->f$1:J

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;->f$0:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;->f$1:J

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Landroid/os/Bundle;JLjava/lang/Object;Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void
.end method
