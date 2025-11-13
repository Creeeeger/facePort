.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->isRtl:Z

    if-eq v1, p1, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->isRtl:Z

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    sub-int v0, p1, v0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_4
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePlayers(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public final onLocaleListChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePlayers(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->inflateSettingsButton()V

    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePlayers(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePlayers(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method
