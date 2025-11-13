.class Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SecMainSwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/SecMainSwitchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchBarDelegate"
.end annotation


# instance fields
.field private mSessionName:Ljava/lang/String;

.field private mSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 362
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    const-string v0, ""

    .line 358
    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    .line 363
    sget v0, Lcom/android/settings/R$id;->switch_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    .line 364
    sget v0, Lcom/android/settings/R$id;->switch_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ToggleSwitch;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 373
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ", "

    if-nez v2, :cond_1

    .line 379
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_1
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
