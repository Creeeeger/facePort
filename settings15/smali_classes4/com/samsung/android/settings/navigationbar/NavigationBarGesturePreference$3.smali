.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sget-object p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
