.class public Lcom/android/internal/accessibility/AccessibilityShortcutController;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$LaunchableFrameworkFeatureInfo;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$DialogStatus;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist ACCESSIBILITY_HEARING_AIDS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_LENS_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_LENS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist FONT_SIZE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist FONT_SIZE_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist HIGH_CONTRAST_FONTS_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist HIGH_CONTRAST_FONTS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist LIVE_TRANSCRIBE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist LIVE_TRANSCRIBE_CUSTOM_TILE_NAME:Ljava/lang/String; = "custom(com.google.audio.hearing.visualization.accessibility.scribe/.service.ScribeTileService)"

.field public static final blacklist LIVE_TRANSCRIBE_TILE_NAME:Ljava/lang/String; = "com.google.audio.hearing.visualization.accessibility.scribe/.service.ScribeTileService"

.field public static final blacklist MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist MAGNIFICATION_CONTROLLER_NAME:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field public static final blacklist ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist SOUND_NOTIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist SOUND_NOTIFICATION_CUSTOM_TILE_NAME:Ljava/lang/String; = "custom(com.google.audio.hearing.visualization.accessibility.scribe/com.google.audio.hearing.visualization.accessibility.dolphin.service.DolphinTileService)"

.field public static final blacklist SOUND_NOTIFICATION_TILE_NAME:Ljava/lang/String; = "com.google.audio.hearing.visualization.accessibility.scribe/com.google.audio.hearing.visualization.accessibility.dolphin.service.DolphinTileService"

.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityShortcutController"

.field public static final blacklist TALKBACK_SE:Ljava/lang/String; = "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

.field private static final blacklist VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static blacklist sFrameworkShortcutFeaturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlertDialog:Landroid/app/AlertDialog;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabledOnLockScreen:Z

.field public blacklist mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsShortcutEnabled:Z

.field private blacklist mUserId:I

.field private final blacklist mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;


