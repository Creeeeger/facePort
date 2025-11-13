.class Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;
.super Ljava/lang/Object;
.source "NavigationBarButtonOrderPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 37
    sget v0, Lcom/android/settings/R$id;->normal_mode_container:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->-$$Nest$fgetmNormalMode(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->-$$Nest$fgetmReverseMode(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 40
    :cond_0
    sget v0, Lcom/android/settings/R$id;->reverse_mode_container:I

    if-ne p1, v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->-$$Nest$fgetmNormalMode(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 42
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->-$$Nest$fgetmReverseMode(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
