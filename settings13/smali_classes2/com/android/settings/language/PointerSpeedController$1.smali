.class Lcom/android/settings/language/PointerSpeedController$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/PointerSpeedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/PointerSpeedController;


# direct methods
.method constructor <init>(Lcom/android/settings/language/PointerSpeedController;Landroid/os/Handler;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/language/PointerSpeedController$1;->this$0:Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController$1;->this$0:Lcom/android/settings/language/PointerSpeedController;

    invoke-static {p0}, Lcom/android/settings/language/PointerSpeedController;->-$$Nest$monSpeedChanged(Lcom/android/settings/language/PointerSpeedController;)V

    return-void
.end method
