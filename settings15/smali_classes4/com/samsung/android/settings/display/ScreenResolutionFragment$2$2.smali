.class public final Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

.field public final synthetic val$selected:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iput p2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->val$selected:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    iget p2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->val$selected:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;->setSelectedValue(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/16 v0, 0x3e7

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
