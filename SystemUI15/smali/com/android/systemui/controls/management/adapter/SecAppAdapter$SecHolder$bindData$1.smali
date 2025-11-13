.class public final Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $isPanelType:Z

.field public final synthetic $service:Lcom/android/systemui/controls/ControlsServiceInfo;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

.field public final synthetic this$1:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;ZLcom/android/systemui/controls/management/adapter/SecAppAdapter;Lcom/android/systemui/controls/ControlsServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iput-boolean p2, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->$isPanelType:Z

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$1:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->$isPanelType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$1:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->access$updateAuthorizedPanels(Lcom/android/systemui/controls/management/adapter/SecAppAdapter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->setActivePanelFlag:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;->setActiveFlag:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v1, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->switchCallback:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;->isOOBE:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/controls/util/SALogger$Event$ChooseAppOnOff;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/util/SALogger$Event$ChooseAppOnOff;-><init>(Z)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/systemui/controls/util/SALogger$Event$ChooseAppOnOffOnManageApps;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/util/SALogger$Event$ChooseAppOnOffOnManageApps;-><init>(Z)V

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecAppAdapter$SecHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :goto_2
    return-void
.end method