# direct methods
.method public static synthetic blacklist $r8$lambda$QFqpin7U65atpPLiUGW2NItvSXg(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$createShortcutWarningDialog$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Zj00m1z9SSpTOHlC_TDTyIO378A(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$createShortcutWarningDialog$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qmgNUe48dCpmpywcPbAzF82vIh8(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/view/accessibility/AccessibilityManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$createShortcutWarningDialog$1(ILandroid/view/accessibility/AccessibilityManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasFeatureLeanback(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ColorInversion"

    const-string v2, "com.android.server.accessibility"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "Daltonizer"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "Magnification"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "OneHandedMode"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ReduceBrightColors"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "FontSize"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.settings.accessibility.shortcut.HighContrastFontsShortcut"

    const-string v3, "com.android.settings"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->HIGH_CONTRAST_FONTS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.settings.accessibility.shortcut.ColorLensShortcut"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_LENS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.audio.hearing.visualization.accessibility.dolphin.ui.visualizer.TimelineActivity"

    const-string v4, "com.google.audio.hearing.visualization.accessibility.scribe"

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->SOUND_NOTIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.audio.hearing.visualization.accessibility.scribe.MainActivity"

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->LIVE_TRANSCRIBE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "AccessibilityButton"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "HearingAids"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "HearingDevicesTile"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ColorInversionTile"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ColorCorrectionTile"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "OneHandedModeTile"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ReduceBrightColorsTile"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "FontSizeTile"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->FONT_SIZE_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.settings.accessibility.shortcut.HighContrastFontsShortcutTile"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->HIGH_CONTRAST_FONTS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.settings.accessibility.shortcut.ColorLensShortcutTile"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_LENS_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_on_lock_screen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    return-void
.end method

.method private blacklist createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-virtual {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    const v4, 0x104016d

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/view/accessibility/AccessibilityManager;)V

    const v4, 0x104015c

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private blacklist enableDefaultHardwareShortcut(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x1040305

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/view/accessibility/Flags;->migrateEnableShortcuts()Z

    move-result v5

    if-eqz v5, :cond_3

    nop

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6, v2, p1}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method public static blacklist getFrameworkShortcutFeaturesMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const-string v3, "accessibility_display_inversion_enabled"

    const v4, 0x10402c8

    const-string v5, "1"

    const-string v6, "0"

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const-string v3, "accessibility_display_daltonizer_enabled"

    const v4, 0x10402c7

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->SUPPORT_ONE_HANDED_MODE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const-string/jumbo v3, "one_handed_mode_activated"

    const v4, 0x1040946

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const-string/jumbo v3, "reduce_bright_colors_activated"

    const v4, 0x1040c73

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$LaunchableFrameworkFeatureInfo;

    const v3, 0x1040622

    invoke-direct {v2, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$LaunchableFrameworkFeatureInfo;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    :cond_1
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getShortcutFeatureDescription(Z)Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz p1, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    const-string v6, "%s\n%s"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    :goto_0
    return-object v4
.end method

.method private blacklist getShortcutTargetComponentName()Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040169

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x1040161

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x1040163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x1040151

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x1040170

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v1, 0x104016f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFeatureLeanback()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist hasShortcutTarget()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    iget v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private synthetic blacklist lambda$createShortcutWarningDialog$0(ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->enableDefaultHardwareShortcut(I)V

    return-void
.end method

.method private synthetic blacklist lambda$createShortcutWarningDialog$1(ILandroid/view/accessibility/AccessibilityManager;Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Landroid/view/accessibility/Flags;->migrateEnableShortcuts()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2, v3, v1, v0, p1}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_target_service"

    const-string v4, ""

    invoke-static {v1, v2, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->updateInvisibleToggleAccessibilityServiceEnableState(Landroid/content/Context;Ljava/util/Set;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private synthetic blacklist lambda$createShortcutWarningDialog$2(ILandroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic blacklist lambda$performTtsPrompt$3(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->dismiss()V

    return-void
.end method

.method private blacklist performTtsPrompt(Landroid/app/AlertDialog;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v3, 0x1

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist playNotificationTone()V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x1040304

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    :cond_2
    return-void
.end method

.method private blacklist shouldShowDialog()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "accessibility_shortcut_dialog_shown"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist showToast()V
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v1, v4

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v3

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1d

    if-le v5, v6, :cond_3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    const v6, 0x104015b

    goto :goto_0

    :cond_4
    const v6, 0x104015d

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public blacklist isAccessibilityShortcutAvailable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onSettingsChanged()V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasShortcutTarget()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v3, "accessibility_shortcut_on_lock_screen"

    iget v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-static {v1, v3, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    return-void
.end method

.method public blacklist performAccessibilityShortcut()V
    .locals 8

    const-string v0, "Accessibility shortcut activated"

    const-string v1, "AccessibilityShortcutController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "accessibility_shortcut_target_service"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Accessibility shortcutTargetService == null"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string v6, "A11Y9005"

    invoke-static {v5, v6}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-static {v0, v3, v5, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v4, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Accessibility shortcut target isEmpty"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isSupportDCMotorHapticFeedback(Landroid/os/Vibrator;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/accessibility/util/ShortcutUtils;->vibrateDCMotorHapticFeedback(Landroid/content/Context;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107011b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v5

    const/4 v6, -0x1

    sget-object v7, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->shouldShowDialog()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performTtsPrompt(Landroid/app/AlertDialog;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/16 v6, 0x7d9

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    const-string v6, "accessibility_shortcut_dialog_shown"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/view/accessibility/Flags;->restoreA11yShortcutTargetService()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->enableDefaultHardwareShortcut(I)V

    :cond_7
    const-string v5, "com.samsung.accessibility/com.samsung.accessibility.shortcut.InteractionControlShortcut"

    if-eqz v4, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessControlEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Interaction Control is activated"

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->turnOffAccessControl(Landroid/content/Context;)V

    return-void

    :cond_8
    const-string v5, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    if-eqz v4, :cond_9

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Universal switch is activated"

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    return-void

    :cond_9
    invoke-static {}, Landroid/view/accessibility/Flags;->restoreA11yShortcutTargetService()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->enableDefaultHardwareShortcut(I)V

    :cond_a
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_b
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->showToast()V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    :goto_1
    return-void
.end method

.method public blacklist setCurrentUser(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->onUserSwitched(I)V

    return-void
.end method
