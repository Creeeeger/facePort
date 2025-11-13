.class Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;
.super Landroid/database/ContentObserver;
.source "SwitchForIndividualAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Landroid/os/Handler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMobileDataObserver - onChange - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwitchForIndividualAppsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$mupdateConfigureChanges(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    return-void
.end method
