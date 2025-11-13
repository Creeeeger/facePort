.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "navigation_bar_gesture_while_hidden"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    return-void
.end method
