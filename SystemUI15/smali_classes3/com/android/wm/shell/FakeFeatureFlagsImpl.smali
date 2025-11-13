.class public Lcom/android/wm/shell/FakeFeatureFlagsImpl;
.super Lcom/android/wm/shell/CustomFeatureFlags;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDefaults:Lcom/android/wm/shell/FeatureFlags;

.field public final mFlagMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/FakeFeatureFlagsImpl;-><init>(Lcom/android/wm/shell/FeatureFlags;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/FeatureFlags;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/CustomFeatureFlags;-><init>(Ljava/util/function/BiPredicate;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/wm/shell/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/wm/shell/FeatureFlags;

    const-string v14, "com.android.wm.shell.enable_split_contextual"

    const-string v15, "com.android.wm.shell.enable_taskbar_navbar_unification"

    const-string v2, "com.android.wm.shell.animate_bubble_size_change"

    const-string v3, "com.android.wm.shell.enable_app_pairs"

    const-string v4, "com.android.wm.shell.enable_bubble_anything"

    const-string v5, "com.android.wm.shell.enable_bubble_bar"

    const-string v6, "com.android.wm.shell.enable_bubble_stashing"

    const-string v7, "com.android.wm.shell.enable_bubbles_long_press_nav_handle"

    const-string v8, "com.android.wm.shell.enable_left_right_split_in_portrait"

    const-string v9, "com.android.wm.shell.enable_new_bubble_animations"

    const-string v10, "com.android.wm.shell.enable_optional_bubble_overflow"

    const-string v11, "com.android.wm.shell.enable_pip2_implementation"

    const-string v12, "com.android.wm.shell.enable_pip_umo_experience"

    const-string v13, "com.android.wm.shell.enable_retrievable_bubbles"

    const-string v16, "com.android.wm.shell.enable_tiny_taskbar"

    const-string v17, "com.android.wm.shell.only_reuse_bubbled_task_when_launched_from_bubble"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/wm/shell/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
