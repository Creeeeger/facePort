.class public final Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

.field public final context:Landroid/content/Context;

.field public final qsBackupRestoreManager$delegate:Lkotlin/Lazy;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final tunerService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    sget-object p1, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$qsBackupRestoreManager$2;->INSTANCE:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$qsBackupRestoreManager$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->qsBackupRestoreManager$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$tunerService$2;->INSTANCE:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$tunerService$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->tunerService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final access$getBackupData(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;Z)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string v4, "brightness_on_top"

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string v5, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v2

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object v5

    const-string v6, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {v5, v1, v6}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v0

    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const-string v7, "hide_smart_view_large_tile_on_panel"

    invoke-virtual {v6, v0, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    if-eqz p1, :cond_9

    iget-object v6, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_9
    move-object v6, v2

    :goto_8
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object v7

    const-string/jumbo v8, "sysui_quick_bar_order"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_a
    move-object v7, v2

    :goto_9
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    const-string/jumbo p1, "sysui_quick_bar_collapsed_row"

    const-string v2, "2"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_a
    const-string p0, "TAG::qplayout_brightnessbar::"

    const-string p1, "::TAG::qplayout_mediadevices::"

    const-string v8, "::TAG::qplayout_multisim::"

    invoke-static {p0, v3, p1, v4, v8}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "::TAG::hide_smart_view_large_tile_on_panel::"

    const-string v3, "::TAG::split_quick_panel::"

    invoke-static {p0, v5, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "::TAG::split_quick_panel_reversed::"

    const-string v0, "::TAG::sysui_quick_bar_collapsed_row::"

    invoke-static {p0, v1, p1, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "::TAG::sysui_quick_bar_order::"

    invoke-static {p0, v2, p1, v7}, Landroidx/datastore/preferences/core/MutablePreferences$toString$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " getBackupData: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarBackUpRestoreManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static final access$setRestoreData(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "::"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v1, " setRestoreData: "

    const-string v3, "BarBackUpRestoreManager"

    invoke-static {v1, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "setRestoreData: string: "

    invoke-static {v4, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, " is unknown"

    const-string/jumbo v6, "true"

    const-string v7, "null"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v4, "sysui_quick_bar_collapsed_row"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "restored sysui_quick_bar_collapsed_row is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v4, "sysui_quick_bar_order"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p0, "restored sysui_quick_bar_order is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->context:Landroid/content/Context;

    sget v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->initValuesAndApply(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :sswitch_2
    const-string v4, "qplayout_mediadevices"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo p0, "restored qplayout_mediadevices is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    const-string v0, "false"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "1"

    const-string v7, "0"

    if-eqz v0, :cond_8

    move-object v0, v7

    goto :goto_1

    :cond_8
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v4

    goto :goto_1

    :cond_9
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v8, "qspanel_media_quickcontrol_bar_available"

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateMediaDevices: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-virtual {p0, v2, v8}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v4, "split_quick_panel_reversed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_3

    :cond_d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo p0, "restored split_quick_panel_reversed is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplitReversed(Z)V

    goto/16 :goto_4

    :sswitch_4
    const-string v4, "qplayout_brightnessbar"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_3

    :cond_f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo p0, "restored qplayout_brightnessbar is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "brightness_on_top"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_5
    const-string v4, "qplayout_multisim"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_3

    :cond_11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo p0, "restored qplayout_multisim is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_6
    const-string v4, "hide_smart_view_large_tile_on_panel"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :cond_13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo p0, "restored hide_smart_view_large_tile_on_panel is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_14
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    if-nez v0, :cond_15

    const-string/jumbo p0, "restored hide_smart_view_large_tile_on_panel, device has QpRune.QUICK_HIDE_TILE_FROM_BAR is false. value:"

    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->getTunerService()Lcom/android/systemui/tuner/TunerService;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    goto :goto_4

    :sswitch_7
    const-string/jumbo v4, "split_quick_panel"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setRestoreData: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo p0, "restored split_quick_panel is null"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_17
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplit(Z)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79b3b073 -> :sswitch_7
        -0x667fac36 -> :sswitch_6
        -0x3b7a198c -> :sswitch_5
        -0x20f39994 -> :sswitch_4
        -0x4cee5cc -> :sswitch_3
        -0x4ac2111 -> :sswitch_2
        0x13306a32 -> :sswitch_1
        0x4ddef6d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getTunerService()Lcom/android/systemui/tuner/TunerService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->tunerService$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method
