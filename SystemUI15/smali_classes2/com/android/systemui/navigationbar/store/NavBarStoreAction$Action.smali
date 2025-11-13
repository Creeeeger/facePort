.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final a11yClickable:Z

.field public final a11yLongClickable:Z

.field public final contextualButtonVisible:Z

.field public final dampingRatio:F

.field public final darkIntensity:F

.field public final disableSUWBack:Z

.field public final displayId:I

.field public final edgeBackGestureDisabled:Z

.field public final folded:Z

.field public final gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

.field public final leftRemoteViewContainer:Landroid/widget/LinearLayout;

.field public final navBarIconHints:I

.field public final navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

.field public final navBarVisibility:I

.field public final oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

.field public final remoteViewDarkIntensity:F

.field public final remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

.field public final rightRemoteViewContainer:Landroid/widget/LinearLayout;

.field public final rotation:I

.field public final stiffness:F

.field public final sysUiFlagInfoList:Ljava/util/List;

.field public final taskbarEnabled:Z

.field public final taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    const v24, 0x7fffff

    const/16 v25, 0x0

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

    invoke-direct/range {v0 .. v25}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            "ZF",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;",
            "ZFIZZIZ",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;",
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;",
            ">;ZZ",
            "Lcom/android/systemui/shared/navigationbar/NavBarEvents;",
            "FFII)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    move v1, p5

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    move v1, p6

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    move v1, p9

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    move v1, p10

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    move v1, p11

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    move v1, p13

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    move/from16 v1, p20

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    move/from16 v1, p21

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    move/from16 v1, p22

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    move/from16 v1, p23

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    new-instance v9, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v12

    move-object/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move/from16 p6, v10

    move-object/from16 p7, v11

    invoke-direct/range {p1 .. p7}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

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

    goto :goto_8

    :cond_8
    move/from16 v8, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    new-instance v6, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    const/16 v16, 0xf

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 p2, v6

    move/from16 p3, v18

    move/from16 p4, v19

    move/from16 p5, v20

    move-wide/from16 p6, v21

    move/from16 p8, v16

    move-object/from16 p9, v17

    invoke-direct/range {p2 .. p9}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;-><init>(IIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_e
    move-object/from16 v6, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

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

    new-instance v19, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v20, 0xfff

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

    const/16 v33, 0x0

    move-object/from16 p2, v19

    move-object/from16 p3, v22

    move-object/from16 p4, v23

    move-object/from16 p5, v24

    move-object/from16 p6, v25

    move/from16 p7, v26

    move/from16 p8, v27

    move/from16 p9, v28

    move/from16 p10, v29

    move/from16 p11, v30

    move-object/from16 p12, v31

    move/from16 p13, v32

    move-object/from16 p14, v33

    move/from16 p15, v20

    move-object/from16 p16, v21

    invoke-direct/range {p2 .. p16}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    const/16 v21, 0x0

    if-eqz v20, :cond_13

    move/from16 v20, v21

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    goto :goto_14

    :cond_14
    move/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    move/from16 v0, p23

    :goto_16
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v7

    move-object/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v8

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move-object/from16 p15, v6

    move-object/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move-object/from16 p19, v19

    move/from16 p20, v20

    move/from16 p21, v21

    move/from16 p22, v22

    move/from16 p23, v0

    invoke-direct/range {p0 .. p23}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    if-eq p0, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    invoke-virtual {v2}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action(oneHandModeInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", navBarLayoutInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarLayoutInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", leftRemoteViewContainer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightRemoteViewContainer="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contextualButtonVisible="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", remoteViewDarkIntensity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", remoteViewShortcut="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", disableSUWBack="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", darkIntensity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", navBarIconHints="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", a11yClickable="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", a11yLongClickable="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", navBarVisibility="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", edgeBackGestureDisabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", gestureHintVIInfo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sysUiFlagInfoList="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", folded="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", taskbarEnabled="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", taskbarNavBarEvents="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stiffness="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", dampingRatio="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", displayId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->displayId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rotation:I

    const-string v0, ")"

    invoke-static {p0, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
