.class public final Lcom/android/settings/privacy/SensorToggleController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/privacy/SensorToggleController;


# direct methods
.method public constructor <init>(Lcom/android/settings/privacy/SensorToggleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$3;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$3;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    invoke-static {p1}, Lcom/android/settings/privacy/SensorToggleController;->-$$Nest$fgetmFlag(Lcom/android/settings/privacy/SensorToggleController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController$3;->this$0:Lcom/android/settings/privacy/SensorToggleController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/SensorToggleController;->setChecked(Z)Z

    :cond_0
    return-void
.end method
