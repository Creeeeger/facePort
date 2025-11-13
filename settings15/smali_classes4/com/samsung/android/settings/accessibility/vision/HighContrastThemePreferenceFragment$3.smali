.class public final Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->getThemePlatformManager()Lcom/samsung/android/thememanager/IThemeManager;

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HighContrastThemePreferenceFragment"

    const-string v1, "InterruptedException!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
