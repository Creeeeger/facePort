.class public final synthetic Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/activity/result/ActivityResult;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsProvisioning:Z

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->startTethering$1()V

    goto :goto_0

    :cond_0
    const-string p1, "UsbDefaultFragment"

    const-string v0, "USB Tethering on failed by Provision result"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mPreviousFunctions:J

    iget-object p0, p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/UsbManager;->setScreenUnlockedFunctions(J)V

    :goto_0
    return-void
.end method

.method public onUsbConnectionChanged(ZJIIZ)V
    .locals 18

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p6

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v5, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v5, v5, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UsbConnectionListener() connected : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", functions : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", defaultFunctions : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mIsStartTethering : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isUsbConfigured : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UsbDefaultFragment"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x400

    const-wide/16 v11, 0x20

    if-eqz v0, :cond_1

    iget-boolean v7, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsConnected:Z

    if-nez v7, :cond_1

    cmp-long v7, v5, v11

    if-eqz v7, :cond_0

    cmp-long v7, v5, v9

    if-nez v7, :cond_1

    :cond_0
    cmp-long v7, v5, v1

    if-nez v7, :cond_1

    iget-boolean v7, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    if-nez v7, :cond_1

    iput-wide v5, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    invoke-virtual {v4}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->startTethering$1()V

    :cond_1
    iget-boolean v5, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    if-nez v5, :cond_2

    if-eqz v3, :cond_b

    :cond_2
    if-eqz v0, :cond_b

    iput-wide v1, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/connection/ConnectionsUtils;->$r8$clinit:I

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbTetheringEnabled"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "refresh() current functions : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", TetheringEnabled : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    check-cast v13, Ljava/util/LinkedHashMap;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v7, :cond_9

    iget-object v6, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v6, v14, v15}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v6, :cond_7

    cmp-long v6, v1, v9

    if-nez v6, :cond_5

    cmp-long v6, v11, v14

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    :cond_5
    cmp-long v6, v1, v14

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    :goto_4
    const-wide/16 v16, 0x4

    cmp-long v6, v14, v16

    if-nez v6, :cond_8

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v9, "com.google.android.projection.gearhead"

    invoke-static {v6, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f1430b8

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_8
    cmp-long v6, v14, v11

    if-nez v6, :cond_9

    if-nez v5, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "refresh() UsbTethering disabled : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x1

    const-wide/16 v9, 0x400

    goto :goto_1

    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsStartTethering:Z

    :cond_b
    iput-boolean v0, v4, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mIsConnected:Z

    return-void
.end method
