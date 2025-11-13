.class Lcom/samsung/android/settings/display/NewModePreview$3;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 330
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 333
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->blue_light_disable_reason:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sec_screen_mode_setting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 334
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$3;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$mshowBluelightfilterDialog(Lcom/samsung/android/settings/display/NewModePreview;I)V

    :goto_0
    return-void
.end method
