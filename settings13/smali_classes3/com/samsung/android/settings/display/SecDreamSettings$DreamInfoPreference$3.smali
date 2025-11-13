.class Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 p1, 0x2f

    const/16 v0, 0x1d2d

    .line 484
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 490
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez p1, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
