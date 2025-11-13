.class Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 290
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fputmDialog(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "volumelimit_set_password"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 293
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;->-$$Nest$fgetmUsePassword(Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
