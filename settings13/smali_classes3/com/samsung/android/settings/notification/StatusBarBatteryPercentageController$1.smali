.class Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController$1;
.super Landroid/database/ContentObserver;
.source "StatusBarBatteryPercentageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController$1;->this$0:Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController$1;->this$0:Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;->-$$Nest$mupdateBatteryPercentage(Lcom/samsung/android/settings/notification/StatusBarBatteryPercentageController;)V

    return-void
.end method
