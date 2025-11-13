.class Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->-$$Nest$mshowNewSchedule(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)V

    return-void
.end method
