.class Lcom/samsung/android/settings/lockscreen/DualClockSettings$1;
.super Landroid/database/ContentObserver;
.source "DualClockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/DualClockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/DualClockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/DualClockSettings;Landroid/os/Handler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/DualClockSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DualClockSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/DualClockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/DualClockSettings;->-$$Nest$mupdateCheckedUI(Lcom/samsung/android/settings/lockscreen/DualClockSettings;)V

    return-void
.end method
