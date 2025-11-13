.class Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;
.super Ljava/lang/Object;
.source "ScreenResolutionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;I)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iput p2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmController(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->val$selected:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;->setSelectedValue(Ljava/lang/String;)Z

    .line 281
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x3e7

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
