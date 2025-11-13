.class Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController$1;
.super Landroid/database/ContentObserver;
.source "CoverScreenOrientationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController;->getCoverTextDirectionObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController;Landroid/os/Handler;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController$1;->this$0:Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController$1;->this$0:Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/controller/CoverScreenOrientationController;->updatePreference()V

    return-void
.end method
