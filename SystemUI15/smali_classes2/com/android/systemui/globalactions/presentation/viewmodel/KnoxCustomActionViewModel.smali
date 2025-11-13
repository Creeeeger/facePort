.class public final Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field public mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field public mIntent:Landroid/content/Intent;

.field public mIntentAction:I

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    return-void
.end method


# virtual methods
.method public final getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public final onPress()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    return-void
.end method

.method public final setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setIntentAction(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mIntentAction:I

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mText:Ljava/lang/String;

    return-void
.end method

.method public final showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
