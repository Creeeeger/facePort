.class public Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;
.super Lcom/samsung/android/widget/SemTipPopup;
.source "DecorCaptionCompatWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexCompatHelpTipPopup"
.end annotation


# instance fields
.field private blacklist mAnchor:Landroid/view/View;

.field private blacklist mRes:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mshowRestartNotificationHelp(Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;Lcom/android/internal/policy/DecorView;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->showRestartNotificationHelp(Lcom/android/internal/policy/DecorView;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "anchor"    # Landroid/view/View;

    .line 184
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 185
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mRes:Landroid/content/res/Resources;

    .line 186
    iput-object p2, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mAnchor:Landroid/view/View;

    .line 187
    const v0, 0x106039f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mRes:Landroid/content/res/Resources;

    const v2, 0x10603a1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->setActionTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->setMessageTextColor(I)V

    .line 190
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 191
    .local v1, "location":[I
    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 192
    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 v0, 0x1

    aget v3, v1, v0

    iget-object v4, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->setTargetPosition(II)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->setExpanded(Z)V

    .line 194
    return-void
.end method

.method private blacklist showRestartNotificationHelp(Lcom/android/internal/policy/DecorView;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 197
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->mRes:Landroid/content/res/Resources;

    const v1, 0x1040407

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow$DexCompatHelpTipPopup;->show(I)V

    .line 199
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/DecorView;->reportRestartNotificationHelpResult(Landroid/os/IBinder;)V

    .line 200
    return-void
.end method
