.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "onReceive : "

    const/4 v3, 0x0

    const-string v4, "KeyguardShortcutManager"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p2, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :sswitch_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    :sswitch_2
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_4

    :sswitch_3
    const-string p2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :sswitch_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const-string p2, "onReceive : Intent.EXTRA_REPLACING false, "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge v3, v1, :cond_e

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p2, p2, v3

    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$resetShortcut(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    :sswitch_6
    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_4

    :sswitch_7
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    goto/16 :goto_4

    :sswitch_8
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "reason"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", with state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", updating shortcuts"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const/4 p1, 0x5

    if-eq p2, p1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    goto/16 :goto_4

    :sswitch_9
    const-string p2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    move v3, v1

    :cond_6
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskMode:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskMode:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsLocksTaskModeLocked : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_a
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    :goto_1
    if-ge v3, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ", starting update of shortcut "

    invoke-static {v2, p1, v0, p2, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;

    invoke-direct {v6, v0, p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_b
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_4

    :cond_9
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_2
    if-ge v3, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_a
    move-object v5, v6

    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_b
    const-string v0, ", suspended shortcut "

    invoke-static {v2, p1, v0, v6, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;

    invoke-direct {v7, v5, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :sswitch_c
    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$intentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardShortcutDialerUpdateManager:Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->updateLockShortcutDialerApp(Landroid/content/Intent;)V

    :cond_e
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6311576f -> :sswitch_c
        -0x3bb3e592 -> :sswitch_b
        -0x304ed112 -> :sswitch_a
        -0xd655f1f -> :sswitch_9
        -0x8cbe44f -> :sswitch_8
        -0x122164c -> :sswitch_7
        0x1d5d6b2 -> :sswitch_6
        0xa480416 -> :sswitch_5
        0x1f50b9c2 -> :sswitch_4
        0x4356ea54 -> :sswitch_3
        0x4cef8b35 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x798ccea7 -> :sswitch_0
    .end sparse-switch
.end method
