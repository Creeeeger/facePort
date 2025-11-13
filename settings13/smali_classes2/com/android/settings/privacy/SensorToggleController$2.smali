.class Lcom/android/settings/privacy/SensorToggleController$2;
.super Ljava/lang/Object;
.source "SensorToggleController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 130
    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$2;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController$2;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/privacy/SensorToggleController;->-$$Nest$fputmFlag(Lcom/android/settings/privacy/SensorToggleController;Z)V

    return-void
.end method
