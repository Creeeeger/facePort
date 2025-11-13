.class Lcom/samsung/android/settings/notification/StatusBarShowDateController$1;
.super Landroid/database/ContentObserver;
.source "StatusBarShowDateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/StatusBarShowDateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/StatusBarShowDateController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/StatusBarShowDateController;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/notification/StatusBarShowDateController$1;->this$0:Lcom/samsung/android/settings/notification/StatusBarShowDateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/notification/StatusBarShowDateController$1;->this$0:Lcom/samsung/android/settings/notification/StatusBarShowDateController;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/StatusBarShowDateController;->-$$Nest$mupdateShowDate(Lcom/samsung/android/settings/notification/StatusBarShowDateController;)V

    return-void
.end method
