.class public final Lcom/android/wm/shell/compatui/CompatUIConfiguration;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mCompatUISharedPreferences:Landroid/content/SharedPreferences;

.field public final mHideSizeCompatRestartButtonTolerance:I

.field public mIsLetterboxRestartDialogAllowed:Z

.field public final mIsRestartDialogEnabled:Z

.field public mIsRestartDialogOverrideEnabled:Z

.field public final mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x64

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mHideSizeCompatRestartButtonTolerance:I

    const-string v0, "enable_letterbox_restart_confirmation_dialog"

    const-string/jumbo v1, "window_manager"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    const-string v0, "enable_letterbox_education_for_reachability"

    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "app_compat"

    invoke-static {v0, p2, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string p2, "dont_show_restart_dialog"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "has_seen_letterbox_education"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "enable_letterbox_restart_confirmation_dialog"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string/jumbo v3, "window_manager"

    if-eqz v0, :cond_0

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    const-string p1, "enable_letterbox_education_for_reachability"

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v3, p1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method
