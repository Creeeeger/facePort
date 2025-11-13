.class public final Lcom/android/settings/display/SmartAutoRotateController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/SmartAutoRotateController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/SmartAutoRotateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateController;

    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotateController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/SmartAutoRotateController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
