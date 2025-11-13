.class Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ClockStylePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/ClockStylePreferenceController;->updatePreference()V

    return-void
.end method
