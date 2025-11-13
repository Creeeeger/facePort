.class public final Lcom/android/modules/expresslog/MetricIds;
.super Ljava/lang/Object;
.source "MetricIds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/expresslog/MetricIds$MetricInfo;
    }
.end annotation


# static fields
.field public static final blacklist METRIC_TYPE_COUNTER:I = 0x1

.field public static final blacklist METRIC_TYPE_COUNTER_WITH_UID:I = 0x3

.field public static final blacklist METRIC_TYPE_HISTOGRAM:I = 0x2

.field public static final blacklist METRIC_TYPE_HISTOGRAM_WITH_UID:I = 0x4

.field public static final blacklist METRIC_TYPE_UNKNOWN:I

.field private static blacklist metricIds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/modules/expresslog/MetricIds$MetricInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5444f12b0e4d986aL    # -4.948300889871327E-98

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_fab_shortcut_dismiss"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3a3041d817065fa4L    # 2.051947565728453E-28

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_fab_shortcut_edit"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x2754d4f9a5296018L

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_qs_shortcut_add"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x83bf2e0b584644bL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "accessibility.value_qs_shortcut_remove"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x77acd12c240de40dL    # 2.9734190730656435E268

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "app.value_force_stop_cancelled_pi_sent_from_top_per_caller"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x76ba1bfb3306cb2aL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "app.value_force_stop_cancelled_pi_sent_from_top_per_owner"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6852f9fc5bfdd64eL

    const/4 v6, 0x4

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "app.value_high_authenticator_response_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3d10827d5871fc87L    # -2.7699138713602778E14

    const/4 v7, 0x2

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_concurrent_sync_operations"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x72cf207fa10c3123L    # -3.861154651922167E-245

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_get_async_end_to_end_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7b6f9cc4c3afd918L    # -1.076217601646089E-286

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_get_async_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x22d963ea48a25c8L

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_set_async_end_to_end_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3c1ba3578e1cf431L    # -1.1737862285679294E19

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_set_async_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3ab2616778f3cc63L    # -7.1615592618853E25

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_subscription_update_rate"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x49a8c8329f9bbc42L    # -6.354553961239671E-47

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_get_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x43b54cbfeb676e69L    # 1.5348125908000054E18

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_hal_get_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xab7feef8d733723L    # -9.01058071389562E256

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_hal_set_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4869052b642e8ec9L    # 6.811144490957559E40

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "automotive_os.value_sync_set_property_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4155186e41701bf4L    # 5530041.022467602

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "battery.value_app_added_to_power_allowlist"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1c6c4a10e6db7362L    # 9.150292962707835E-172

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "battery.value_app_background_restricted"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x453a7ff44f445158L    # -1.3894164627363795E-25

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "battery.value_app_removed_from_power_allowlist"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x17158a9ed9eebf7cL

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7c336b0416a73de0L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "biometric.value_scheduler_watchdog_triggered_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6131a892d2067c68L    # 1.5516411251772335E160

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_aptx_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x87ef3ede6bd509L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_disabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x39a3c1101b299cbdL    # 4.869774448811658E-31

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2d647beae1c1e1f6L    # -8.757964757037787E89

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_supported"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x24e072786ce44520L    # 4.634282980049659E-131

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_auto_on_triggered"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x47d104929f8bfa03L    # 9.048247595271338E37

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_close_profile_proxy_adapter_mismatch"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1f0c73cbd475ae39L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_cvsd_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x113869a2f025d0a7L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_kill_from_binder_thread"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x79d3a81563d25490L    # 6.96889434966805E278

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_lc3_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x31753514119277deL    # -2.311452008942414E70

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "bluetooth.value_msbc_codec_usage_over_hfp"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x25c8adfc2d8e5d89L    # -3.946514003156704E126

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "content_capture.value_content_capture_wrong_thread_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5f41298b39ca05c0L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "cpu.value_aggregated_thread_tracking_start_failure_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6d5994fe9c614a19L    # 5.644058865828992E218

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "cpu.value_process_tracking_start_failure_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xf7b23a301efa66bL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_resets_unsuccessful_provisioning_deferred"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x35aa95e37b557beL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_resets_unsuccessful_provisioning_mandatory"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x44bcaa48d3139677L    # 1.3536745557240847E23

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_check_in_response_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x7540e724207dac73L    # 6.344938434532908E256

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_locking_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x274c38d05da5b6e3L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_provisioning_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x204163f2a980bd2aL    # -1.6031537094185499E153

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string v2, "device_lock.value_successful_unlocking_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1024513524692c46L    # 6.543310907883367E-231

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "health_services.value_hal_crash_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x15232d207be1b578L    # 7.466159783193892E-207

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "input.value_app_handled_stem_primary_key_gestures_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1c51fcd42695a70cL    # -1.4497999868880154E172

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_estimated_network_bytes_updated"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x68e9ea00cc274796L    # 2.421379621593642E197

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3bc6ddfb2c1afecdL    # 9.684599413406268E-21

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6b82050ca37ed569L    # 7.40517169354174E209

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x10b534c96dcf71a1L

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5b3701a8aa27b929L    # 2.5515747800028147E131

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_optional"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x38608cdff97ef2d6L    # 3.890955086701937E-37

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_required"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x67a26400a6b431faL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_job_work_items_enqueued"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7eccaa055ff3229aL    # -7.049004085412806E-303

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_max_scheduling_limit_hit"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x6de140574e150542L    # 1.948720114029396E221

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_schedule_failure_app_start_mode_disabled"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x62c575e1260ba4cdL    # -7.032272785818312E-168

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_schedule_failure_ej_out_of_quota"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x49d5ea63ae224707L    # -8.923841012019315E-48

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_invalid_state"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5ecf4258c6fd6cfbL    # -8.182748652338636E-149

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_no_permission"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x53193479fa47c19eL    # -2.1856026002554066E-92

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_set_notification_changed_notification_ids"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x48fdb46d8af6757eL    # 4.1402443607265673E43

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_slow_app_response_binding"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x35e66a77a55eb9deL    # -9.347805338614186E48

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_slow_app_response_on_start_job"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5ffb596529e9b1a1L    # 2.2918301194232052E154

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_slow_app_response_on_stop_job"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2df319fd797517a9L    # -1.7964854537503615E87

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_slow_app_response_set_notification"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x7eebcee46c2eaaceL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_optional"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x32d90fb45fce9ca5L    # 9.518868365889177E-64

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_required"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x350b0bb70aa35a18L    # -1.2543858082770914E53

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_transferred_network_bytes_updated"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x51f06ce260cf1b16L    # -7.936154102547392E-87

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x25141488e95050eeL    # -9.676543028252252E129

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x54255e6982feb5beL    # 2.282173719606102E97

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_decreased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6a756ab89c7e7c84L    # -6.62397862451482E-205

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_increased"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x12087e43d5443704L    # -5.310677411322023E221

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_cntr_w_uid_unexpected_service_disconnects"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xae51d9fa24ff8b4L    # -1.26146379070036E256

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_initial_job_estimated_network_download_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x4a6ee8a96e2c9d26L    # -1.1420165464629962E-50

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_initial_job_estimated_network_upload_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x31f3422bbe553cfcL    # 4.46460452296716E-68

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_initial_jwi_estimated_network_download_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x17a3280d91cbb72cL    # 8.20064485656831E-195

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_initial_jwi_estimated_network_upload_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x617637d5b06bb141L    # 3.12366675993134E161

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_job_concurrency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5b53f736077a061eL

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_scheduled_job_30_min_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x77b62df4bf16ee41L    # -9.775033695744229E-269

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_transferred_network_download_kilobytes_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5d543f2d98d35aebL

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_transferred_network_upload_kilobytes_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x16cf2aef1a08e643L    # -5.032923592559582E198

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_updated_estimated_network_download_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x66ad1762e9fac4d8L

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_updated_estimated_network_upload_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x564a77010d5d4a7fL    # -9.169576209767794E-108

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_at_job_start"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x581886dcf5c2b0aeL

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_high_water_mark"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xcd43aaa2a7c4003L

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_job_minimum_chunk_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x2dfe1c318d925793L    # 3.7840242666368218E-87

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_jwi_minimum_chunk_kilobytes"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x1d0147a34a1c3a2dL    # 5.723372878689358E-169

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_job_quota_reduced_due_to_buggy_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x440e8ad98073b802L    # -5.914871283205462E-20

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "job_scheduler.value_job_scheduler_job_deadline_expired_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x75178207e4798f4dL

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "screen.value_dim_to_screen_off"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x958042f2f6a2252L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "screen.value_undim"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x396cc7264ef70f50L    # 4.433941906594358E-32

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "speech_recognition.value_exceed_service_connections_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x26d75abf3150df53L    # -3.1820445677905694E121

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "speech_recognition.value_exceed_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x17671594a4602dbaL    # -7.275289898858634E195

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "stability_anr.value_skipped_anrs"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3dbbf06bbce333c0L    # -1.723214413375957E11

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "stability_anr.value_total_anrs"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5a56aac8f2a4ad93L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "stability_errors.value_dropbox_buffer_expired_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5dccc72a89dcb8d3L    # 7.018566985776186E143

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "statsd_errors.value_report_vendor_atom_errors_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7381d6d5c0af90dbL

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "tex_test.value_telemetry_express_fixed_range_histogram"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5398f56398f25a68L    # 5.206166146721598E94

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "tex_test.value_telemetry_express_fixed_range_histogram_with_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x35a09b238904c47eL    # 2.2191980054108587E-50

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "tex_test.value_telemetry_express_scaled_factor_histogram"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x69e163a07d42722bL    # 1.064843788138933E202

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "tex_test.value_telemetry_express_scaled_range_histogram_with_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1bcd9f279749be83L    # -4.545512846619693E174

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "tex_test.value_telemetry_express_test_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x43b1ba88b8212502L    # 1.2774837687243904E18

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "tex_test.value_telemetry_express_test_counter_with_uid"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5b4a5839e251c075L    # -7.62724068638949E-132

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "vibrator.value_perform_haptic_feedback_keyboard"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0xcd63eb8effa1893L    # -5.627400975153213E246

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "vibrator.value_vibration_adaptive_haptic_scale"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3a255f8236245b58L    # 1.348831018001073E-28

    invoke-direct {v1, v2, v3, v6}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "vibrator.value_vibration_param_request_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x7a0ebfc5e719b300L    # 8.721247044425197E279

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "vibrator.value_vibration_param_request_timeout"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x671bd808a3946c49L    # 4.8460410068431267E188

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "vibrator.value_vibration_param_response_ignored"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x2d36a803bcdab779L    # -6.4532517933783635E90

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "vibrator.value_vibration_param_scale"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x62403419a0fa9a6fL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_activity_blocked_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x54bb7718245771dL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_secure_window_blocked_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x3010da96ca29c4eL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_audio_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x250cba2a5fb7d20fL    # 3.237764979643793E-130

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_camera_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0xbc8ede78a85bf30L

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_devices_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6fa1422a7a40caceL    # -7.920433132846928E-230

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_devices_created_with_uid_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7393f9ae1fe7a8caL    # -7.828424411436505E-249

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_display_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x68d847f8e005cd23L    # -3.966309836187191E-197

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_dpad_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x3b6c7efb006b555dL    # -2.30262383324969E22

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_keyboard_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x14cae2b72d93ce8fL

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_mouse_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x7361a5b5701c8764L    # -6.782985899342115E-248

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x5a08a069995dd3f6L    # 5.209461888107144E125

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_sensors_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x64283077ddfd5e81L

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_stylus_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x76515e28f396e68fL    # 8.545182918377024E261

    invoke-direct {v1, v2, v3, v5}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "virtual_devices.value_virtual_touchscreen_created_count"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x79df130727822146L    # 1.1016857869928886E279

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "wear_notifications.value_hist_image_asset_open_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x4b95c6a9c51549efL    # 1.3348666312333791E56

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_app_waiting_for_relro_completion_delay"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x1181eed2e7682492L    # -1.7389546326901507E224

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_default_webview_package_invalid_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6650197c4c11fd74L    # -5.865289400836702E-185

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_find_preferred_webview_package_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x5c5c295c77c64b1eL    # -5.330885349361753E-137

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_on_webview_provider_changed_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, 0x24d987fa20b535f8L    # 3.59693386888069E-131

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_on_webview_provider_changed_with_default_package_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x6221576dc49584c7L    # -8.318653272745789E-165

    invoke-direct {v1, v2, v3, v7}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_prepare_webview_in_system_server_latency"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    const-wide v2, -0x72c2df65a9f17304L    # -6.66537497941079E-245

    invoke-direct {v1, v2, v3, v4}, Lcom/android/modules/expresslog/MetricIds$MetricInfo;-><init>(JI)V

    const-string/jumbo v2, "webview.value_webview_not_usable_for_all_users_counter"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getMetricIdHash(Ljava/lang/String;I)J
    .locals 4

    sget-object v0, Lcom/android/modules/expresslog/MetricIds;->metricIds:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/expresslog/MetricIds$MetricInfo;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/modules/expresslog/MetricIds$MetricInfo;->mType:I

    if-ne v1, p1, :cond_0

    iget-wide v1, v0, Lcom/android/modules/expresslog/MetricIds$MetricInfo;->mHash:J

    return-wide v1

    :cond_0
    new-instance v1, Ljava/util/InputMismatchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metric type is not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metric is undefined "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
