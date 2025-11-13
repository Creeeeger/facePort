.class public final Lcom/android/systemui/navigationbar/model/NavBarStates;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public backVisible:Z

.field public canMove:Z

.field public darkMode:Z

.field public deviceProvisioned:Z

.field public disable1:I

.field public disable2:I

.field public displayChanged:Z

.field public displaySize:Landroid/graphics/Point;

.field public gestureDisabledByPolicy:Z

.field public hardKeyIntentPolicy:Z

.field public homeVisible:Z

.field public iconHint:I

.field public imeDownButtonForAllRotation:Z

.field public lastTaskUserId:I

.field public layoutChangedBeforeAttached:Z

.field public layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

.field public multiModalForLargeCover:Ljava/lang/Boolean;

.field public navigationMode:I

.field public recentVisible:Z

.field public regionSamplingEnabled:Z

.field public rotation:I

.field public sPayShowing:Z

.field public supportCoverScreen:Z

.field public supportLargeCoverScreen:Z

.field public supportPhoneLayoutProvider:Z

.field public transitionMode:I

.field public userSetupCompleteForCurrentUser:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move v1, p5

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    move v1, p6

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    move v1, p7

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    move v1, p9

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    move v1, p10

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    move v1, p12

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    move v1, p13

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    move/from16 v1, p20

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    move/from16 v1, p26

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_4

    :cond_4
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move/from16 v9, p7

    :goto_5
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_6

    move v10, v7

    goto :goto_6

    :cond_6
    move/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_7

    move v11, v7

    goto :goto_7

    :cond_7
    move/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_8

    move v12, v7

    goto :goto_8

    :cond_8
    move/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_9

    move v13, v7

    goto :goto_9

    :cond_9
    move/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_a

    move v14, v7

    goto :goto_a

    :cond_a
    move/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_b

    move v15, v7

    goto :goto_b

    :cond_b
    move/from16 v15, p13

    :goto_b
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_c

    move v2, v7

    goto :goto_c

    :cond_c
    move/from16 v2, p14

    :goto_c
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_d

    :cond_d
    move/from16 v5, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    const/16 v16, 0x1

    goto :goto_e

    :cond_e
    move/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    goto :goto_f

    :cond_f
    move/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move/from16 v18, v7

    goto :goto_10

    :cond_10
    move/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    move/from16 v19, v7

    goto :goto_11

    :cond_11
    move/from16 v19, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    move/from16 v20, v7

    goto :goto_12

    :cond_12
    move/from16 v20, p20

    :goto_12
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    move/from16 v21, v7

    goto :goto_13

    :cond_13
    move/from16 v21, p21

    :goto_13
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    move/from16 v22, v7

    goto :goto_14

    :cond_14
    move/from16 v22, p22

    :goto_14
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    move/from16 v23, v7

    goto :goto_15

    :cond_15
    move/from16 v23, p23

    :goto_15
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    move/from16 v24, v7

    goto :goto_16

    :cond_16
    move/from16 v24, p24

    :goto_16
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    move/from16 v25, v7

    goto :goto_17

    :cond_17
    move/from16 v25, p25

    :goto_17
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    goto :goto_18

    :cond_18
    move/from16 v7, p26

    :goto_18
    const/high16 v26, 0x4000000

    and-int v0, v0, v26

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v0, p27

    :goto_19
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p7, v6

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p16, v2

    move/from16 p17, v5

    move/from16 p18, v16

    move/from16 p19, v17

    move/from16 p20, v18

    move/from16 p21, v19

    move/from16 p22, v20

    move/from16 p23, v21

    move/from16 p24, v22

    move/from16 p25, v23

    move/from16 p26, v24

    move/from16 p27, v25

    move/from16 p28, v7

    move-object/from16 p29, v0

    invoke-direct/range {p2 .. p29}, Lcom/android/systemui/navigationbar/model/NavBarStates;-><init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/navigationbar/model/NavBarStates;)Lcom/android/systemui/navigationbar/model/NavBarStates;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    iget-object v4, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget v5, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    iget v6, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    iget v7, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    iget v9, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-boolean v10, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    iget-boolean v11, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    iget v12, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    iget-boolean v13, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    move/from16 v16, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    move/from16 v20, v15

    iget v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    move/from16 v21, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    move/from16 v22, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    move/from16 v23, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    move/from16 v24, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    move/from16 v25, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    move/from16 v26, v15

    iget v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    move/from16 v27, v15

    iget-object v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v28, Lcom/android/systemui/navigationbar/model/NavBarStates;

    move-object/from16 v0, v28

    move-object/from16 v29, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move-object/from16 v27, v29

    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/navigationbar/model/NavBarStates;-><init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;)V

    return-object v28
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    iget v3, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    iget-object v4, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget v5, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    iget v6, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    iget v7, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    iget-boolean v8, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    iget v9, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-boolean v10, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    iget-boolean v11, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    iget v12, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    iget-boolean v13, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    move/from16 v16, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    move/from16 v20, v15

    iget v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    move/from16 v21, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    move/from16 v22, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    move/from16 v23, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    move/from16 v24, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    move/from16 v25, v15

    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    move/from16 v26, v15

    iget v15, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v27, v15

    const-string v15, "NavBarStates(displaySize="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canMove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportPhoneLayoutProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", layoutProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", navigationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disable1="

    const-string v2, ", disable2="

    invoke-static {v0, v5, v1, v6, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", darkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceProvisioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userSetupCompleteForCurrentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sPayShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gestureDisabledByPolicy="

    const-string v2, ", recentVisible="

    invoke-static {v0, v13, v1, v14, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", homeVisible="

    const-string v2, ", backVisible="

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", hardKeyIntentPolicy="

    const-string v2, ", imeDownButtonForAllRotation="

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transitionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", regionSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayChanged="

    const-string v2, ", layoutChangedBeforeAttached="

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", supportCoverScreen="

    const-string v2, ", supportLargeCoverScreen="

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastTaskUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", multiModalForLargeCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
