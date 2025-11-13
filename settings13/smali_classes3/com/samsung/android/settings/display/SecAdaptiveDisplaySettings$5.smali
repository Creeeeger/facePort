.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;
.super Landroid/database/ContentObserver;
.source "SecAdaptiveDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateTemperatureSettingsState()V

    return-void
.end method
