.class public final Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
