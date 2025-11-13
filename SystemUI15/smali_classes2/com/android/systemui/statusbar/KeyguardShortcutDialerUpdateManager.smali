.class public final Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string p1, "KeyguardShortcutDialerUpdateManager"

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContactsPackageName(Z)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContactsPackageName() packageName : "

    const-string v3, ", packageNameCSC : "

    invoke-static {v2, v0, v3, v1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->tag:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "com.samsung.android.dialer"

    :cond_0
    const-string p0, "com.andorid.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final updateLockShortcutDialerApp(Landroid/content/Intent;)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getShortcutAppList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->tag:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "default dialer : "

    invoke-static {v1, p1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.lguplus.aicallagent/com.lguplus.aicallagent.MainActivity"

    const-string v1, "com.skt.prod.dialer/com.skt.prod.dialer.activities.main.MainActivity"

    const-string v2, "com.lguplus.aicallagent"

    const-string v6, "com.skt.prod.dialer"

    const-string/jumbo v7, "telecom"

    const-string v8, "/com.samsung.android.dialer.DialtactsActivity"

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/TelecomManager;

    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/TelecomManager;

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->getContactsPackageName(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "phone"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v12

    if-eqz v10, :cond_1

    move-object v11, p1

    goto :goto_2

    :cond_1
    if-eqz v9, :cond_2

    move-object v11, v1

    goto :goto_2

    :cond_2
    if-nez v12, :cond_3

    const-string v9, "com.sec.android.app.sbrowser"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v10, 0x80

    :try_start_0
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity"

    :goto_1
    move-object v11, v0

    goto :goto_2

    :catch_0
    const-string v0, "Package not found : com.sec.android.app.sbrowser"

    const-string v9, "Utils"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.chrome/com.google.android.apps.chrome.Main"

    goto :goto_1

    :cond_3
    :goto_2
    const-string v0, "1;"

    const-string v9, ";1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v0, v11, v9}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportDualApps"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Lkotlin/text/Regex;

    const-string v10, ";"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_4
    check-cast v0, Ljava/util/Collection;

    new-array v9, v4, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v9, v0, v3

    const-string v11, "/0"

    invoke-static {v9, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    const/4 v9, 0x3

    aget-object v12, v0, v9

    invoke-static {v12, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v9

    array-length v9, v0

    const-string v11, ""

    move v12, v4

    :goto_5
    if-ge v12, v9, :cond_6

    aget-object v13, v0, v12

    invoke-static {v11, v13, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    goto :goto_6

    :cond_7
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->getContactsPackageName(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v6, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v4, v1

    goto :goto_7

    :cond_9
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, p1

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->getContactsPackageName(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    const-string v10, "current dialer pkg:  "

    invoke-static {v10, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/TelecomManager;

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v0, v4, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    move-object v0, p1

    goto/16 :goto_a

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0, v4, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_c
    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_d
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->getContactsPackageName(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.android.contacts/com.samsung.android.contacts.contactslist.PeopleActivity"

    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const-string v6, "com.samsung.android.app.contacts/com.samsung.android.contacts.contactslist.PeopleActivity"

    const-string v7, "com.samsung.android.app.contacts"

    if-eqz v2, :cond_e

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v0, v1, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_9

    :cond_e
    move v1, v4

    :goto_9
    const-string v2, "com.samsung.android.contacts/com.android.contacts.activities.PeopleActivity"

    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v0, v2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    :cond_f
    const-string v2, "com.android.contacts/com.android.contacts.activities.PeopleActivity"

    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {v0, v2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    :cond_10
    const-string v2, "com.samsung.contacts/com.android.contacts.activities.PeopleActivity"

    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {v0, v2, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_11
    move v3, v1

    goto :goto_a

    :cond_12
    move v3, v4

    :goto_a
    if-eqz v3, :cond_13

    const-string p1, "Updated Dialer App Info: "

    invoke-static {p1, v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutDialerUpdateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setShortcutAppList(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
