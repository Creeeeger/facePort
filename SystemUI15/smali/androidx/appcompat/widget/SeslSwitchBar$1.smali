.class public final Landroidx/appcompat/widget/SeslSwitchBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SeslSwitchBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslSwitchBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
