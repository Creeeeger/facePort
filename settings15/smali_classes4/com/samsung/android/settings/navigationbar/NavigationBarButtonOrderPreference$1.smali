.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0a94

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0cad

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
