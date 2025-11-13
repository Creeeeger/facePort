.class public final Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field public static final ZEN_MODE_URI:Landroid/net/Uri;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModesFragmentBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModesFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->this$0:Lcom/android/settings/notification/modes/ZenModesFragmentBase;

    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object p1, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->this$0:Lcom/android/settings/notification/modes/ZenModesFragmentBase;

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->updateZenModeState()V

    :cond_1
    return-void
.end method
