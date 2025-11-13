.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "buds_plugin_package_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.watchmanager"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, " is removed. plugin disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundCraft.SoundCraftManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->budsPluginPackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->isBudsPluginConnected(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$5;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftSettings:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->update()V

    :cond_2
    return-void
.end method
