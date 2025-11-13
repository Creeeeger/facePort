.class public final Lcom/android/systemui/shade/NotificationShadeWindowState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;


# instance fields
.field public final asStringList$delegate:Lkotlin/Lazy;

.field public backgroundBlurRadius:I

.field public bouncerShowing:Z

.field public communalVisible:Z

.field public final componentsForcingTopUi:Ljava/util/Set;

.field public coverAppShowing:Z

.field public coverType:I

.field public dozing:Z

.field public dreaming:Z

.field public forceDozeBrightness:Z

.field public forceInvisible:Z

.field public final forceOpenTokens:Ljava/util/Set;

.field public forcePluginOpen:Z

.field public forceUserActivity:Z

.field public forceVisibleForUnlockAnimation:Z

.field public forceWindowCollapsed:Z

.field public glanceableHubShowing:Z

.field public headsUpNotificationShowing:Z

.field public isCoverClosed:Z

.field public isSwitchingUsers:Z

.field public keyguardFadingAway:Z

.field public keyguardGoingAway:Z

.field public keyguardNeedsInput:Z

.field public keyguardOccluded:Z

.field public keyguardShowing:Z

.field public keyguardUserActivityTimeout:J

.field public launchingActivityFromNotification:Z

.field public lightRevealScrimOpaque:Z

.field public lockStarTimeOutValue:J

.field public lockTimeOutValue:J

.field public mediaBackdropShowing:Z

.field public notificationShadeFocusable:Z

.field public panelVisible:Z

.field public qsExpanded:Z

.field public remoteInputActive:Z

.field public screenOrientationNoSensor:Z

.field public scrimsVisibility:I

.field public securedWindow:Z

.field public shadeOrQsExpanded:Z

.field public shouldHideNotificationShadeInMirror:Z

.field public statusBarState:I

.field public userScreenTimeOut:Z

