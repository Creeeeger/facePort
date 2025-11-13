.class Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "SecSoundFolderSoundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    .line 24
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController$1;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
