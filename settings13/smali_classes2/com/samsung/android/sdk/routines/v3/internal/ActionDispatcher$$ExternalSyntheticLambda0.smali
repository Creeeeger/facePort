.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput-wide p5, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v6, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->c(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method
