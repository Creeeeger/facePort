.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput-wide p5, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$4:J

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$5:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    iget-object v4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$4:J

    iget-object v9, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$5:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda2;->f$6:Ljava/lang/Object;

    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v10, v9, v7, v8, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;JLjava/lang/Object;)V

    iput-object v4, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mContext:Landroid/content/Context;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v7, "onPerformAction : "

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "EdgelightingRoutineActionHandler"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v6, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    iput-object p0, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    :cond_0
    const-string p0, "effect_key"

    const-string v7, ""

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move v8, v2

    goto :goto_1

    :sswitch_0
    const-string v9, "preload/echo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_1
    const-string v9, "preload/basic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_2
    const-string v9, "preload/reflection"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "preload/noframe"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    move v8, v0

    goto :goto_1

    :sswitch_4
    const-string v9, "preload/spotlight"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    move v8, v1

    :goto_1
    packed-switch v8, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    invoke-virtual {v10, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingEffect:Ljava/lang/String;

    const-string p0, "color_key"

    const-string v7, "0"

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string v8, "transparency_key"

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "thickness_key"

    invoke-virtual {v6, v9, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, "duration_key"

    invoke-virtual {v6, v11, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "color_value_key"

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "onPerformAction param="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingEffect:Ljava/lang/String;

    const-string v13, ";"

    invoke-static {v7, v12, v13, p0, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v7, v8, v13, v9, v13}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v7

    iget-object v12, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingEffect:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result v7

    if-eqz v6, :cond_7

    const/16 v12, 0x63

    if-eq p0, v12, :cond_6

    goto :goto_2

    :cond_6
    move v0, v6

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {v4, p0, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result v0

    :goto_3
    filled-new-array {v0}, [I

    move-result-object v0

    int-to-float v8, v8

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v8, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingWidth(ILandroid/content/Context;)I

    move-result v4

    invoke-static {v11}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v8

    const-string v9, "EdgeLightingInfo : type="

    const-string v11, ",color="

    const-string v13, ",alpha="

    invoke-static {v7, p0, v9, v11, v13}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ",width="

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",time="

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",colorValue="

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput v7, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    iput v12, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    int-to-float v0, v4

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    iput v2, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    int-to-long v4, v8

    iput-wide v4, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    iget-object p0, v3, Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler$1;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-virtual {v10, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x647c7732 -> :sswitch_4
        -0x286061ba -> :sswitch_3
        0x27565ff1 -> :sswitch_2
        0x39589ca8 -> :sswitch_1
        0x5cb1aa6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
