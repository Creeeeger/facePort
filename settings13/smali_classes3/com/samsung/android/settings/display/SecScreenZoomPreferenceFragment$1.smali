.class Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "SecScreenZoomPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 700
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    .line 701
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x106a

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
