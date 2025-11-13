.class public final Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/PrimaryCheckBoxPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;

    iget-object p1, p1, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;

    iget-boolean v0, p1, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    iget-object p1, p1, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;

    iget-boolean v0, p1, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;

    iget-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    iget-object p0, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;->this$0:Lcom/android/settings/widget/PrimaryCheckBoxPreference;

    iget-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    :cond_3
    :goto_0
    return-void
.end method
