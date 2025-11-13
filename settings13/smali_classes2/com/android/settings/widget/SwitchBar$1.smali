.class Lcom/android/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmDisabledByAdmin(Lcom/android/settings/widget/SwitchBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmRestrictedIcon(Lcom/android/settings/widget/SwitchBar;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p0}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmRestrictedIcon(Lcom/android/settings/widget/SwitchBar;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmSwitch(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmSwitch(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmSwitch(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p0}, Lcom/android/settings/widget/SwitchBar;->-$$Nest$fgetmSwitch(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
