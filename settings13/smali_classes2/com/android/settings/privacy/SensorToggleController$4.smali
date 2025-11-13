.class Lcom/android/settings/privacy/SensorToggleController$4;
.super Ljava/lang/Object;
.source "SensorToggleController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/SensorToggleController;->showSensorWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/SensorToggleController;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/SensorToggleController;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$4;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$4;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    invoke-static {p1}, Lcom/android/settings/privacy/SensorToggleController;->-$$Nest$fgetmFlag(Lcom/android/settings/privacy/SensorToggleController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController$4;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/SensorToggleController;->setChecked(Z)Z

    :cond_0
    return-void
.end method
