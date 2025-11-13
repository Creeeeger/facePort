.class public final synthetic Lcom/android/settingslib/widget/MainSwitchBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/widget/MainSwitchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/widget/MainSwitchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/widget/MainSwitchBar;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/widget/MainSwitchBar;

    sget p1, Lcom/android/settingslib/widget/MainSwitchBar;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mFrameView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method
