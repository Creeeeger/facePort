.class Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;
.super Ljava/lang/Object;
.source "ScreenResolutionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenResolutionFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenResolutionButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 264
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenResolutionButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fputmScreenChangeState(Lcom/samsung/android/settings/display/ScreenResolutionFragment;Z)V

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenChangeState(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 266
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1d1a

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 267
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenResolutionButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenResolutionFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshRateMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 272
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRateAboveWQHD(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    .line 275
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 276
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$mgetUnsupportedMessage(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;I)V

    .line 277
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;)V

    .line 285
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmController(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;->setSelectedValue(Ljava/lang/String;)Z

    .line 295
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_1
    return-void
.end method
