.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "any_screen_running"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    xor-int/lit8 p0, v1, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
