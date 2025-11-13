.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# static fields
.field public static final blacklist ADCP_CHECK_PROFILE_SIZE:I = 0xa9

.field public static final greylist-max-o APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final greylist-max-o ATTACH_AGENT:I = 0x9b

.field public static final blacklist ATTACH_STARTUP_AGENTS:I = 0xa2

.field public static final greylist-max-o BIND_APPLICATION:I = 0x6e

.field public static final greylist BIND_SERVICE:I = 0x79

.field public static final greylist-max-o CLEAN_UP_CONTEXT:I = 0x77

.field public static final greylist-max-o CONFIGURATION_CHANGED:I = 0x76

.field public static final greylist-max-o CREATE_BACKUP_AGENT:I = 0x80

.field public static final greylist CREATE_SERVICE:I = 0x72

.field public static final greylist-max-o DESTROY_BACKUP_AGENT:I = 0x81

.field public static final greylist-max-o DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final greylist-max-o DUMP_ACTIVITY:I = 0x88

.field public static final blacklist DUMP_GFXINFO:I = 0xa5

.field public static final greylist-max-o DUMP_HEAP:I = 0x87

.field public static final greylist DUMP_PROVIDER:I = 0x8d

.field public static final blacklist DUMP_RESOURCES:I = 0xa6

.field public static final greylist-max-o DUMP_SERVICE:I = 0x7b

.field public static final greylist ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final greylist-max-o EXECUTE_TRANSACTION:I = 0x9f

.field public static final greylist EXIT_APPLICATION:I = 0x6f

.field public static final blacklist FINISH_INSTRUMENTATION_WITHOUT_RESTART:I = 0xab

.field public static final greylist GC_WHEN_IDLE:I = 0x78

.field public static final greylist INSTALL_PROVIDER:I = 0x91

.field public static final blacklist INSTRUMENT_WITHOUT_RESTART:I = 0xaa

.field public static final greylist-max-o LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final greylist-max-o LOW_MEMORY:I = 0x7c

.field public static final greylist-max-o ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final greylist-max-o PROFILER_CONTROL:I = 0x7f

.field public static final blacklist PURGE_RESOURCES:I = 0xa1

.field public static final greylist RECEIVER:I = 0x71

.field public static final greylist-max-o RELAUNCH_ACTIVITY:I = 0xa0

.field public static final greylist REMOVE_PROVIDER:I = 0x83

.field public static final greylist-max-o REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final greylist-max-o RUN_ISOLATED_ENTRY_POINT:I = 0x9e

.field public static final greylist SCHEDULE_CRASH:I = 0x86

.field public static final greylist SERVICE_ARGS:I = 0x73

.field public static final blacklist SET_CONTENT_CAPTURE_OPTIONS_CALLBACK:I = 0xa4

.field public static final greylist-max-o SET_CORE_SETTINGS:I = 0x8a

.field public static final greylist-max-o SLEEPING:I = 0x89

.field public static final greylist-max-o START_BINDER_TRACKING:I = 0x96

.field public static final greylist-max-o STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final greylist STOP_SERVICE:I = 0x74

.field public static final greylist-max-o SUICIDE:I = 0x82

.field public static final greylist-max-o TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final greylist UNBIND_SERVICE:I = 0x7a

.field public static final greylist-max-o UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final greylist-max-o UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b

