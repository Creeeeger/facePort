.class public final Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

.field public final synthetic val$offRadioButton:Landroid/widget/RadioButton;

.field public final synthetic val$offRadioLayout:Landroid/view/View;

.field public final synthetic val$opportunisticRadioButton:Landroid/widget/RadioButton;

.field public final synthetic val$opportunisticRadioLayout:Landroid/view/View;

.field public final synthetic val$providerRadioButton:Landroid/widget/RadioButton;

.field public final synthetic val$providerRadioLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/PrivateDnsModeDialogPreference;Landroid/view/View;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->this$0:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    iput-object p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioButton:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioButton:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioButton:Landroid/widget/RadioButton;

    iput-object p6, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioLayout:Landroid/view/View;

    iput-object p7, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioLayout:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->this$0:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    iput v1, v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioLayout:Landroid/view/View;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->this$0:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    const/4 v3, 0x2

    iput v3, v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioLayout:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$providerRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$opportunisticRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->val$offRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->this$0:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:I

    :cond_5
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference$1;->this$0:Lcom/android/settings/network/PrivateDnsModeDialogPreference;

    sget-object p1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    return-void
.end method
