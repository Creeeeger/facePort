.class public final Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final externalDisplayCount:I

.field public final fromDensityDpi:I

.field public final fromFocusedAppUid:I

.field public final fromFoldableDeviceState:I

.field public final fromPipAppUid:I

.field public final fromState:I

.field public final fromVisibleAppsUid:Ljava/util/Set;

.field public final hallSensorToDeviceStateChangeMs:I

.field public final hallSensorToFirstHingeAngleChangeMs:I

.field public final latencyMs:I

.field public final notificationCount:I

.field public final onDrawnToOnScreenTurnedOnMs:I

.field public final onScreenTurningOnToOnDrawnMs:I

.field public final throttlingLevel:I

.field public final toDensityDpi:I

.field public final toFocusedAppUid:I

.field public final toFoldableDeviceState:I

.field public final toPipAppUid:I

.field public final toState:I

.field public final toVisibleAppsUid:Ljava/util/Set;

.field public final vskinTemperatureC:I


# direct methods
.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    const v22, 0x1fffff

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;-><init>(IIIIILjava/util/Set;IIIIILjava/util/Set;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/util/Set;IIIIILjava/util/Set;IIIIIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IIIIIIIII)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    move v1, p2

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    move v1, p3

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    move v1, p4

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    move v1, p5

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    move v1, p7

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    move v1, p8

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    move v1, p9

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    move v1, p10

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    move v1, p11

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    move v1, p13

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    move/from16 v1, p15

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    move/from16 v1, p17

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    move/from16 v1, p19

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    move/from16 v1, p20

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    move/from16 v1, p21

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    return-void
.end method

.method public constructor <init>(IIIIILjava/util/Set;IIIIILjava/util/Set;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    sget-object v8, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, -0x1

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, -0x1

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, -0x1

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    sget-object v14, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, -0x1

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    const/4 v2, -0x1

    goto :goto_d

    :cond_d
    move/from16 v2, p14

    :goto_d
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    const/4 v4, -0x1

    goto :goto_e

    :cond_e
    move/from16 v4, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, -0x1

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, -0x1

    goto :goto_11

    :cond_11
    move/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, -0x1

    goto :goto_12

    :cond_12
    move/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, -0x1

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v0, v0, v21

    if-eqz v0, :cond_14

    const/4 v0, -0x1

    goto :goto_14

    :cond_14
    move/from16 v0, p21

    :goto_14
    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move-object/from16 p12, v14

    move/from16 p13, v15

    move/from16 p14, v2

    move/from16 p15, v4

    move/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move/from16 p19, v19

    move/from16 p20, v20

    move/from16 p21, v0

    invoke-direct/range {p0 .. p21}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;-><init>(IIIIILjava/util/Set;IIIIILjava/util/Set;IIIIIIIII)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;IIIII)Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p5

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    move v4, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    iget v6, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    iget v7, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    iget v8, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    iget-object v9, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    iget v10, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p3

    :goto_2
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    move v12, v1

    goto :goto_3

    :cond_3
    move/from16 v12, p4

    :goto_3
    iget v13, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    iget v14, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    iget-object v15, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    iget v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    iget v3, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    move/from16 v17, v2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    move/from16 v19, v2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    move/from16 v20, v2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    move/from16 v21, v2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    move/from16 v22, v2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    move/from16 v23, v2

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    move/from16 v18, v3

    move-object v3, v0

    move/from16 v16, v1

    move/from16 v24, v2

    invoke-direct/range {v3 .. v24}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;-><init>(IIIIILjava/util/Set;IIIIILjava/util/Set;IIIIIIIII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;

    iget v1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    iget v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    iget v3, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    iget p1, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    if-eq p0, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromVisibleAppsUid:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toVisibleAppsUid:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DisplaySwitchLatencyEvent(latencyMs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->latencyMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromFoldableDeviceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFoldableDeviceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromFocusedAppUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromFocusedAppUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromPipAppUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromPipAppUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromVisibleAppsUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fromDensityDpi="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->fromDensityDpi:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toFoldableDeviceState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFoldableDeviceState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toFocusedAppUid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toFocusedAppUid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toPipAppUid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toPipAppUid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toVisibleAppsUid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", toDensityDpi="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->toDensityDpi:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", notificationCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->notificationCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", externalDisplayCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->externalDisplayCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", throttlingLevel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->throttlingLevel:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vskinTemperatureC="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->vskinTemperatureC:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hallSensorToFirstHingeAngleChangeMs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToFirstHingeAngleChangeMs:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hallSensorToDeviceStateChangeMs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->hallSensorToDeviceStateChangeMs:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", onScreenTurningOnToOnDrawnMs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onScreenTurningOnToOnDrawnMs:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", onDrawnToOnScreenTurnedOnMs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$DisplaySwitchLatencyEvent;->onDrawnToOnScreenTurnedOnMs:I

    const-string v0, ")"

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
