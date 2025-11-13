.class public final Lcom/android/systemui/clipboardoverlay/ClipboardListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field static final EXTRA_SUPPRESS_OVERLAY:Ljava/lang/String; = "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

.field static final SHELL_PACKAGE:Ljava/lang/String; = "com.android.shell"


# instance fields
.field public final mClipboardManager:Landroid/content/ClipboardManager;

.field public final mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

.field public final mContext:Landroid/content/Context;

.field public mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

.field public final mSemClipboardToastProvider:Ljavax/inject/Provider;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/clipboardoverlay/ClipboardToast;Landroid/content/ClipboardManager;Landroid/app/KeyguardManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/clipboardoverlay/ClipboardToast;",
            "Landroid/content/ClipboardManager;",
            "Landroid/app/KeyguardManager;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToastProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    iput-object p5, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    iput-object p7, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static shouldSuppressOverlay(Landroid/content/ClipData;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "com.android.shell"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final showCopyToast(Landroid/content/ClipDescription;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToastProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->lastCopiedTime:J

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mRemoteServiceStateManager:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    const v3, 0x7f130394

    const-string v4, "multi_control_connection_state"

    const-string v5, "ltw_clipboard_sync_state"

    const-string v6, "samsungflow_clipboard_sync_state"

    const-string v7, "mcf_continuity_nearby_device_state"

    const-string v8, "dexonpc_connection_state"

    const-string v9, "SemClipboardToastController"

    const/4 v10, 0x0

    if-nez p1, :cond_1

    iget-object v11, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "file_copy"

    invoke-virtual {v13, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "file_move"

    invoke-virtual {v13, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v13, v11, v10

    array-length v14, v11

    const-string v15, ""

    if-le v14, v12, :cond_3

    aget-object v11, v11, v12

    const-string v12, "device_name="

    invoke-virtual {v11, v12, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "com.samsung.android.honeyboard"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "mcf_continuity"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_0

    :cond_4
    const-string v11, "com.sec.android.app.dexonpc"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "startDoPCopy"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "startDoPDrag"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_0

    :cond_5
    const-string v11, "com.samsung.android.mdx"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    :cond_6
    const-string v11, "com.samsung.android.galaxycontinuity"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_0

    :cond_7
    const-string v11, "com.samsung.android.inputshare"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    :goto_0
    invoke-virtual {v15}, Ljava/lang/String;->isBlank()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f130393

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_9
    const-string v11, "ClipLabel is not empty but not for remote service. "

    invoke-static {v11, v1, v9}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_a
    :goto_1
    iget-object v11, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v13, 0x3

    if-ne v11, v13, :cond_b

    move v11, v12

    goto :goto_2

    :cond_b
    move v11, v10

    :goto_2
    iget-object v13, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_c

    move v13, v12

    goto :goto_3

    :cond_c
    move v13, v10

    :goto_3
    add-int/2addr v11, v13

    iget-object v13, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_d

    move v13, v12

    goto :goto_4

    :cond_d
    move v13, v10

    :goto_4
    add-int/2addr v11, v13

    iget-object v13, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_e

    move v13, v12

    goto :goto_5

    :cond_e
    move v13, v10

    :goto_5
    add-int/2addr v11, v13

    iget-object v13, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_6

    :cond_f
    move v12, v10

    :goto_6
    add-int/2addr v11, v12

    if-lez v11, :cond_11

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string/jumbo v11, "tablet"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f13039f

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_10
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f13039e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_11
    iget-object v11, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    iget-object v11, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v12, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v11

    array-length v12, v11

    move v13, v10

    :goto_8
    if-ge v13, v12, :cond_13

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/view/Display;->getState()I

    move-result v15

    const/4 v10, 0x2

    if-ne v15, v10, :cond_12

    const/4 v11, 0x0

    goto :goto_9

    :cond_12
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_13
    iget-object v10, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v14

    :goto_9
    iget-object v10, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v14}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v10

    invoke-virtual {v3, v1, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copy toast is shown by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    const-string v3, "Unknown package is access to show toast : "

    invoke-static {v3, v1, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remote service connection state. dop("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), mcf("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), sf("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), ltw("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), mc("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SemRemoteServiceStateManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v2, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mClipboardClearHandler:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->lastCopiedTime:J

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method
