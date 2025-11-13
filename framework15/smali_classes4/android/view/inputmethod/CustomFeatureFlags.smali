.class public Landroid/view/inputmethod/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/view/inputmethod/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v16, "android.view.inputmethod.use_zero_jank_proxy"

    const-string v17, ""

    const-string v2, "android.view.inputmethod.compatchange_for_zerojankproxy"

    const-string v3, "android.view.inputmethod.concurrent_input_methods"

    const-string v4, "android.view.inputmethod.connectionless_handwriting"

    const-string v5, "android.view.inputmethod.ctrl_shift_shortcut"

    const-string v6, "android.view.inputmethod.defer_show_soft_input_until_session_creation"

    const-string v7, "android.view.inputmethod.editorinfo_handwriting_enabled"

    const-string v8, "android.view.inputmethod.home_screen_handwriting_delegator"

    const-string v9, "android.view.inputmethod.ime_switcher_revamp"

    const-string v10, "android.view.inputmethod.imm_userhandle_hostsidetests"

    const-string v11, "android.view.inputmethod.initiation_without_input_connection"

    const-string v12, "android.view.inputmethod.predictive_back_ime"

    const-string v13, "android.view.inputmethod.refactor_insets_controller"

    const-string v14, "android.view.inputmethod.use_handwriting_listener_for_tooltype"

    const-string v15, "android.view.inputmethod.use_input_method_info_safe_list"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/inputmethod/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/view/inputmethod/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist compatchangeForZerojankproxy()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.inputmethod.compatchange_for_zerojankproxy"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist concurrentInputMethods()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.inputmethod.concurrent_input_methods"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist connectionlessHandwriting()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.inputmethod.connectionless_handwriting"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ctrlShiftShortcut()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.inputmethod.ctrl_shift_shortcut"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deferShowSoftInputUntilSessionCreation()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.inputmethod.defer_show_soft_input_until_session_creation"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist editorinfoHandwritingEnabled()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.inputmethod.editorinfo_handwriting_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v13, "android.view.inputmethod.use_input_method_info_safe_list"

    const-string v14, "android.view.inputmethod.use_zero_jank_proxy"

    const-string v0, "android.view.inputmethod.compatchange_for_zerojankproxy"

    const-string v1, "android.view.inputmethod.concurrent_input_methods"

    const-string v2, "android.view.inputmethod.connectionless_handwriting"

    const-string v3, "android.view.inputmethod.ctrl_shift_shortcut"

    const-string v4, "android.view.inputmethod.defer_show_soft_input_until_session_creation"

    const-string v5, "android.view.inputmethod.editorinfo_handwriting_enabled"

    const-string v6, "android.view.inputmethod.home_screen_handwriting_delegator"

    const-string v7, "android.view.inputmethod.ime_switcher_revamp"

    const-string v8, "android.view.inputmethod.imm_userhandle_hostsidetests"

    const-string v9, "android.view.inputmethod.initiation_without_input_connection"

    const-string v10, "android.view.inputmethod.predictive_back_ime"

    const-string v11, "android.view.inputmethod.refactor_insets_controller"

    const-string v12, "android.view.inputmethod.use_handwriting_listener_for_tooltype"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist homeScreenHandwritingDelegator()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.inputmethod.home_screen_handwriting_delegator"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist imeSwitcherRevamp()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.inputmethod.ime_switcher_revamp"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist immUserhandleHostsidetests()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.inputmethod.imm_userhandle_hostsidetests"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist initiationWithoutInputConnection()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.inputmethod.initiation_without_input_connection"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/inputmethod/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist predictiveBackIme()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.inputmethod.predictive_back_ime"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refactorInsetsController()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.inputmethod.refactor_insets_controller"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useHandwritingListenerForTooltype()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.inputmethod.use_handwriting_listener_for_tooltype"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useInputMethodInfoSafeList()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.inputmethod.use_input_method_info_safe_list"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useZeroJankProxy()Z
    .locals 2

    new-instance v0, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/inputmethod/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.inputmethod.use_zero_jank_proxy"

    invoke-virtual {p0, v1, v0}, Landroid/view/inputmethod/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
