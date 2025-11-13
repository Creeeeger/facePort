.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;I)V
    .locals 0

    iput p9, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput-wide p5, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v2, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v3, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v6, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v0, v9}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;Ljava/lang/Object;I)V

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->checkValidity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void

    :pswitch_0
    iget-object v10, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v11, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v12, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v14, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;Ljava/lang/Object;I)V

    move-object/from16 v16, v2

    invoke-interface/range {v10 .. v16}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v2, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v5, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v7, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    const/4 v9, 0x2

    invoke-direct {v8, v7, v0, v9}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;Ljava/lang/Object;I)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-wide/from16 v20, v5

    move-object/from16 v22, v8

    invoke-interface/range {v16 .. v22}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getPreviewImageFileDescriptor(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void

    :pswitch_2
    iget-object v10, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v11, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v12, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v14, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, v14, v15, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;-><init>(Landroid/os/Bundle;JLjava/lang/Object;)V

    move-object/from16 v16, v2

    invoke-interface/range {v10 .. v16}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    return-void

    :pswitch_3
    iget-object v3, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v4, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v7, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v9, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v9, v1, v7, v8, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;-><init>(Landroid/os/Bundle;JLjava/lang/Object;)V

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    return-void

    :pswitch_4
    iget-object v10, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;

    iget-object v11, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v12, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v14, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v1, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v0, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;Ljava/lang/Object;I)V

    move-object/from16 v16, v2

    invoke-interface/range {v10 .. v16}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;->getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
