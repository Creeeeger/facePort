.class public final Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;

    invoke-direct {v0}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assertInLegacyMode()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method

.method public static final requirementDescription()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const-string v2, "com.android.systemui.scene_container"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    filled-new-array {v1}, [Lcom/android/systemui/flags/FlagToken;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/keyguard/shared/ComposeLockscreen;->INSTANCE:Lcom/android/systemui/keyguard/shared/ComposeLockscreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->composeLockscreen()V

    const-string v2, "com.android.systemui.compose_lockscreen"

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    const-string v2, "com.android.systemui.keyguard_bottom_area_refactor"

    invoke-direct {v5, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    const-string v2, "com.android.systemui.keyguard_wm_state_refactor"

    invoke-direct {v6, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const-string v2, "com.android.systemui.migrate_clocks_to_blueprint"

    invoke-direct {v7, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    const-string v2, "com.android.systemui.notifications_heads_up_refactor"

    invoke-direct {v8, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;->INSTANCE:Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/flags/FlagToken;

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.android.systemui.predictive_back_sysui"

    const/4 v3, 0x1

    invoke-direct {v9, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/systemui/flags/FlagToken;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    const-string v2, "com.android.systemui.device_entry_udfps_refactor"

    invoke-direct {v10, v2, v3}, Lcom/android/systemui/flags/FlagToken;-><init>(Ljava/lang/String;Z)V

    filled-new-array/range {v4 .. v10}, [Lcom/android/systemui/flags/FlagToken;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    filled-new-array {v1, v2}, [Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->flatten(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v1

    new-instance v2, Lkotlin/sequences/FlatteningSequence$iterator$1;

    invoke-direct {v2, v1}, Lkotlin/sequences/FlatteningSequence$iterator$1;-><init>(Lkotlin/sequences/FlatteningSequence;)V

    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/FlatteningSequence$iterator$1;->ensureItemIterator()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lkotlin/sequences/FlatteningSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/flags/FlagToken;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/systemui/flags/FlagToken;->isEnabled:Z

    if-eqz v3, :cond_0

    const-string v3, "    [MET]"

    goto :goto_1

    :cond_0
    const-string v3, "[NOT MET]"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/flags/FlagToken;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
