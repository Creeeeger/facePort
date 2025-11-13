.class public final Lcom/android/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v0, p1, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
