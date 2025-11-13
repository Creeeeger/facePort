.class public final Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$SaveRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->saveRule()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