.field public windowNotTouchable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/android/systemui/shade/NotificationShadeWindowState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v30, "communalVisible"

    const-string v31, "keyguardUserActivityTimeout"

    const-string v2, "keyguardShowing"

    const-string v3, "keyguardOccluded"

    const-string v4, "keyguardNeedsInput"

    const-string v5, "panelVisible"

    const-string v6, "panelExpanded"

    const-string v7, "notificationShadeFocusable"

    const-string v8, "glanceableHubShowing"

    const-string v9, "bouncerShowing"

    const-string v10, "keyguardFadingAway"

    const-string v11, "keyguardGoingAway"

    const-string v12, "qsExpanded"

    const-string v13, "headsUpShowing"

    const-string v14, "lightRevealScrimOpaque"

    const-string v15, "isSwitchingUsers"

    const-string v16, "forceCollapsed"

    const-string v17, "forceDozeBrightness"

    const-string v18, "forceUserActivity"

    const-string v19, "launchingActivity"

    const-string v20, "backdropShowing"

    const-string v21, "notTouchable"

    const-string v22, "componentsForcingTopUi"

    const-string v23, "forceOpenTokens"

    const-string/jumbo v24, "statusBarState"

    const-string v25, "remoteInputActive"

    const-string v26, "forcePluginOpen"

    const-string v27, "dozing"

    const-string/jumbo v28, "scrimsVisibility"

    const-string v29, "backgroundBlurRadius"

    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->TABLE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 49

    move-object/from16 v0, p0

    const/16 v47, 0x3ff

    const/16 v48, 0x0

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

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, -0x1

    invoke-direct/range {v0 .. v48}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>(ZZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZZZJJZZZZZIJZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZZZJJZZZZZIJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZZZZZZZZZZZZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;IZZZZIIZZZJJZZZZZIJZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    move v1, p4

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->glanceableHubShowing:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isSwitchingUsers:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    move/from16 v1, p23

    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    move/from16 v1, p28

    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    move/from16 v1, p29

    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->communalVisible:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockStarTimeOutValue:J

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockTimeOutValue:J

    move/from16 v1, p37

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->userScreenTimeOut:Z

    move/from16 v1, p38

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    move/from16 v1, p39

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->securedWindow:Z

    move/from16 v1, p40

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    move/from16 v1, p41

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    move/from16 v1, p42

    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    move-wide/from16 v1, p43

    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    move/from16 v1, p45

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->shouldHideNotificationShadeInMirror:Z

    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationShadeWindowState$asStringList$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZZZJJZZZZZIJZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 43

    move/from16 v0, p46

    move/from16 v1, p47

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move/from16 v4, p2

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

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

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

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move/from16 v3, p14

    :goto_d
    move/from16 p14, v3

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    move/from16 v3, p15

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

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    new-instance v21, Ljava/util/LinkedHashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    new-instance v22, Ljava/util/LinkedHashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1d

    const/16 v30, 0x0

    goto :goto_1d

    :cond_1d
    move/from16 v30, p30

    :goto_1d
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_1e

    const/16 v31, 0x0

    goto :goto_1e

    :cond_1e
    move/from16 v31, p31

    :goto_1e
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move/from16 v0, p32

    :goto_1f
    and-int/lit8 v32, v1, 0x1

    const-wide/16 v33, 0x0

    if-eqz v32, :cond_20

    move-wide/from16 v35, v33

    goto :goto_20

    :cond_20
    move-wide/from16 v35, p33

    :goto_20
    and-int/lit8 v32, v1, 0x2

    if-eqz v32, :cond_21

    goto :goto_21

    :cond_21
    move-wide/from16 v33, p35

    :goto_21
    and-int/lit8 v32, v1, 0x4

    if-eqz v32, :cond_22

    const/16 v32, 0x0

    goto :goto_22

    :cond_22
    move/from16 v32, p37

    :goto_22
    and-int/lit8 v37, v1, 0x8

    if-eqz v37, :cond_23

    const/16 v37, 0x0

    goto :goto_23

    :cond_23
    move/from16 v37, p38

    :goto_23
    and-int/lit8 v38, v1, 0x10

    if-eqz v38, :cond_24

    const/16 v38, 0x0

    goto :goto_24

    :cond_24
    move/from16 v38, p39

    :goto_24
    and-int/lit8 v39, v1, 0x20

    if-eqz v39, :cond_25

    const/16 v39, 0x0

    goto :goto_25

    :cond_25
    move/from16 v39, p40

    :goto_25
    and-int/lit8 v40, v1, 0x40

    if-eqz v40, :cond_26

    const/16 v40, 0x0

    goto :goto_26

    :cond_26
    move/from16 v40, p41

    :goto_26
    move/from16 p32, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move/from16 v0, p42

    :goto_27
    move/from16 p42, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    const-wide/16 v41, -0x1

    goto :goto_28

    :cond_28
    move-wide/from16 v41, p43

    :goto_28
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move/from16 v0, p45

    :goto_29
    move/from16 p1, v2

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p12, v14

    move/from16 p13, v15

    move/from16 p15, v3

    move/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move/from16 p19, v19

    move/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move/from16 p23, v23

    move/from16 p24, v24

    move/from16 p25, v25

    move/from16 p26, v26

    move/from16 p27, v27

    move/from16 p28, v28

    move/from16 p29, v29

    move/from16 p30, v30

    move/from16 p31, v31

    move-wide/from16 p33, v35

    move-wide/from16 p35, v33

    move/from16 p37, v32

    move/from16 p38, v37

    move/from16 p39, v38

    move/from16 p40, v39

    move/from16 p41, v40

    move-wide/from16 p43, v41

    move/from16 p45, v0

    invoke-direct/range {p0 .. p45}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>(ZZZZZZZZZZZZZZZZZZZZLjava/util/Set;Ljava/util/Set;IZZZZIIZZZJJZZZZZIJZ)V

    return-void
.end method


# virtual methods
.method public final isKeyguardShowingAndNotOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
