.class Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;
.super Landroid/text/style/ClickableSpan;
.source "SecSoundVibrationLinkablePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 80
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->-$$Nest$fgetmDestinationName(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;->-$$Nest$fgetmTitleResource(Lcom/samsung/android/settings/as/widget/SecSoundVibrationLinkablePreference;)I

    move-result p0

    .line 82
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x150

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
