.class Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;
.super Ljava/lang/Object;
.source "ScreenResolutionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


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

.field final synthetic val$helpTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->val$helpTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 309
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenResolutionButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

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

    .line 310
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmApplyButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecButtonPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenChangeState(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 311
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x1d13

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->getMetricsCategory()I

    move-result v0

    int-to-long v1, p1

    invoke-static {v0, p2, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->val$helpTextView:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->screen_resolution_wqhd_description:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->getMetricsCategory()I

    move-result v0

    int-to-long v1, p1

    invoke-static {v0, p2, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->val$helpTextView:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->screen_resolution_fhd_description:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->getMetricsCategory()I

    move-result v0

    int-to-long v1, p1

    invoke-static {v0, p2, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->val$helpTextView:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->screen_resolution_hd_description:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 329
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->-$$Nest$fgetmScreenChangeState(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Z

    move-result p0

    return p0
.end method
