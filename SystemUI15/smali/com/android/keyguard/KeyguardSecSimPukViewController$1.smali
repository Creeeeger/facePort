.class public final Lcom/android/keyguard/KeyguardSecSimPukViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mOrientation:I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mLocale:Ljava/util/Locale;

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    :cond_2
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f0705dc

    invoke-static {p0, v2, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method