.field public static final blacklist UPDATE_UI_TRANSLATION_STATE:I = 0xa3


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 2271
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .line 2392
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2396
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x40

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 2610
    :pswitch_1
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V

    goto/16 :goto_4

    .line 2607
    :pswitch_2
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2608
    goto/16 :goto_4

    .line 2603
    :pswitch_3
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mgetProfileSizeOfApp(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2604
    goto/16 :goto_4

    .line 2515
    :pswitch_4
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V

    .line 2516
    goto/16 :goto_4

    .line 2470
    :pswitch_5
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2471
    goto/16 :goto_4

    .line 2599
    :pswitch_6
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2600
    goto/16 :goto_4

    .line 2593
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2594
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/view/translation/TranslationSpec;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/view/translation/TranslationSpec;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v7, Landroid/view/translation/UiTranslationSpec;

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityThread;->-$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 2597
    goto/16 :goto_4

    .line 2590
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleAttachStartupAgents(Ljava/lang/String;)V

    .line 2591
    goto/16 :goto_4

    .line 2587
    :pswitch_9
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2588
    goto/16 :goto_4

    .line 2584
    :pswitch_a
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    .line 2585
    goto/16 :goto_4

    .line 2573
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 2574
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->-$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2575
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2579
    invoke-virtual {v0}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    goto/16 :goto_4

    .line 2569
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_c
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2571
    goto/16 :goto_4

    .line 2566
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 2567
    goto/16 :goto_4

    .line 2561
    :pswitch_e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2562
    .local v0, "app":Landroid/app/Application;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 2563
    goto/16 :goto_4

    .line 2557
    .end local v0    # "app":Landroid/app/Application;
    :pswitch_f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 2559
    goto/16 :goto_4

    .line 2554
    :pswitch_10
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    .line 2555
    goto/16 :goto_4

    .line 2551
    :pswitch_11
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V

    .line 2552
    goto/16 :goto_4

    .line 2548
    :pswitch_12
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2549
    goto/16 :goto_4

    .line 2544
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2545
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 2546
    goto/16 :goto_4

    .line 2541
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_14
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 2542
    goto/16 :goto_4

    .line 2538
    :pswitch_15
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 2539
    goto/16 :goto_4

    .line 2535
    :pswitch_16
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    .line 2536
    goto/16 :goto_4

    .line 2532
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 2533
    goto/16 :goto_4

    .line 2521
    :pswitch_18
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2522
    goto/16 :goto_4

    .line 2529
    :pswitch_19
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    .line 2530
    goto/16 :goto_4

    .line 2524
    :pswitch_1a
    const-string/jumbo v0, "setCoreSettings"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2525
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 2526
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2527
    goto/16 :goto_4

    .line 2518
    :pswitch_1b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2519
    goto/16 :goto_4

    .line 2512
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    .line 2513
    goto/16 :goto_4

    .line 2504
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2505
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2506
    .local v1, "message":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 2507
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2508
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v1, v4, v2}, Landroid/app/ActivityThread;->-$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2509
    goto/16 :goto_4

    .line 2499
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    :pswitch_1e
    const-string v0, "broadcastPackage"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2500
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 2501
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2502
    goto/16 :goto_4

    .line 2494
    :pswitch_1f
    const-string/jumbo v0, "providerRemove"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2495
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 2496
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2497
    goto/16 :goto_4

    .line 2491
    :pswitch_20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2492
    goto/16 :goto_4

    .line 2486
    :pswitch_21
    const-string v0, "backupDestroyAgent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2487
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2488
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2489
    goto/16 :goto_4

    .line 2481
    :pswitch_22
    const-string v0, "backupCreateAgent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2482
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2483
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2484
    goto/16 :goto_4

    .line 2478
    :pswitch_23
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ProfilerInfo;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 2479
    goto/16 :goto_4

    .line 2473
    :pswitch_24
    const-string v0, "lowMemory"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2474
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 2475
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2476
    goto/16 :goto_4

    .line 2467
    :pswitch_25
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2468
    goto/16 :goto_4

    .line 2437
    :pswitch_26
    const-string/jumbo v0, "serviceUnbind"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2438
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 2439
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2440
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2441
    goto/16 :goto_4

    .line 2432
    :pswitch_27
    const-string/jumbo v0, "serviceBind"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2433
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 2434
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2435
    goto/16 :goto_4

    .line 2464
    :pswitch_28
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    .line 2465
    goto/16 :goto_4

    .line 2460
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 2461
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    goto/16 :goto_4

    .line 2457
    .end local v0    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_2a
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2458
    goto/16 :goto_4

    .line 2451
    :pswitch_2b
    const-string/jumbo v0, "serviceStop"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2452
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2453
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2454
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2455
    goto/16 :goto_4

    .line 2443
    :pswitch_2c
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2445
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2444
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2447
    :cond_3
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 2448
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2449
    goto/16 :goto_4

    .line 2424
    :pswitch_2d
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2426
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2425
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2428
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 2429
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2430
    goto :goto_4

    .line 2410
    :pswitch_2e
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2411
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    .line 2412
    .local v0, "rec":Landroid/app/ActivityThread$ReceiverData;
    iget-object v1, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_5

    .line 2413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastReceiveComp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2414
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2413
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_3

    .line 2416
    :cond_5
    const-string v1, "broadcastReceiveComp"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2420
    .end local v0    # "rec":Landroid/app/ActivityThread$ReceiverData;
    :cond_6
    :goto_3
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->-$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 2421
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2422
    goto :goto_4

    .line 2404
    :pswitch_2f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 2405
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 2407
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2408
    goto :goto_4

    .line 2398
    :pswitch_30
    const-string v0, "bindApplication"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$AppBindData;

    .line 2400
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2401
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2402
    nop

    .line 2613
    .end local v0    # "data":Landroid/app/ActivityThread$AppBindData;
    :cond_8
    :goto_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2614
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/internal/os/SomeArgs;

    if-eqz v1, :cond_9

    .line 2615
    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2618
    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
