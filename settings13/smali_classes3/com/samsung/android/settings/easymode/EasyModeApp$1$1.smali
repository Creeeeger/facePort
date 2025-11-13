.class Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/easymode/EasyModeApp$1;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp$1;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object v0, v0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object v1, v1, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_resolution_disabled_toast:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object v4, v4, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->hdmi_mode_dex:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
