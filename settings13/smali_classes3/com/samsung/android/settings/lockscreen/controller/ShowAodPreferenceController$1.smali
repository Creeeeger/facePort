.class Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ShowAodPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->-$$Nest$msetEnabledWhereToShow(Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;Z)V

    return-void
.end method
