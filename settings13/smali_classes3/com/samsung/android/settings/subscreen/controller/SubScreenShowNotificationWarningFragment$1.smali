.class Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$1;
.super Ljava/lang/Object;
.source "SubScreenShowNotificationWarningFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$1;->this$0:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$1;->this$0:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->-$$Nest$fgetmDialogFragmentCheckListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;->onCheckBoxChange(Z)V

    return-void
.end method
