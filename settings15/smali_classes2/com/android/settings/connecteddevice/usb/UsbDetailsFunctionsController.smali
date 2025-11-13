.class public final Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# static fields
.field public static final DEBUG:Z

.field public static final FUNCTIONS_MAP:Ljava/util/Map;


# instance fields
.field public final mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public final mHandler:Landroid/os/Handler;

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

.field mPreviousFunction:J

.field public mProfilesContainer:Landroidx/preference/PreferenceCategory;

.field public final mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UsbDetailsCtrlFunction"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v1, 0x80000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f1430b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V

    const-class p2, Landroid/net/TetheringManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/TetheringManager;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object p2, p2, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "usb_details_functions"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->refresh(ZJII)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usb_details_functions"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final refresh(ZJII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refresh() connected : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", functions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", powerRole : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", dataRole : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UsbDetailsCtrlFunction"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/connection/ConnectionsUtils;->$r8$clinit:I

    new-instance v5, Ljava/io/File;

    const-string v7, "/sys/class/dual_role_usb"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/typec"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, "support USBC : "

    const-string v9, ", "

    const-string v10, "ConnectionsUtils"

    invoke-static {v8, v5, v9, v7, v10}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_2

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    :goto_0
    const-string v5, "support USBC()"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-eq v4, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isUsbTetheringEnabled"

    invoke-static {v1, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_5

    move v1, v9

    goto :goto_3

    :cond_5
    move v1, v8

    :goto_3
    const-string v4, "isUsbTetheringEnabled = "

    invoke-static {v4, v6, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v7, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v10, v11}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v7

    iget-object v12, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v12, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v12, :cond_6

    new-instance v12, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v13, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v13}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v12, v8}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    iput-object v0, v12, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object v5, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v12}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_6
    iget-object v5, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v5, v10, v11}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v7

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x20

    if-eqz v7, :cond_d

    const-wide/16 v17, 0x2

    and-long v17, v2, v17

    cmp-long v7, v17, v13

    if-eqz v7, :cond_7

    move v7, v9

    goto :goto_5

    :cond_7
    move v7, v8

    :goto_5
    const-wide/16 v17, 0x4

    if-eqz v7, :cond_9

    cmp-long v7, v17, v10

    if-nez v7, :cond_8

    move v7, v9

    goto :goto_6

    :cond_8
    move v7, v8

    :goto_6
    invoke-virtual {v12, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    :cond_9
    const-wide/16 v19, 0x400

    cmp-long v7, v2, v19

    if-nez v7, :cond_b

    cmp-long v7, v15, v10

    if-nez v7, :cond_a

    move v7, v9

    goto :goto_7

    :cond_a
    move v7, v8

    :goto_7
    invoke-virtual {v12, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    :cond_b
    cmp-long v7, v2, v10

    if-nez v7, :cond_c

    move v7, v9

    goto :goto_8

    :cond_c
    move v7, v8

    :goto_8
    invoke-virtual {v12, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_9
    cmp-long v7, v10, v17

    if-nez v7, :cond_e

    iget-object v7, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    const-string v8, "com.google.android.projection.gearhead"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const v7, 0x7f1430b8

    invoke-virtual {v12, v7}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_a

    :cond_d
    iget-object v7, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v12}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_e
    :goto_a
    cmp-long v7, v10, v15

    if-nez v7, :cond_f

    if-nez v1, :cond_f

    iget-object v5, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v12}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_b

    :cond_f
    cmp-long v7, v10, v13

    if-nez v7, :cond_10

    iget-object v7, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->supportUSBDebuggingMenu(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "remove Debugging only"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v12}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_10
    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_11
    return-void
.end method

.method public final startUsbTethering()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {v0, v3, v1, p0}, Landroid/net/TetheringManager;->startTethering(ILjava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    return-void
.end method
