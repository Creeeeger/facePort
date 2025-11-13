.class public Landroid/view/accessibility/A11yLogger;
.super Ljava/lang/Object;
.source "A11yLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/A11yLogger$ConstShortcut;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field public static final blacklist SA_ACCESSIBILITY_MAGIFICATION_TRIPLE_TAP:Ljava/lang/String; = "AMF3"

.field public static final blacklist SA_ACCESSIBILITY_MAGNIFICATION_CHANGE_MODE:Ljava/lang/String; = "AMFC"

.field public static final blacklist SA_ACCESSIBILITY_MAGNIFICATION_IGNORE:Ljava/lang/String; = "AMFI"

.field public static final blacklist SA_ACCESSIBILITY_MAGNIFICATION_RESIZE:Ljava/lang/String; = "AMFR"

.field public static final blacklist SA_ACCESSIBILITY_SETUPWIZARD_DIRECT_ACCESS:Ljava/lang/String; = "ASDA"

.field public static final blacklist SA_ACCESSIBILITY_SETUPWIZARD_TWO_FINGER:Ljava/lang/String; = "ASTF"

.field public static final blacklist SA_ACCESSIBILITY_SHORTCUT_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "ASVO"

.field public static final blacklist SA_ACCESSIBILITY_SHORTCUT_SIDE_KEY_VOLUME_UP:Ljava/lang/String; = "ASSP"

.field public static final blacklist SA_ACCESSIBILITY_SHORTCUT_VOLUME_UP_DOWN:Ljava/lang/String; = "ASPV"

.field public static final blacklist SA_ACCESSIBILITY_STATUS_OFF:Ljava/lang/String; = "Off"

.field public static final blacklist SA_ACCESSIBILITY_STATUS_ON:Ljava/lang/String; = "On"

.field public static final blacklist SA_ACCESSIBILITY_VALUE_OFF:I = 0x1

.field public static final blacklist SA_ACCESSIBILITY_VALUE_ON:I = 0x3e8

.field private static final blacklist SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final blacklist SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist SA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.accessibility"

.field private static final blacklist SA_SUPPORT_VERSION:I = 0x202fbf00

.field private static final blacklist SA_TRACKING_ID:Ljava/lang/String; = "4G4-399-1009910"

.field private static final blacklist TAG:Ljava/lang/String; = "A11yLogger"

.field public static final blacklist shortcutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/accessibility/A11yLogger;->shortcutMap:Ljava/util/HashMap;

    .line 126
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.AccessibilityHomepageActivityShortcut"

    const-string v2, "ACC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    const-string v2, "TB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "com.android.server.accessibility.MagnificationController"

    const-string v2, "MAG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.ColorInversionShortcut"

    const-string v2, "CI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.ColorAdjustmentShortcut"

    const-string v2, "CA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.ColorLensShortcut"

    const-string v2, "CL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.HighContrastFontsShortcut"

    const-string v2, "HCF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.AmplifyShortcut"

    const-string v2, "AAS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.DoorbellShortcut"

    const-string v2, "DBD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.BabyCryingShortcut"

    const-string v2, "BCD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.MuteAllShortcut"

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    const-string v2, "US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.InteractionControlShortcut"

    const-string v2, "IC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "com.google.audio.hearing.visualization.accessibility.scribe/com.google.audio.hearing.visualization.accessibility.scribe.MainActivity"

    const-string v2, "LT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.shortcut.ReduceBrightnessShortcut"

    const-string v2, "RB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "com.google.audio.hearing.visualization.accessibility.scribe/com.google.audio.hearing.visualization.accessibility.dolphin.ui.visualizer.TimelineActivity"

    const-string v2, "SN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "com.samsung.android.honeyboard/com.samsung.android.honeyboard.settings.swipetouchandfeedback.speakkeyboardinputaloud.SpeakKeyboardInputAloudShortcut"

    const-string v2, "SK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "com.google.android.apps.accessibility.voiceaccess/com.google.android.apps.accessibility.voiceaccess.JustSpeakService"

    const-string v2, "VOA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkVersionOfDMA(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 72
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, "Validation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dma pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x202fbf00

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 75
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static blacklist insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 81
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 82
    return-void
.end method

.method public static blacklist insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "type"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Landroid/view/accessibility/A11yLogger;->checkVersionOfDMA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/A11yLogger;->insertSALog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method private static blacklist insertSALog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "type"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertSALog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tracking_id"

    const-string v2, "4G4-399-1009910"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "pkg_name"

    const-string v2, "com.samsung.accessibility"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 107
    return-void
.end method

.method public static blacklist insertShortcutSaLog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I
    .param p2, "targetName"    # Ljava/lang/String;

    .line 110
    const-string v0, "ASVO"

    .line 111
    .local v0, "SHORTCUT_TYPE":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 112
    const-string v0, "ASPV"

    goto :goto_0

    .line 113
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 114
    const-string v0, "ASSP"

    .line 117
    :cond_1
    :goto_0
    sget-object v1, Landroid/view/accessibility/A11yLogger;->shortcutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    .local v1, "FID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const-string v1, "OTH"

    move-object v7, v1

    goto :goto_1

    .line 118
    :cond_2
    move-object v7, v1

    .line 121
    .end local v1    # "FID":Ljava/lang/String;
    .local v7, "FID":Ljava/lang/String;
    :goto_1
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 122
    return-void
.end method
