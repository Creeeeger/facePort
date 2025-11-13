.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 52
    sget v0, Lcom/android/settings/R$id;->navigation_bar_container:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmNavBarRadioBtn(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmGestureRadioBtn(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Lcom/android/settings/R$id;->gesture_container:I

    if-ne p1, v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fputmTouchStatus(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Z)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmNavBarRadioBtn(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->-$$Nest$fgetmGestureRadioBtn(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
