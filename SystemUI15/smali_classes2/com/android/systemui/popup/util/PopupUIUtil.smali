.class public Lcom/android/systemui/popup/util/PopupUIUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "com.samsung.settings.AIRPLANE_MODE"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_DATA_CONNECTION_ERROR:Ljava/lang/String; = "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

.field public static final ACTION_MULTI_WINDOW_ENABLE_CHANGED:Ljava/lang/String; = "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

.field public static final ACTION_MULTI_WINDOW_ENABLE_VALID_REQUESTER:Ljava/lang/String; = "SSRM"

.field public static final ACTION_SIM_CARD_TRAY_PROTECTION_POPUP:Ljava/lang/String; = "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

.field public static final DATA_CONNECTION_DATAROAMING_OFF:I = 0x2

.field public static final DATA_CONNECTION_FLIGHTMODE_ON:I = 0x0

.field public static final DATA_CONNECTION_INVALID:I = -0x1

.field public static final DATA_CONNECTION_MOBILEDATA_OFF:I = 0x1

.field public static final DATA_CONNECTION_NO_SIGNAL:I = 0x4

.field public static final DATA_CONNECTION_REACHED_DATALIMIT:I = 0x3

.field public static final EXTRA_DATA_CONNECTION_ERROR_NO_SIGNAL_RETRY_ENABLE:Ljava/lang/String; = "no_signal_retry_enable"

.field public static final EXTRA_DATA_CONNECTION_ERROR_NO_SIGNAL_RETRY_PENDING_INTENT:Ljava/lang/String; = "no_signal_retry_intent"

.field public static final EXTRA_DATA_CONNECTION_ERROR_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_IN_MULTI_WINDOW_MODE:Ljava/lang/String; = "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

.field public static final EXTRA_MULTI_WINDOW_ENABLED:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

.field public static final EXTRA_MULTI_WINDOW_ENABLE_REQUESTER:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

.field public static final EXTRA_SIM_CARD_TRAY_WATER_PROTECTION_POPUP_DISMISS:Ljava/lang/String; = "dismiss"

.field public static final EXTRA_SIM_CARD_TRAY_WATER_PROTECTION_POPUP_STYLE:Ljava/lang/String; = "tray"

.field public static final EXTRA_SIM_CARD_TRAY_WATER_PROTECTION_POPUP_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_SIM_CARD_TRAY_WATER_PROTECTION_POPUP_WATERPROOF:Ljava/lang/String; = "waterproof"

.field public static final POPUP_UI_PERMISSON:Ljava/lang/String; = "com.samsung.systemui.POPUP_UI_PERMISSION"

.field public static final SIM_CARD_TRAY_EMPTY_WATER_PROTECTION_POPUP:I = 0x0

.field public static final SIM_CARD_TRAY_STYLE_B6_JAPAN_MODEL:Z

.field public static final SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

.field public static final SIM_CARD_TRAY_STYLE_FLIP_TYPE:Z

.field public static final SIM_CARD_TRAY_STYLE_FOLD_A_TYPE:Z

.field public static final SIM_CARD_TRAY_STYLE_FOLD_TYPE:Z

.field public static final SIM_CARD_TRAY_STYLE_NORMAL_TYPE:I = 0x1

.field public static final SIM_CARD_TRAY_STYLE_Q6_JAPAN_MODEL:Z

.field public static final SIM_CARD_TRAY_WATERPROOF_FALSE:Z = false

.field public static final SIM_CARD_TRAY_WATERPROOF_TRUE:Z = true

.field public static final SIM_CARD_TRAY_WATER_PROTECTION_POPUP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    const-string/jumbo v4, "ro.product.name"

    if-eqz v0, :cond_0

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "q6aq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    sput-boolean v5, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FOLD_A_TYPE:Z

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SC-55E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SCG28"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v2

    :goto_2
    sput-boolean v6, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_Q6_JAPAN_MODEL:Z

    if-eqz v0, :cond_4

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "q6q"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    if-nez v5, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FOLD_TYPE:Z

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "b6qzcx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "b6qzhx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "b6qctcx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "SC-54E"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "SCG29"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_7

    :cond_8
    :goto_6
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_B6_JAPAN_MODEL:Z

    sget-boolean v5, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    if-eqz v5, :cond_a

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "b6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    sput-boolean v1, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_TYPE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNoReadySim()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getReadySimCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
