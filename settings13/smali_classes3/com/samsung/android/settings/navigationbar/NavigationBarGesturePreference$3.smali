.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
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

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 99
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$sfgetsOnehandModeDisableDialog()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$sfgetsOnehandModeDisableDialog()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$sfgetsOnehandModeDisableDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmGestureContainer(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
