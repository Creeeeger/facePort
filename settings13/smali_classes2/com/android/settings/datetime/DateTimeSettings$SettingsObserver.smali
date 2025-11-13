.class Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/datetime/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/DateTimeSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    .line 102
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 103
    iput-object p3, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->access$000(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/DateTimeSettings;->access$100(Lcom/android/settings/datetime/DateTimeSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "auto_time"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    move v1, v0

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettingsObserver onChange getAutoState() return : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DateTimeSettings"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
