.class public final Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$1;->this$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$1;->this$0:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentCheckListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    check-cast p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    return-void
.end method
