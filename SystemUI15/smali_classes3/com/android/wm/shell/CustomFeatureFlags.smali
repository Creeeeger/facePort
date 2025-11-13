.class public Lcom/android/wm/shell/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/FeatureFlags;


# instance fields
.field public final mGetValueImpl:Ljava/util/function/BiPredicate;


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wm/shell/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v16, "com.android.wm.shell.only_reuse_bubbled_task_when_launched_from_bubble"

    const-string v17, ""

    const-string v1, "com.android.wm.shell.animate_bubble_size_change"

    const-string v2, "com.android.wm.shell.enable_app_pairs"

    const-string v3, "com.android.wm.shell.enable_bubble_anything"

    const-string v4, "com.android.wm.shell.enable_bubble_bar"

    const-string v5, "com.android.wm.shell.enable_bubble_stashing"

    const-string v6, "com.android.wm.shell.enable_bubbles_long_press_nav_handle"

    const-string v7, "com.android.wm.shell.enable_left_right_split_in_portrait"

    const-string v8, "com.android.wm.shell.enable_new_bubble_animations"

    const-string v9, "com.android.wm.shell.enable_optional_bubble_overflow"

    const-string v10, "com.android.wm.shell.enable_pip2_implementation"

    const-string v11, "com.android.wm.shell.enable_pip_umo_experience"

    const-string v12, "com.android.wm.shell.enable_retrievable_bubbles"

    const-string v13, "com.android.wm.shell.enable_split_contextual"

    const-string v14, "com.android.wm.shell.enable_taskbar_navbar_unification"

    const-string v15, "com.android.wm.shell.enable_tiny_taskbar"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-void
.end method
