.class public final Lcom/android/settings/wifi/WifiTrackerLibProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Ljava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;
    .locals 13

    move-object v2, p1

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/android/wifitrackerlib/WifiTrackerInjector;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/WifiTrackerInjector;-><init>(Landroid/content/Context;)V

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v12, p5

    invoke-static/range {v0 .. v12}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    return-object v0
.end method

.method public static createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;
    .locals 17

    move-object/from16 v3, p1

    new-instance v16, Lcom/android/wifitrackerlib/WifiPickerTracker;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    new-instance v1, Lcom/android/wifitrackerlib/WifiTrackerInjector;

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiTrackerInjector;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    move-object/from16 v0, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v15}, Lcom/android/wifitrackerlib/WifiPickerTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;Z)V

    return-object v16
.end method
