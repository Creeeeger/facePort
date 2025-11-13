.class Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController$1;
.super Landroid/database/ContentObserver;
.source "FaceWidgetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController;->getAodModeObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController$1;->this$0:Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController$1;->this$0:Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/controller/FaceWidgetsController;->updatePreference()V

    return-void
.end method
