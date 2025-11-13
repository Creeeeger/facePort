.class Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$2;
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

    .line 103
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$mupdateConfigureChanges(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    return-void
.end method
