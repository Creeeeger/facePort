.class Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "NotiCardOpacityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->-$$Nest$mupdateNotiCardOpacity(Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;)V

    return-void
.end method
