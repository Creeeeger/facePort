.class public final Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

.field public final context:Landroid/content/Context;

.field public coverIcon:Z

.field public final defaultIconList:Ljava/util/Map;

.field public final defaultIconResIdList:Ljava/util/Map;

.field public isRTL:Z

.field public final largeScreenIconList:Ljava/util/List;

.field public final largeScreenPostfix:Ljava/lang/String;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field public final supportLargeCover:Lkotlin/jvm/functions/Function0;

.field public final supportThemeIcon:Lkotlin/jvm/functions/Function0;

.field public themeIcon:Z

.field public final themeIconList:Ljava/util/List;

.field public final themePostfix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 33

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const-string v2, "ic_samsung_sysbar_back"

    const-string v3, "ic_samsung_sysbar_back_dark"

    const/4 v4, 0x1

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v15, 0x8

    const/16 v16, 0x0

    const-string v12, "ic_samsung_sysbar_back_ime"

    const-string v13, "ic_samsung_sysbar_back_ime_dark"

    const/4 v14, 0x0

    move-object v10, v1

    move-object v11, v5

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const-string v13, "ic_samsung_sysbar_back_ime"

    const-string v14, "ic_samsung_sysbar_back_ime_dark"

    const/4 v15, 0x0

    move-object v11, v1

    move-object v12, v3

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v14, "ic_samsung_sysbar_home"

    const-string v15, "ic_samsung_sysbar_home_dark"

    const/16 v16, 0x0

    move-object v12, v1

    move-object v13, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v15, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const-string v16, "ic_samsung_sysbar_recent"

    const-string v17, "ic_samsung_sysbar_recent_dark"

    const/16 v20, 0x0

    move-object v13, v15

    move-object v14, v1

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v15, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v19, 0x8

    const/16 v20, 0x0

    const-string v16, "ic_samsung_sysbar_ime"

    const-string v17, "ic_samsung_sysbar_ime_dark"

    const/16 v18, 0x0

    move-object v14, v15

    move-object/from16 p2, v1

    move-object v1, v15

    move-object v15, v4

    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    new-instance v15, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v20, 0x8

    const/16 v21, 0x0

    const-string v17, "ic_samsung_sysbar_accessibility_button"

    const-string v18, "ic_samsung_sysbar_accessibility_button_dark"

    const/16 v19, 0x0

    move-object/from16 p3, v15

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lkotlin/Pair;

    move-object/from16 p4, v4

    move-object/from16 v4, p3

    invoke-direct {v15, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 p3, v1

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "ic_samsung_sysbar_gesture_handle_hint"

    const-string v19, "ic_samsung_sysbar_gesture_handle_hint_dark"

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v23, v2

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v24, v4

    new-instance v4, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "ic_samsung_sysbar_gesture_handle_hint"

    const-string v19, "ic_samsung_sysbar_gesture_handle_hint_dark"

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v25, v3

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v26, v1

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "ic_samsung_sysbar_gesture_hint"

    const-string v19, "ic_samsung_sysbar_gesture_hint_dark"

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v28, v4

    new-instance v4, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "ic_samsung_sysbar_gesture_hint_vi"

    const-string v19, "ic_samsung_sysbar_gesture_hint_vi"

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v29, v6

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v30, v1

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "ic_samsung_sysbar_navi_show"

    const-string v19, "ic_samsung_sysbar_navi_show_dark"

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v31, v7

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-object/from16 v32, v4

    new-instance v4, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v18, "ic_samsung_sysbar_navi_hide"

    const-string v19, "ic_samsung_sysbar_navi_hide_dark"

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v0

    filled-new-array/range {v8 .. v21}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v7, p0

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconList:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const v2, 0x7f080ac7

    const v3, 0x7f080ac8

    move-object/from16 v8, v31

    const/4 v4, 0x1

    invoke-direct {v0, v8, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZ)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    move-object/from16 v6, v29

    invoke-direct {v0, v6, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZ)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const v2, 0x7f080acb

    const v3, 0x7f080acc

    invoke-direct {v0, v6, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZ)V

    new-instance v11, Lkotlin/Pair;

    move-object/from16 v5, v27

    invoke-direct {v11, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    invoke-direct {v0, v6, v2, v3, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZ)V

    new-instance v2, Lkotlin/Pair;

    move-object/from16 v3, v25

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const v14, 0x7f080ada

    const v15, 0x7f080adb

    const/16 v16, 0x0

    move-object v12, v0

    move-object/from16 v13, v23

    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lkotlin/Pair;

    move-object/from16 v12, v23

    invoke-direct {v4, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const v15, 0x7f080ae4

    const v16, 0x7f080ae5

    const/16 v17, 0x0

    move-object v13, v0

    move-object/from16 v14, p2

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Lkotlin/Pair;

    move-object/from16 v15, p2

    invoke-direct {v13, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v19, 0x8

    const/16 v20, 0x0

    const v16, 0x7f080ade

    const v17, 0x7f080adf

    const/16 v18, 0x0

    move-object v14, v0

    move-object/from16 v23, v15

    move-object/from16 v15, p4

    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v15, p4

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v20, 0x8

    const/16 v21, 0x0

    const v17, 0x7f080ac5

    const v18, 0x7f080ac6

    const/16 v19, 0x0

    move-object v15, v0

    move-object/from16 v16, p3

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v25, v3

    move-object/from16 v3, p3

    invoke-direct {v15, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const v18, 0x7f080ad1

    const v19, 0x7f080ad2

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v24

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lkotlin/Pair;

    move-object/from16 v27, v12

    move-object/from16 v12, v24

    invoke-direct {v3, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const v18, 0x7f080ad1

    const v19, 0x7f080ad2

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v26

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lkotlin/Pair;

    move-object/from16 p1, v13

    move-object/from16 v13, v26

    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const v18, 0x7f080ad5

    const v19, 0x7f080ad6

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v28

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Lkotlin/Pair;

    move-object/from16 p2, v12

    move-object/from16 v12, v28

    invoke-direct {v13, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const v18, 0x7f080ad9

    const v19, 0x7f080ad9

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v30

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lkotlin/Pair;

    move-object/from16 p3, v13

    move-object/from16 v13, v30

    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const v18, 0x7f080ae2

    const v19, 0x7f080ae3

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v32

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Lkotlin/Pair;

    move-object/from16 p4, v12

    move-object/from16 v12, v32

    invoke-direct {v13, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const v18, 0x7f080ae0

    const v19, 0x7f080ae1

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p2

    move-object/from16 v20, p4

    move-object/from16 v22, v12

    move-object/from16 v0, v27

    move-object v12, v2

    move-object/from16 v2, p1

    move-object/from16 v19, p3

    move-object/from16 v21, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    filled-new-array/range {v9 .. v22}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconResIdList:Ljava/util/Map;

    move-object/from16 v9, v23

    move-object v1, v8

    move-object v2, v6

    move-object/from16 v10, v25

    move-object v3, v5

    move-object v4, v10

    move-object v11, v5

    move-object v5, v0

    move-object v12, v6

    move-object v6, v9

    filled-new-array/range {v1 .. v6}, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIconList:Ljava/util/List;

    filled-new-array {v8, v12, v11, v10, v0}, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenIconList:Ljava/util/List;

    const-string v0, "_theme"

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themePostfix:Ljava/lang/String;

    const-string v0, "_front"

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenPostfix:Ljava/lang/String;

    const-string v0, "NavBarIconResourceMapper"

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;

    invoke-direct {v0, v7}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;-><init>(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportThemeIcon:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;

    invoke-direct {v0, v7}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;-><init>(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    iput-object v0, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportLargeCover:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isRTL:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, p1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconTheme;
    .locals 4

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportThemeIcon:Lkotlin/jvm/functions/Function0;

    check-cast v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavigationBarUseThemeDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIconList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->supportLargeCover:Lkotlin/jvm/functions/Function0;

    check-cast v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportLargeCover$1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenIconList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->coverIcon:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    const-string v4, ""

    const-string v5, "_samsung"

    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themePostfix:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->largeScreenPostfix:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->lightRes:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->coverIcon:Z

    if-eqz v3, :cond_4

    invoke-static {v8, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    iget-object v9, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->darkRes:Ljava/lang/String;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->coverIcon:Z

    if-eqz v3, :cond_6

    invoke-static {v9, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    if-eqz v3, :cond_7

    const-string v3, "android"

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v4, v8, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->themeIcon:Z

    xor-int/2addr v2, v5

    iget-boolean v5, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->needRtl:Z

    and-int/2addr v2, v5

    if-eqz v4, :cond_9

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    return-object p1

    :cond_9
    :goto_4
    const-string v0, "Unable to retrieve resource: lightResName="

    const-string v2, "("

    const-string v5, ") lightResName="

    invoke-static {v4, v0, v8, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->defaultIconResIdList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;

    if-eqz p1, :cond_a

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->lightResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->darkResId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object v2, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->type:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$IconResourceIdInfo;->needRtl:Z

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    return-object v0

    :cond_a
    return-object v1
.end method
