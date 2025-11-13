.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->showSetPasswordDialog()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmIsCheckedPassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmMaximumVolume(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->DisplayCheckUI(Landroid/view/View;)V

    .line 126
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->getMetricsCategory()I

    move-result p0

    const/16 v0, 0x1017

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIZ)V

    return p2
.end method
